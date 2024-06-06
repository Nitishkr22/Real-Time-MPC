from genesis_path_follower.msg import mpc_path
import rospy
import math

rospy.init_node('velocity_mpc_check', anonymous=True)
accele=0.0
velocity = 0.0
x_mpc_traj=0.0
steer_ump = 0.0
def update_mpc_trajectory(msg):
    global accele, velocity,x_mpc_traj,steer_ump
		# Update the MPC planned (open-loop) trajectory.
    x_mpc_traj = msg.xs
    y_mpc_traj = msg.ys
    accele = msg.acc
    velocity = msg.vs
    steer_ump = msg.df
        
    # Update the reference for the MPC module.
    x_ref_traj = msg.xr
    y_ref_traj = msg.yr

rospy.Subscriber('/vehicle/mpc_path', mpc_path, update_mpc_trajectory, queue_size=1)


# while not rospy.is_shutdown():
#     # print(x_mpc_traj)
#     # print("acceleration: ",accele)
#     print("velocity= ",velocity)

while not rospy.is_shutdown():
    # if isinstance(velocity, (list, tuple)) :
    #     # Print the first value of velocity
    #     print("velocity= ", velocity[-1])
    set_vel = velocity[-1] if isinstance(velocity, (list, tuple)) else velocity
    steer_change = steer_ump[0] if isinstance(steer_ump, (list, tuple)) else steer_ump
    print("velocity: ",set_vel*3.6)
    # print("steering: ",math.degrees(steer_change)*16)
    rospy.sleep(0.1)  # Sleep to prevent spamming the output