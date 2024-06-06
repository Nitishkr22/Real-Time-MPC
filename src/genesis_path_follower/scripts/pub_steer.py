import actuator
import math
import pid
import time
import rospy
from std_msgs.msg import Int32

obj = actuator.controller("169.254.178.227",5001)
obj.connect()
feed = obj.receive_data()
steering_feedback = 0.0
def get_steering_angle():
    global steering_feedback
    steering_feedback = int(obj.receive_data().split(',')[2])
    # This function should return the current steering angle from your controller.
    # For demonstration purposes, let's return a fixed value.
    # Replace this with the actual implementation to get the steering angle from your controller.
    return steering_feedback

# def main():
#     rospy.init_node('steering_angle_publisher', anonymous=True)
#     steering_angle_pub = rospy.Publisher('steering_angle', Int32, queue_size=10)

#     rate = rospy.Rate(10)  # 10 Hz
#     while not rospy.is_shutdown():
#         steering_angle = get_steering_angle()
#         rospy.loginfo(f"Publishing steering angle: {steering_angle}")
#         steering_angle_pub.publish(steering_angle)
#         rate.sleep()

if __name__ == '__main__':
    try:
        rospy.init_node('steering_angle_publisher', anonymous=True)
        steering_angle_pub = rospy.Publisher('steering_angle', Int32, queue_size=10)

        rate = rospy.Rate(10)  # 10 Hz
        while not rospy.is_shutdown():
            steering_angle = get_steering_angle()
            rospy.loginfo(f"Publishing steering angle: {steering_angle}")
            steering_angle_pub.publish(steering_angle)
            rate.sleep()
    except rospy.ROSInterruptException:
        pass