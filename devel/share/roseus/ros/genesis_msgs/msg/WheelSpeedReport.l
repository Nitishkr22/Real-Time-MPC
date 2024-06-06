;; Auto-generated. Do not edit!


(when (boundp 'genesis_msgs::WheelSpeedReport)
  (if (not (find-package "GENESIS_MSGS"))
    (make-package "GENESIS_MSGS"))
  (shadow 'WheelSpeedReport (find-package "GENESIS_MSGS")))
(unless (find-package "GENESIS_MSGS::WHEELSPEEDREPORT")
  (make-package "GENESIS_MSGS::WHEELSPEEDREPORT"))

(in-package "ROS")
;;//! \htmlinclude WheelSpeedReport.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass genesis_msgs::WheelSpeedReport
  :super ros::object
  :slots (_header _wheel_speed_fl _wheel_speed_fr _wheel_speed_rl _wheel_speed_rr ))

(defmethod genesis_msgs::WheelSpeedReport
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:wheel_speed_fl __wheel_speed_fl) 0.0)
    ((:wheel_speed_fr __wheel_speed_fr) 0.0)
    ((:wheel_speed_rl __wheel_speed_rl) 0.0)
    ((:wheel_speed_rr __wheel_speed_rr) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _wheel_speed_fl (float __wheel_speed_fl))
   (setq _wheel_speed_fr (float __wheel_speed_fr))
   (setq _wheel_speed_rl (float __wheel_speed_rl))
   (setq _wheel_speed_rr (float __wheel_speed_rr))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:wheel_speed_fl
   (&optional __wheel_speed_fl)
   (if __wheel_speed_fl (setq _wheel_speed_fl __wheel_speed_fl)) _wheel_speed_fl)
  (:wheel_speed_fr
   (&optional __wheel_speed_fr)
   (if __wheel_speed_fr (setq _wheel_speed_fr __wheel_speed_fr)) _wheel_speed_fr)
  (:wheel_speed_rl
   (&optional __wheel_speed_rl)
   (if __wheel_speed_rl (setq _wheel_speed_rl __wheel_speed_rl)) _wheel_speed_rl)
  (:wheel_speed_rr
   (&optional __wheel_speed_rr)
   (if __wheel_speed_rr (setq _wheel_speed_rr __wheel_speed_rr)) _wheel_speed_rr)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _wheel_speed_fl
    4
    ;; float32 _wheel_speed_fr
    4
    ;; float32 _wheel_speed_rl
    4
    ;; float32 _wheel_speed_rr
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _wheel_speed_fl
       (sys::poke _wheel_speed_fl (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _wheel_speed_fr
       (sys::poke _wheel_speed_fr (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _wheel_speed_rl
       (sys::poke _wheel_speed_rl (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _wheel_speed_rr
       (sys::poke _wheel_speed_rr (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _wheel_speed_fl
     (setq _wheel_speed_fl (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _wheel_speed_fr
     (setq _wheel_speed_fr (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _wheel_speed_rl
     (setq _wheel_speed_rl (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _wheel_speed_rr
     (setq _wheel_speed_rr (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get genesis_msgs::WheelSpeedReport :md5sum-) "a53e80a356e4025a8aac3ddad6c964fd")
(setf (get genesis_msgs::WheelSpeedReport :datatype-) "genesis_msgs/WheelSpeedReport")
(setf (get genesis_msgs::WheelSpeedReport :definition-)
      "Header header

# Wheel Speeds
float32 wheel_speed_fl # kph
float32 wheel_speed_fr # kph
float32 wheel_speed_rl # kph
float32 wheel_speed_rr # kph

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



(provide :genesis_msgs/WheelSpeedReport "a53e80a356e4025a8aac3ddad6c964fd")


