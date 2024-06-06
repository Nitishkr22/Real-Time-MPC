;; Auto-generated. Do not edit!


(when (boundp 'genesis_msgs::SteeringReport)
  (if (not (find-package "GENESIS_MSGS"))
    (make-package "GENESIS_MSGS"))
  (shadow 'SteeringReport (find-package "GENESIS_MSGS")))
(unless (find-package "GENESIS_MSGS::STEERINGREPORT")
  (make-package "GENESIS_MSGS::STEERINGREPORT"))

(in-package "ROS")
;;//! \htmlinclude SteeringReport.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass genesis_msgs::SteeringReport
  :super ros::object
  :slots (_header _steering_wheel_angle _steering_wheel_speed _steering_stat _msg_count _checksum ))

(defmethod genesis_msgs::SteeringReport
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:steering_wheel_angle __steering_wheel_angle) 0.0)
    ((:steering_wheel_speed __steering_wheel_speed) 0.0)
    ((:steering_stat __steering_stat) 0)
    ((:msg_count __msg_count) 0)
    ((:checksum __checksum) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _steering_wheel_angle (float __steering_wheel_angle))
   (setq _steering_wheel_speed (float __steering_wheel_speed))
   (setq _steering_stat (round __steering_stat))
   (setq _msg_count (round __msg_count))
   (setq _checksum (round __checksum))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:steering_wheel_angle
   (&optional __steering_wheel_angle)
   (if __steering_wheel_angle (setq _steering_wheel_angle __steering_wheel_angle)) _steering_wheel_angle)
  (:steering_wheel_speed
   (&optional __steering_wheel_speed)
   (if __steering_wheel_speed (setq _steering_wheel_speed __steering_wheel_speed)) _steering_wheel_speed)
  (:steering_stat
   (&optional __steering_stat)
   (if __steering_stat (setq _steering_stat __steering_stat)) _steering_stat)
  (:msg_count
   (&optional __msg_count)
   (if __msg_count (setq _msg_count __msg_count)) _msg_count)
  (:checksum
   (&optional __checksum)
   (if __checksum (setq _checksum __checksum)) _checksum)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _steering_wheel_angle
    4
    ;; float32 _steering_wheel_speed
    4
    ;; uint8 _steering_stat
    1
    ;; uint8 _msg_count
    1
    ;; uint8 _checksum
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _steering_wheel_angle
       (sys::poke _steering_wheel_angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _steering_wheel_speed
       (sys::poke _steering_wheel_speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _steering_stat
       (write-byte _steering_stat s)
     ;; uint8 _msg_count
       (write-byte _msg_count s)
     ;; uint8 _checksum
       (write-byte _checksum s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _steering_wheel_angle
     (setq _steering_wheel_angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _steering_wheel_speed
     (setq _steering_wheel_speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _steering_stat
     (setq _steering_stat (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _msg_count
     (setq _msg_count (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _checksum
     (setq _checksum (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get genesis_msgs::SteeringReport :md5sum-) "4859bfda0d84232363f2c485e301bd32")
(setf (get genesis_msgs::SteeringReport :datatype-) "genesis_msgs/SteeringReport")
(setf (get genesis_msgs::SteeringReport :definition-)
      "Header header

# Steering Wheel
float32 steering_wheel_angle # deg
float32 steering_wheel_speed # ??
uint8 steering_stat
uint8 msg_count
uint8 checksum

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



(provide :genesis_msgs/SteeringReport "4859bfda0d84232363f2c485e301bd32")


