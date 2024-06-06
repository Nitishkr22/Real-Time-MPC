import numpy as np
from novatel_oem7_msgs.msg import BESTPOS
from novatel_oem7_msgs.msg import BESTVEL
from novatel_oem7_msgs.msg import INSPVA
import rospy
from std_msgs.msg import String
import actuator
import math
import pid
import time
from geopy.distance import geodesic
from nav_msgs.msg import Odometry
import csv


lat = 0.0
lng = 0.0
heading = 0.0
x_pos = 0.0
y_pos = 0.0
wp_threshold = 1.111395e5
global csv_file_path
#GNSS position
def callback_latlong(data):
    global lat,lng
    lat = data.lat
    lng = data.lon

#GNSS heading
def callback_heading(data):

    global heading
    heading=data.azimuth  

def callback_xandy(data):
    global x_pos, y_pos
    x_pos = data.pose.pose.position.x
    y_pos = data.pose.pose.position.y
rospy.init_node('Navigation', anonymous=True)
#ROS subscription
rospy.Subscriber("/novatel/oem7/bestpos",BESTPOS, callback_latlong)
rospy.Subscriber("/novatel/oem7/inspva",INSPVA, callback_heading)
rospy.Subscriber("/novatel/oem7/odom",Odometry, callback_xandy)

#TCP connection
obj = actuator.controller("169.254.178.227",5001)
obj.connect()

#PID controller
Kp = 1.65971
Ki = 0.00007
Kd = 0.710
rate_min = -100
rate_max = 100
pid_controller = pid.PIDController(Kp, Ki, Kd, rate_min, rate_max)

def calculate_steer_angle(currentLocation, wp, heading):
    """
    This function takes three inputs:
        - currentLocation: a list of two float values representing the current location
        - wp: a waypoint value
        - heading: a heading value
    It then calculates the steer output based on the current location, waypoint, and heading, and returns the steer output value.
    """
    off_y = - currentLocation[0] + float(waypoints[wp][0])
    off_x = - currentLocation[1] + float(waypoints[wp][1])

    # calculate bearing based on position error
    bearing_ppc =90.00 + math.atan2(-off_y, off_x) * 57.2957795  # Adding 90.00 is a common adjustment to align the bearing with cardinal directions (e.g., north as 0 degrees).

    # convert negative bearings to positive by adding 360 degrees
    if bearing_ppc < 0:
        bearing_ppc += 360.00

    # calculate the difference between heading and bearing
    bearing_diff = heading - bearing_ppc

    # normalize bearing difference to range between -180 and 180 degrees
    if bearing_diff < -180:
        bearing_diff = bearing_diff + 360

    if bearing_diff > 180:
        bearing_diff = bearing_diff - 360

    steer_output =  np.arctan(-1 * 2 * 3.5 * np.sin(np.pi * bearing_diff / 180) / 8)*(180/np.pi)

    steer_output = np.clip(steer_output, a_min = -30, a_max = 30)
    steer_output = (50/3)*steer_output
    steer_output = np.clip(steer_output, a_min = -500, a_max = 500)

    return steer_output

#Load waypoints
def load_waypoints(file_path):
        data_list = []
        try:
            with open(file_path, "r") as file:
                lines = file.readlines()
                for line in lines:
                    # Split each line using a comma as delimiter and convert values to floats
                    values = [float(x.strip()) for x in line.strip().split()]
                    data_list.append(values)
        except FileNotFoundError:
            print("File not found.")
        except Exception as e:
            print(f"Error occurred: {e}")
        return data_list

def count_lines_in_csv(csv_file_path):
    with open(csv_file_path, 'r') as csvfile:
        csv_reader = csv.reader(csvfile)
        line_count = sum(1 for row in csv_reader)
    return line_count

def read_last_line_from_csv():
    csv_file_path = "/home/abysmal/iasdk-public/detection_results.csv"
    with open(csv_file_path, 'r') as csvfile:
        # Read all lines from the CSV file
        lines = csvfile.readlines()
        # Return the last line
        if lines:
            return lines[-1].strip()  # Strip any trailing newline characters
        else:
            return None  # Return None if the file is empty


#file_path = 'output.txt'
#waypoints = load_waypoints(file_path)
waypoints = [[195034.43537059124,1948400.8266344382],
[195034.44859162037,1948401.169540897],
[195034.4619597231,1948401.4943520236],
[195034.48255318467,1948401.9726098138],
[195034.49396007095,1948402.4191402714],
[195034.51431225607,1948403.069789171],
[195034.52566156618,1948403.6949134648],
[195034.55875966046,1948404.558409528],
[195034.56655090407,1948405.3023075718],
[195034.57801867748,1948406.3008487972],
[195034.59972422052,1948407.1739054609],
[195034.6050131165,1948408.362679172],
[195034.61211036076,1948409.395199529],
[195034.6265951044,1948410.7500908736],
[195034.64478976,1948411.865562875],
[195034.65632301167,1948413.265176821],
[195034.65780683391,1948414.3984455043],
[195034.66277434299,1948415.8475774745],
[195034.66753379215,1948417.0350404058],
[195034.67813533824,1948418.5832573297],
[195034.67524604197,1948419.8798149368],
[195034.663955672,1948421.5457880318],
[195034.65240467532,1948422.9049001127],
[195034.64697341516,1948424.6186404212],
[195034.63259585836,1948426.0083699252],
[195034.61603131756,1948427.7461318036],
[195034.59670812677,1948429.1402975505],
[195034.5702222344,1948430.897355516],
[195034.55397354148,1948432.292175622],
[195034.5097359931,1948434.0427683122],
[195034.49353691528,1948435.4303470994],
[195034.47296456422,1948437.1562376115],
[195034.45217165397,1948438.5330909046],
[195034.42084570118,1948440.252194496],
[195034.39642476983,1948441.6317816041],
[195034.37397833692,1948443.348743556],
[195034.3501084628,1948444.7128730065],
[195034.31560467358,1948446.4200819877],
[195034.38545068807,1948447.2107928435],
[195034.35424391791,1948448.778165763],
[195034.32398474915,1948450.2821331355],
[195034.29598798975,1948451.8634052037],
[195034.19959066523,1948453.9518082864],
[195034.1816746862,1948455.7018187968],
[195034.15772224573,1948457.109300777],
[195034.13930563582,1948458.882946637],
[195034.11683393567,1948460.3026917607],
[195034.11399640382,1948462.0800167904],
[195034.11144560133,1948463.8558319653],
[195034.1120954482,1948465.2652206598],
[195034.12776003097,1948467.0309955224],
[195034.13570038253,1948468.4429657871],
[195034.15590642992,1948470.2086097572],
[195034.1678442667,1948471.5980074783],
[195034.1947088549,1948473.348719632],
[195034.21595972666,1948474.7551211673],
[195034.25172518275,1948476.4991617706],
[195034.2762188001,1948477.8839610373],
[195034.32952930056,1948479.6288732323],
[195034.35307994514,1948481.0090763387],
[195034.3959802846,1948482.7455121833],
[195034.43922914506,1948484.1459973298],
[195034.48811927234,1948485.895618782],
[195034.52657138137,1948487.2947569664],
[195034.55120721733,1948489.0544476563],
[195034.57451845746,1948490.4665986178],
[195034.6030730402,1948492.2269474017],
[195034.6202812706,1948493.6408455695],
[195034.64885535603,1948495.4145116017],
[195034.66308557853,1948496.8292894545],
[195034.68700126582,1948498.6141041717],
[195034.70765434572,1948500.0560408528],
[195034.72330547153,1948501.85976561],
[195034.7469774846,1948503.3044284445],
[195034.7563359026,1948505.1253623392],
[195034.76471646113,1948506.586271273],
[195034.78017150285,1948508.4142317376],
[195034.78431764705,1948509.8696642872],
[195034.79978460568,1948511.688186382],
[195034.80894830264,1948513.1350122225],
[195034.82192441594,1948514.9437361562],
[195034.82251547067,1948516.3914121727],
[195034.82344209985,1948518.1912512823],
[195034.82499106368,1948519.626124063],
[195034.82548983203,1948521.4221749178],
[195034.82062147,1948522.8580091347],
[195034.8898211298,1948523.8692036697],
[195034.8946425917,1948525.4416323078],
[195034.83370185964,1948527.8519285927],
[195034.83315987146,1948529.2609110747],
[195034.83834711387,1948531.024170315],
[195034.83870400552,1948531.3752646327]]
# waypoints = waypoints[1]
for ss in waypoints:
    ss.reverse()
# print(waypoints)
wp = 0
message = "A,N,0,0,0,0,0,0,0,0,0\r\n" 
obj.send_data(message)
feed = obj.receive_data()
print(feed)
message = "A,N,0,1,100,0,0,0,0,0,0\r\n"
obj.send_data(message)
time.sleep(1)
feed = obj.receive_data()
print(feed)
message = "A,D,0,0,0,0,0,0,0,0,0 \r\n"
obj.send_data(message)
feed = obj.receive_data()
print(feed)
csv_file_path = "/home/abysmal/iasdk-public/detection_results.csv"
last_line = 0
with open(csv_file_path, 'r') as csvfile:
    while not rospy.is_shutdown():
        try:
            if (wp == len(waypoints)-1):
                steer_angle = 0
                obj.send_data('A,D,0,1,100,0,0,0,0,0,0\r\n')
                obj.send_data('A,D,0,1,100,0,0,0,0,0,0\r\n')
                obj.send_data('A,N,0,1,100,0,0,0,0,0,0\r\n')
                time.sleep(1)
                break
            # c = count_lines_in_csv("/home/abysmal/iasdk-public/detection_results.csv")
            # temp.append(c)
            # if len(temp)>2:
            #    eb = temp[-2]-temp[-1]
            #    print("AAAAAAAAAAAAAAAAAAAAAAAA", eb)
            # print("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA: ",type(c))
            # print("waypoint index =============== ",wp)
            lines = csvfile.readlines()
            
            if lines:
                last_line = lines[-1].strip()
            # last_line = read_last_line_from_csv()
            # # if last_line:
            # print("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA:", last_line)
            # # else:
            # #     print("CSV file is empty.")
            position = [float(y_pos), float(x_pos)]
            # print("aaaaaaaaaaaa: ",position)
            # print("Current position = ", position)
            if ((np.linalg.norm(np.array(position) - waypoints[len(waypoints) - 1])) > 1):
                steer_angle = calculate_steer_angle(position, wp, heading)
                # print("Steer Angle: ",steer_angle)
                steering_feedback = obj.receive_data().split(',')[2]
                print("steer Feedback: ",steering_feedback)
                velocity_feedback= obj.receive_data().split(',')[3]
                print("velocity_feedback: ",velocity_feedback)
                steer_rate = pid_controller.update(steer_angle, float(steering_feedback))
                # print("Steer Rate: ",type(steer_rate))
                # if int(velocity_feedback)> 11:
                #     obj.send_data("A,D,0,1,10,1,"+str(steer_rate)+",0,0,0,0\r\n")
                    
                # if (steer_angle)>110:
                #     if int(velocity_feedback)> 7:
                    
                #         obj.send_data("A,D,0,1,15,1,"+str(steer_rate)+",0,0,0,0\r\n")
                #     else:
                #         obj.send_data("A,D,7,0,0,1,"+str(steer_rate)+",0,0,0,0\r\n")
                # elif int(velocity_feedback)> 10:
                #     obj.send_data("A,D,0,1,8,1,"+str(steer_rate)+",0,0,0,0\r\n")
                # else:
                    # if eb!=0:
                    #     obj.send_data("A,D,8,1,100,1,"+str(steer_rate)+",0,0,0,0\r\n")
                    #     # time.sleep(3)
                    # else:
                        # obj.send_data("A,D,8,0,0,1,"+str(steer_rate)+",0,0,0,0\r\n")
                print("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA:::  ",last_line)
                if int(last_line)==1:
                    # print("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA:::  ",last_line/o )
                    obj.send_data("A,D,0,1,85,1,"+str(steer_rate)+",0,0,0,0\r\n")
                    # time.sleep(1)
                else:
                    obj.send_data("A,D,6,0,0,1,"+str(steer_rate)+",0,0,0,0\r\n")
                # time.sleep(1)
                if (wp < len(waypoints) and ((np.linalg.norm(np.array(position) - waypoints[wp])) < 6)):
                    wp = wp + 1
                    # print("\n Waypoint Number : ",wp)
            # else:
            #     steer_angle = 0
            #     obj.send_data('A,N,0,1,90,0,0,0,0,0,0\r\n')
            #     time.sleep(1)
            #     obj.send_data('A,N,O,1,90,0,0,0,0,0,0\r\n')
                
        except rospy.ROSInterruptException:
            pass
