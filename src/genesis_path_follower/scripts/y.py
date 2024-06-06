import rospy
from std_msgs.msg import Int32
from std_msgs.msg import Float32 as Float32Msg
import math as m

steermpc = 0.0

def steering_mpc(msg):
    global steermpc
    steermpc = msg.data

rospy.init_node('steering_angle_publisher', anonymous=True)
rospy.Subscriber("/control/steer_angle", Float32Msg, steering_mpc, queue_size=1)

rate = rospy.Rate(50)
while not rospy.is_shutdown():
    steermpc = m.degrees(steermpc*15.87)
    print("steermpc: ",steermpc)
    rate.sleep()