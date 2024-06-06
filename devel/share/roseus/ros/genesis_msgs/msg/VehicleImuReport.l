;; Auto-generated. Do not edit!


(when (boundp 'genesis_msgs::VehicleImuReport)
  (if (not (find-package "GENESIS_MSGS"))
    (make-package "GENESIS_MSGS"))
  (shadow 'VehicleImuReport (find-package "GENESIS_MSGS")))
(unless (find-package "GENESIS_MSGS::VEHICLEIMUREPORT")
  (make-package "GENESIS_MSGS::VEHICLEIMUREPORT"))

(in-package "ROS")
;;//! \htmlinclude VehicleImuReport.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass genesis_msgs::VehicleImuReport
  :super ros::object
  :slots (_header _yaw_rate _lat_accel _long_accel ))

(defmethod genesis_msgs::VehicleImuReport
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:yaw_rate __yaw_rate) 0.0)
    ((:lat_accel __lat_accel) 0.0)
    ((:long_accel __long_accel) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _yaw_rate (float __yaw_rate))
   (setq _lat_accel (float __lat_accel))
   (setq _long_accel (float __long_accel))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:yaw_rate
   (&optional __yaw_rate)
   (if __yaw_rate (setq _yaw_rate __yaw_rate)) _yaw_rate)
  (:lat_accel
   (&optional __lat_accel)
   (if __lat_accel (setq _lat_accel __lat_accel)) _lat_accel)
  (:long_accel
   (&optional __long_accel)
   (if __long_accel (setq _long_accel __long_accel)) _long_accel)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _yaw_rate
    4
    ;; float32 _lat_accel
    4
    ;; float32 _long_accel
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _yaw_rate
       (sys::poke _yaw_rate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _lat_accel
       (sys::poke _lat_accel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _long_accel
       (sys::poke _long_accel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _yaw_rate
     (setq _yaw_rate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _lat_accel
     (setq _lat_accel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _long_accel
     (setq _long_accel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get genesis_msgs::VehicleImuReport :md5sum-) "6e80ee09b6b860b9df67618823009a87")
(setf (get genesis_msgs::VehicleImuReport :datatype-) "genesis_msgs/VehicleImuReport")
(setf (get genesis_msgs::VehicleImuReport :definition-)
      "Header header

float32 yaw_rate
float32 lat_accel
float32 long_accel

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



(provide :genesis_msgs/VehicleImuReport "6e80ee09b6b860b9df67618823009a87")


