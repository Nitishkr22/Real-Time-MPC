;; Auto-generated. Do not edit!


(when (boundp 'genesis_msgs::ESRValidReport)
  (if (not (find-package "GENESIS_MSGS"))
    (make-package "GENESIS_MSGS"))
  (shadow 'ESRValidReport (find-package "GENESIS_MSGS")))
(unless (find-package "GENESIS_MSGS::ESRVALIDREPORT")
  (make-package "GENESIS_MSGS::ESRVALIDREPORT"))

(in-package "ROS")
;;//! \htmlinclude ESRValidReport.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass genesis_msgs::ESRValidReport
  :super ros::object
  :slots (_header _stamp1 _stamp2 _lr_sn _lr_range_rate _lr_range _lr_range_power _lr_range_angle _mr_sn _mr_range_rate _mr_range _mr_range_power _mr_range_angle ))

(defmethod genesis_msgs::ESRValidReport
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:stamp1 __stamp1) (instance ros::time :init))
    ((:stamp2 __stamp2) (instance ros::time :init))
    ((:lr_sn __lr_sn) 0)
    ((:lr_range_rate __lr_range_rate) 0.0)
    ((:lr_range __lr_range) 0.0)
    ((:lr_range_power __lr_range_power) 0.0)
    ((:lr_range_angle __lr_range_angle) 0.0)
    ((:mr_sn __mr_sn) 0)
    ((:mr_range_rate __mr_range_rate) 0.0)
    ((:mr_range __mr_range) 0.0)
    ((:mr_range_power __mr_range_power) 0.0)
    ((:mr_range_angle __mr_range_angle) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _stamp1 __stamp1)
   (setq _stamp2 __stamp2)
   (setq _lr_sn (round __lr_sn))
   (setq _lr_range_rate (float __lr_range_rate))
   (setq _lr_range (float __lr_range))
   (setq _lr_range_power (float __lr_range_power))
   (setq _lr_range_angle (float __lr_range_angle))
   (setq _mr_sn (round __mr_sn))
   (setq _mr_range_rate (float __mr_range_rate))
   (setq _mr_range (float __mr_range))
   (setq _mr_range_power (float __mr_range_power))
   (setq _mr_range_angle (float __mr_range_angle))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:stamp1
   (&optional __stamp1)
   (if __stamp1 (setq _stamp1 __stamp1)) _stamp1)
  (:stamp2
   (&optional __stamp2)
   (if __stamp2 (setq _stamp2 __stamp2)) _stamp2)
  (:lr_sn
   (&optional __lr_sn)
   (if __lr_sn (setq _lr_sn __lr_sn)) _lr_sn)
  (:lr_range_rate
   (&optional __lr_range_rate)
   (if __lr_range_rate (setq _lr_range_rate __lr_range_rate)) _lr_range_rate)
  (:lr_range
   (&optional __lr_range)
   (if __lr_range (setq _lr_range __lr_range)) _lr_range)
  (:lr_range_power
   (&optional __lr_range_power)
   (if __lr_range_power (setq _lr_range_power __lr_range_power)) _lr_range_power)
  (:lr_range_angle
   (&optional __lr_range_angle)
   (if __lr_range_angle (setq _lr_range_angle __lr_range_angle)) _lr_range_angle)
  (:mr_sn
   (&optional __mr_sn)
   (if __mr_sn (setq _mr_sn __mr_sn)) _mr_sn)
  (:mr_range_rate
   (&optional __mr_range_rate)
   (if __mr_range_rate (setq _mr_range_rate __mr_range_rate)) _mr_range_rate)
  (:mr_range
   (&optional __mr_range)
   (if __mr_range (setq _mr_range __mr_range)) _mr_range)
  (:mr_range_power
   (&optional __mr_range_power)
   (if __mr_range_power (setq _mr_range_power __mr_range_power)) _mr_range_power)
  (:mr_range_angle
   (&optional __mr_range_angle)
   (if __mr_range_angle (setq _mr_range_angle __mr_range_angle)) _mr_range_angle)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; time _stamp1
    8
    ;; time _stamp2
    8
    ;; int32 _lr_sn
    4
    ;; float32 _lr_range_rate
    4
    ;; float32 _lr_range
    4
    ;; float32 _lr_range_power
    4
    ;; float32 _lr_range_angle
    4
    ;; int32 _mr_sn
    4
    ;; float32 _mr_range_rate
    4
    ;; float32 _mr_range
    4
    ;; float32 _mr_range_power
    4
    ;; float32 _mr_range_angle
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; time _stamp1
       (write-long (send _stamp1 :sec) s) (write-long (send _stamp1 :nsec) s)
     ;; time _stamp2
       (write-long (send _stamp2 :sec) s) (write-long (send _stamp2 :nsec) s)
     ;; int32 _lr_sn
       (write-long _lr_sn s)
     ;; float32 _lr_range_rate
       (sys::poke _lr_range_rate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _lr_range
       (sys::poke _lr_range (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _lr_range_power
       (sys::poke _lr_range_power (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _lr_range_angle
       (sys::poke _lr_range_angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _mr_sn
       (write-long _mr_sn s)
     ;; float32 _mr_range_rate
       (sys::poke _mr_range_rate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _mr_range
       (sys::poke _mr_range (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _mr_range_power
       (sys::poke _mr_range_power (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _mr_range_angle
       (sys::poke _mr_range_angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; time _stamp1
     (send _stamp1 :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp1 :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; time _stamp2
     (send _stamp2 :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp2 :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _lr_sn
     (setq _lr_sn (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _lr_range_rate
     (setq _lr_range_rate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _lr_range
     (setq _lr_range (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _lr_range_power
     (setq _lr_range_power (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _lr_range_angle
     (setq _lr_range_angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _mr_sn
     (setq _mr_sn (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _mr_range_rate
     (setq _mr_range_rate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _mr_range
     (setq _mr_range (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _mr_range_power
     (setq _mr_range_power (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _mr_range_angle
     (setq _mr_range_angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get genesis_msgs::ESRValidReport :md5sum-) "5bc0fc869f175fe0d4567a3b81e3a5e1")
(setf (get genesis_msgs::ESRValidReport :datatype-) "genesis_msgs/ESRValidReport")
(setf (get genesis_msgs::ESRValidReport :definition-)
      "Header header

time stamp1					# timestamp for the Valid1 part; same as header.stamp
time stamp2					# timestamp for the Valid2 part

# Long Range (Valid1)
int32 lr_sn                                     # ?, probably a boolean for if the sensor works?
float32 lr_range_rate                           # m/s
float32 lr_range                                # m
float32 lr_range_power                          # dB
float32 lr_range_angle                          # deg

# Medium Range (Valid2)
int32 mr_sn                                     # ?, probably a boolean for if the sensor works?
float32 mr_range_rate                           # m/s
float32 mr_range                                # m
float32 mr_range_power                          # dB
float32 mr_range_angle                          # deg




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



(provide :genesis_msgs/ESRValidReport "5bc0fc869f175fe0d4567a3b81e3a5e1")


