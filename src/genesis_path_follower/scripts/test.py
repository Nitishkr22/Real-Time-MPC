from sensor_msgs.msg import NavSatFix
import rospy
from sensor_msgs.msg import Imu
from tf.transformations import euler_from_quaternion
import numpy as np
import math as m
from novatel_oem7_msgs.msg import INSPVA
import time
from std_msgs.msg import Int32

#initializing global variables
lat = 0.0
lon = 0.0
long_accel = 0.0
psi = 0.0
lat_accel = 0.0
yaw_rate = 0.0
v=0.0
v_long=0.0
v_lat=0.0
df = 0


#ros node initialization
rospy.init_node('state_publisher', anonymous=True)

def extract_ros_time(msg):
	return msg.header.stamp.secs + 1e-9 * msg.header.stamp.nsecs

def _parse_gps_vel(msg):
		global psi,v,v_long,v_lat
		# This function gets the velocity information from the OXTS.
		# It rotates the East/North velocity into the body frame.

		if not psi:
			return # Wait until we get the orientation first.

		# psi = psi # Could set a lock here.  This is copy by value so should be okay.

		v_east = msg.north_velocity
		v_north = msg.east_velocity
				
		v      =  m.sqrt(v_east**2 + v_north**2)             # speed (m/s)
		v_long =  m.cos(psi) * v_east + m.sin(psi) * v_north # longitudinal velocity (m/s)
		v_lat  = -m.sin(psi) * v_east + m.cos(psi) * v_north # lateral velocity (m/s)

		tm_vel =  extract_ros_time(msg)
		

def _parse_imu_data(msg):
		global long_accel, lat_accel,psi, yaw_rate
		# This function gets the yaw angle and acceleration/yaw rate from the OXTS.		

		# Get yaw angle from quaternion representation.
		ori = msg.orientation
		quat = (ori.x, ori.y, ori.z, ori.w)
		_, _, yaw = euler_from_quaternion(quat)

		# The yaw/heading given directly by the OxTS is measured counterclockwise from N.
		# That's why we offset by 0.5 * pi and don't need to change the sign.
		psi = yaw + 0.5 * m.pi
		psi = (psi + np.pi) % (2. * np.pi) - np.pi # wrap within [-pi, pi]
		psi = psi # yaw (rad), measured counterclockwise from E (global x-axis).

		# Get acceleration and yaw rate information.  The y-axis of the OXTS points right.
		long_accel =  msg.linear_acceleration.x # m/s^2
		lat_accel  = -msg.linear_acceleration.y # m/s^2
		yaw_rate   =  msg.angular_velocity.z    # rad/s
		tm_imu = extract_ros_time(msg)
		# print(long_accel, lat_accel,psi, yaw_rate)



def _parse_gps_fix(msg):
		# This function gets the latitude and longitude from the OxTS and does localization.
		global lat,lon		
		lat    = msg.latitude
		lon    = msg.longitude
		# self.x, self.y = latlon_to_XY(self.LAT0, self.LON0, self.lat, self.lon)

		tm_gps = extract_ros_time(msg)

def _parse_steering_angle(msg):
	# Get steering angle (steering wheel angle/steering ratio).		
	global df
	df = m.radians(msg.data) / 15.87 # steering angle, delta_f (rad)
	# self.tm_df = extract_ros_time(msg)
	tm_df = time.time()


rospy.Subscriber('/gps/fix', NavSatFix, _parse_gps_fix, queue_size=1)
rospy.Subscriber('/gps/imu', Imu, _parse_imu_data, queue_size=1)
rospy.Subscriber("/novatel/oem7/inspva", INSPVA, _parse_gps_vel, queue_size=1)
rospy.Subscriber('/steering_angle', Int32, _parse_steering_angle, queue_size=1)

while not rospy.is_shutdown():
	print("lat: ", lat)
	print("lon: ", lon)
	print("psi: ", psi)
	print("v: ", v)
	print("v_long: ", v_long)
	print("v_lat: ", v_lat)
	# print("gnss: ", lat,lon,psi,v,v_long,v_lat)
	print("steer", df)
	print("---------------------------------------------------------------------------------------------")
	# print(lat,lon)