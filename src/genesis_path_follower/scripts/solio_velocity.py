import math
import os
import logging
import datetime
import socket
import time
import novatel_oem7_msgs
import numpy as np
import rospy
from novatel_oem7_msgs.msg import BESTPOS, BESTVEL, INSPVA
from sensor_msgs.msg import Imu
from std_msgs.msg import Float32, String
import math
from std_msgs.msg import Int32
from std_msgs.msg import Float32 as Float32Msg

# Define the MABX(vehicle control controller) IP address and port for sending data
mabx_IP = "192.168.50.1"
mabx_PORT = 30000
UDP_PORT = 51001
UDP_IP = "192.168.50.2" 
# Define constants for message structure
NUM_BYTES = [1, 1, 1, 1, 2, -1, 2, -1, 1, 1]
# Define buffer size and local interface
BUFFER_SIZE = 4096
local_interface = "eth0"

# Conversion factor for latitude and longitude to meters
# LAT_LNG_TO_METER = 1.111395e5
# CW_flag = 0
# pot_time = 0


# Global variables for traffic-light
prev = ''
curr = None
cntr = 0
steermpc = 0.0

# Initialize the ROS node for the algorithm
# rospy.init_node("GNSS_navigation", anonymous=True)

# Initialize the UDP socket for MABX communication
mabx_socket = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
mabx_addr = (mabx_IP, mabx_PORT)


# def get_steering_angle():
#     global steering_feedback
#     steering_feedback = int(obj.receive_data().split(',')[2])
#     return steering_feedback

def steering_mpc(msg):
    global steermpc
    steermpc = msg.data

# Function to calculate and set steering angle based on current angle and target angle
def set_angle(current_angle, angle_change):
    # Steering gear ratio
    gear_ratio = 17.75
    # Limit steering angle within a range
    if 40 * gear_ratio < current_angle:
        current_angle = 40 * gear_ratio
    elif -40 * gear_ratio > current_angle:
        current_angle = -40 * gear_ratio
    # Calculate scaled angle for transmission
    scaled_angle = (current_angle / gear_ratio - (-65.536)) / 0.002
    high_angle_byte, low_angle_byte = (int)(
        scaled_angle) >> 8, (int)(scaled_angle) & 0xFF
    return high_angle_byte, low_angle_byte

def set_speed(speed):
    speed = speed * 128
    high_byte_speed = (int)(speed) >> 8
    low_byte_speed = (int)(speed) & 0xFF
    return high_byte_speed, low_byte_speed

def calc_checksum(message_bytes):
    checksum = 0
    for m in message_bytes:
        checksum += m
    checksum = (0x00 - checksum) & 0x000000FF
    checksum = checksum & 0xFF
    return checksum

def send_message_to_mabx(speed, current_angle, delta_angle, flasher_light, message_counter):
    H_Angle, L_Angle = set_angle(current_angle, -1 * delta_angle)
    H_Speed, L_Speed = set_speed(speed)

    message_bytes = [
        1,
        message_counter,
        0,
        1,
        52,
        136,
        215,
        1,
        H_Speed,
        L_Speed,
        H_Angle,
        L_Angle,
        0,
        flasher_light,
        0,
        0,
        0,
        0,
    ]
    message_bytes[2] = calc_checksum(message_bytes)
    message = bytearray(message_bytes)
    # print("         Reading the Speed from MABX: ", get_speed(message[8], message[9]))
    # print("Reading the sent Angle from MABX: ", message[10], message[11])
    print(
        "================================================================")
    return message


def nav(const_speed,steer_output,flasher,counter):
    try:
        message = send_message_to_mabx(
            const_speed, steer_output, 0, flasher, counter)
        mabx_socket.sendto(message, mabx_addr)
    except Exception as e:
        print(f"Error sending message to MABX: {e}")

def decode_message(hex_str):
    i = 0
    j = 0
    decoded_val = []

    while i < 20:
        n_bytes = NUM_BYTES[j]
        byte_val = hex_str[i:i + 2 * n_bytes]

        if n_bytes == 2:
            byte_val = byte_val[2:4] + byte_val[0:2]

        decimal = int("0x" + byte_val, 16)
        decoded_val.append(decimal)

        i += 2 * n_bytes
        j += n_bytes

    return decoded_val

def get_speed(high_byte_speed, low_byte_speed):
    """
    Args:
    high_byte_speed: The high byte of the scaled speed.
    low_byte_speed: The low byte of the scaled speed.
    """

    # Combine the high and low bytes into a single integer.
    speed = (high_byte_speed << 8) | low_byte_speed

    # Divide the speed by 128 to convert it back to km/h.
    speed = speed / 128
    # return int(np.around(speed, 1))
    return (np.around(speed, 1))

def get_tire_angle(high_byte_angle, low_byte_angle):
    # Combine the high and low bytes into a single integer.
    angle = (high_byte_angle << 8) | low_byte_angle

    # Apply offset and convert to degrees (LSB = 0.002)
    tire_angle = (angle) * 0.002 - 65.536

    return np.round(tire_angle, 1)
steer_ang = 0.0
def feedback_mabx():
    global steer_ang
    global result
    print("     From MABX: ")
    sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    sock.bind((UDP_IP, UDP_PORT))
    # print("Ready to receive..")
    bytestr, addr = sock.recvfrom(1024)
    # print("Receiving..")

    byte_array = bytearray(bytestr)
    hex_str = byte_array.hex()
    if len(hex_str) == 20:

        # print("  Ignoring message of size 10 ")
        decoded_val = decode_message(hex_str)
        # print(f"{bytestr}")
        # print(f"   Decoded Values: {decoded_val}")
        # print("ID: ", decoded_val[0])
        print("Rolling counter: ", decoded_val[1])
        # print("Current Mode: ", bytestr[2])
        print("Current Speed: ", get_speed(bytestr[4], bytestr[5]))
        # print("Current Tire Angle: ", get_tire_angle(bytestr[6], bytestr[7]))
        print(bytestr)
        # print("Current Shift: ", SHIFT_DICT.get(decoded_val[6], "Unknown"))
        # print("Current Flasher: ", FLASHER_DICT.get(decoded_val[7], "Unknown"))
        steer_ang = get_tire_angle(bytestr[6], bytestr[7])
        result = f"{decoded_val[1]:03d} , {get_speed(bytestr[4], bytestr[5]):05.2f} , {get_tire_angle(bytestr[6], bytestr[7]):05.2f} || "
        # log_it(f"{decoded_val[1]} | {get_speed(bytestr[4], bytestr[5])} , {get_tire_angle(bytestr[6], bytestr[7])}")

    sock.close()
    return steer_ang

if __name__ == "__main__":

    rospy.init_node('steering_angle_publisher', anonymous=True)
    steering_angle_pub = rospy.Publisher('steering_angle', Float32Msg, queue_size=1)
    steering_angle = feedback_mabx()

    rospy.Subscriber("/control/steer_angle", Float32Msg, steering_mpc, queue_size=1)
    counter = 0
    rate = rospy.Rate(15)
    while not rospy.is_shutdown():
        try:
            steering_angle = feedback_mabx()
            print("steer: ",steering_angle)
            # steering_angle = get_steering_angle()
            steering_angle_pub.publish(steering_angle)
            # steermpc = -math.degrees(steermpc*15.87)
            # steermpc = steering_angle
            steer_output = int(math.degrees(steermpc)*17)
            # steer_output = 36.2*16.02

            print("mpc steering output: ",steer_output)
            counter = (counter + 1) % 256
            const_speed = 27
            # steer_output = 0
            flasher = 3
            nav(const_speed,steer_output,flasher,counter)
            rate.sleep()
        except ValueError as ve:
            print(f"ValueError occurred: {ve}")
        except IOError as ioe:
            print(f"IOError occurred: {ioe}")
        except KeyboardInterrupt:  # Currently not working
            print("Autonomous Mode is terminated manually!")
            message = send_message_to_mabx(0, 0, 0, 0, counter)
            mabx_socket.sendto(message, mabx_addr)
            raise SystemExit

        # except Exception as e:
        #     log_and_print(f"An error occurred: {e}")