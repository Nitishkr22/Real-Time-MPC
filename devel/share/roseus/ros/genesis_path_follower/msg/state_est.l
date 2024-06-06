;; Auto-generated. Do not edit!


(when (boundp 'genesis_path_follower::state_est)
  (if (not (find-package "GENESIS_PATH_FOLLOWER"))
    (make-package "GENESIS_PATH_FOLLOWER"))
  (shadow 'state_est (find-package "GENESIS_PATH_FOLLOWER")))
(unless (find-package "GENESIS_PATH_FOLLOWER::STATE_EST")
  (make-package "GENESIS_PATH_FOLLOWER::STATE_EST"))

(in-package "ROS")
;;//! \htmlinclude state_est.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass genesis_path_follower::state_est
  :super ros::object
  :slots (_header _lat _lon _x _y _psi _v _v_long _v_lat _yaw_rate _a_long _a_lat _df ))

(defmethod genesis_path_follower::state_est
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:lat __lat) 0.0)
    ((:lon __lon) 0.0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:psi __psi) 0.0)
    ((:v __v) 0.0)
    ((:v_long __v_long) 0.0)
    ((:v_lat __v_lat) 0.0)
    ((:yaw_rate __yaw_rate) 0.0)
    ((:a_long __a_long) 0.0)
    ((:a_lat __a_lat) 0.0)
    ((:df __df) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _lat (float __lat))
   (setq _lon (float __lon))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _psi (float __psi))
   (setq _v (float __v))
   (setq _v_long (float __v_long))
   (setq _v_lat (float __v_lat))
   (setq _yaw_rate (float __yaw_rate))
   (setq _a_long (float __a_long))
   (setq _a_lat (float __a_lat))
   (setq _df (float __df))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:lat
   (&optional __lat)
   (if __lat (setq _lat __lat)) _lat)
  (:lon
   (&optional __lon)
   (if __lon (setq _lon __lon)) _lon)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:psi
   (&optional __psi)
   (if __psi (setq _psi __psi)) _psi)
  (:v
   (&optional __v)
   (if __v (setq _v __v)) _v)
  (:v_long
   (&optional __v_long)
   (if __v_long (setq _v_long __v_long)) _v_long)
  (:v_lat
   (&optional __v_lat)
   (if __v_lat (setq _v_lat __v_lat)) _v_lat)
  (:yaw_rate
   (&optional __yaw_rate)
   (if __yaw_rate (setq _yaw_rate __yaw_rate)) _yaw_rate)
  (:a_long
   (&optional __a_long)
   (if __a_long (setq _a_long __a_long)) _a_long)
  (:a_lat
   (&optional __a_lat)
   (if __a_lat (setq _a_lat __a_lat)) _a_lat)
  (:df
   (&optional __df)
   (if __df (setq _df __df)) _df)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _lat
    8
    ;; float64 _lon
    8
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _psi
    8
    ;; float64 _v
    8
    ;; float64 _v_long
    8
    ;; float64 _v_lat
    8
    ;; float64 _yaw_rate
    8
    ;; float64 _a_long
    8
    ;; float64 _a_lat
    8
    ;; float64 _df
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _lat
       (sys::poke _lat (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lon
       (sys::poke _lon (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _psi
       (sys::poke _psi (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _v
       (sys::poke _v (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _v_long
       (sys::poke _v_long (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _v_lat
       (sys::poke _v_lat (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw_rate
       (sys::poke _yaw_rate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _a_long
       (sys::poke _a_long (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _a_lat
       (sys::poke _a_lat (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _df
       (sys::poke _df (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _lat
     (setq _lat (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lon
     (setq _lon (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _psi
     (setq _psi (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _v
     (setq _v (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _v_long
     (setq _v_long (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _v_lat
     (setq _v_lat (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw_rate
     (setq _yaw_rate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _a_long
     (setq _a_long (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _a_lat
     (setq _a_lat (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _df
     (setq _df (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get genesis_path_follower::state_est :md5sum-) "9c920bd35ee9bfa5fb5330660c621c0a")
(setf (get genesis_path_follower::state_est :datatype-) "genesis_path_follower/state_est")
(setf (get genesis_path_follower::state_est :definition-)
      "Header header

float64 lat      # latitude (deg)
float64 lon      # longitude (deg)

float64 x        # x coordinate (m)
float64 y        # y coordinate (m)
float64 psi      # yaw angle (rad)
float64 v        # speed (m/s)

float64 v_long   # longitidunal velocity (m/s)
float64 v_lat    # lateral velocity (m/s)
float64 yaw_rate # w_z, yaw rate (rad/s)

float64 a_long   # longitudinal acceleration (m/s^2)
float64 a_lat    # lateral acceleration (m/s^2)
float64 df       # front steering angle (rad)

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :genesis_path_follower/state_est "9c920bd35ee9bfa5fb5330660c621c0a")


