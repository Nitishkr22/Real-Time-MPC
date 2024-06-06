#!/usr/bin/env python
import rospy
import math as m
import numpy as np
import csv
from tf.transformations import euler_from_quaternion
from sensor_msgs.msg import NavSatFix, Imu
from novatel_oem7_msgs.msg import INSPVA
from std_msgs.msg import Int32
from std_msgs.msg import Float32 as Float32Msg

import time

# Initialize global variables
lat = lon = x = y = 0.0
v = v_long = v_lat = 0.0
psi = long_accel = lat_accel = yaw_rate = 0.0
df = 0

# Initialize CSV file
csv_file = "/home/nitish/Documents/catkin_ws_mpc/src/genesis_path_follower/waypoints/solio2.csv"
headers = ["a", "psi", "df", "lon", "lat", "mode", "v", "y", "x", "t"]

with open(csv_file, mode='w', newline='') as file:
    writer = csv.DictWriter(file, fieldnames=headers)
    writer.writeheader()

# ROS node initialization
rospy.init_node('state_publisher', anonymous=True)

def extract_ros_time(msg):
    return msg.header.stamp.secs + 1e-9 * msg.header.stamp.nsecs

def _parse_gps_fix(msg):
    global lat, lon, x, y
    lat = msg.latitude
    lon = msg.longitude
    x, y = latlon_to_XY(lat, lon)
    tm_gps = extract_ros_time(msg)

def _parse_gps_vel(msg):
    global psi, v, v_long, v_lat
    if psi == 0.0:
        return  # Wait until we get the orientation first

    v_east = msg.north_velocity
    v_north = msg.east_velocity
    v = m.sqrt(v_east**2 + v_north**2)
    v_long = m.cos(psi) * v_east + m.sin(psi) * v_north
    v_lat = -m.sin(psi) * v_east + m.cos(psi) * v_north
    tm_vel = extract_ros_time(msg)

def _parse_imu_data(msg):
    global long_accel, lat_accel, psi, yaw_rate
    ori = msg.orientation
    quat = (ori.x, ori.y, ori.z, ori.w)
    _, _, yaw = euler_from_quaternion(quat)
    # psi = -yaw + 0.5 * m.pi
    psi = yaw
    psi = (psi + np.pi) % (2. * np.pi) - np.pi
    long_accel = msg.linear_acceleration.x
    lat_accel = -msg.linear_acceleration.y
    yaw_rate = msg.angular_velocity.z
    tm_imu = extract_ros_time(msg)

def _parse_steering_angle(msg):
    global df
    # df = m.radians(msg.data) / 15.87
    df = m.radians(msg.data)

    tm_df = time.time()

def latlon_to_XY(lat1, lon1, lat0=0.0, lon0=0.0):
    R_earth = 6371000
    delta_lat = m.radians(lat1 - lat0)
    delta_lon = m.radians(lon1 - lon0)
    lat_avg = 0.5 * (m.radians(lat1) + m.radians(lat0))
    X = R_earth * delta_lon * m.cos(lat_avg)
    Y = R_earth * delta_lat
    return X, Y

# ROS subscribers
rospy.Subscriber('/gps/fix', NavSatFix, _parse_gps_fix, queue_size=1)
rospy.Subscriber('/gps/imu', Imu, _parse_imu_data, queue_size=1)
rospy.Subscriber("/novatel/oem7/inspva", INSPVA, _parse_gps_vel, queue_size=1)
rospy.Subscriber('/steering_angle', Float32Msg, _parse_steering_angle, queue_size=1)

# Main loop to print and save data
with open(csv_file, mode='a', newline='') as file:
    writer = csv.DictWriter(file, fieldnames=headers)
    
    while not rospy.is_shutdown():
        current_time = time.time()
        data_row = {
            "a": long_accel,
            "psi": psi,
            "df": df,
            "lon": lon,
            "lat": lat,
            # "mode": 0,  # assuming mode is not available, set to 0 or another appropriate value
            "v": v,
            "y": y,
            "x": x,
            "t": current_time
        }
        
        writer.writerow(data_row)
        
        print("lat: ", lat)
        print("lon: ", lon)
        print("psi: ", psi)
        print("v: ", v)
        print("v_long: ", v_long)
        print("v_lat: ", v_lat)
        print("steer", df)
        print("---------------------------------------------------------------------------------------------")
        
        rospy.sleep(0.1)  # Adjust the sleep time as needed
