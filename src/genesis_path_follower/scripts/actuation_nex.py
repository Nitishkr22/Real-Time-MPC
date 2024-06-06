import actuator
import math
import pid
import time
import numpy as np
import rospy
from std_msgs.msg import Int32
from std_msgs.msg import Float32 as Float32Msg

obj = actuator.controller("169.254.178.227", 5001)
obj.connect()
feed = obj.receive_data()
steering_feedback = 0.0
steermpc = 0.0

def get_steering_angle():
    global steering_feedback
    steering_feedback = int(obj.receive_data().split(',')[2])
    return steering_feedback

def steering_mpc(msg):
    global steermpc
    steermpc = msg.data

if __name__ == '__main__':
    try:
        rospy.init_node('steering_angle_publisher', anonymous=True)
        steering_angle_pub = rospy.Publisher('steering_angle', Int32, queue_size=10)

        rospy.Subscriber("/control/steer_angle", Float32Msg, steering_mpc, queue_size=1)

        # self.df = m.radians(msg.data) / 15.87
        # steermpc = math.degrees(steermpc*15.87)
########################################
        Kp = 1.9    #1.65971 #1.65971
        Ki = 0.0005   #0.00007
        Kd = 0.845    #0.710  #0.710
        rate_min = -100
        rate_max = 100
        pid_controller = pid.PIDController(Kp, Ki, Kd, rate_min, rate_max)

        message = "A,N,0,0,0,0,0,0,0,0,0\r\n" 
        obj.send_data(message)
        feed = obj.receive_data()
        # print(feed)
        message = "A,N,0,1,100,0,0,0,0,0,0\r\n"
        obj.send_data(message)
        time.sleep(1)
        feed = obj.receive_data()
        # print(feed)
        message = "A,D,0,0,0,0,0,0,0,0,0 \r\n"
        obj.send_data(message)
        feed = obj.receive_data()
        rate = rospy.Rate(15)
        steer_rate=0

        while not rospy.is_shutdown():
            # obj.send_data("A,D,5,0,0,1,"+str(steer_rate)+",0,0,0,0\r\n")
            steering_angle = get_steering_angle()
            steering_angle_pub.publish(steering_angle)
            steermpc = -math.degrees(steermpc*15.87)
            print("steermpc: ",steermpc)
            velocity_feedback= obj.receive_data().split(',')[3]
            # print("velocity_feedback: ",velocity_feedback)
            steer_rate = pid_controller.update(steermpc, float(steering_angle))
            obj.send_data("A,D,6,0,0,1,"+str(steer_rate)+",0,0,0,0\r\n")
            rate.sleep()

    except rospy.ROSInterruptException:
        pass