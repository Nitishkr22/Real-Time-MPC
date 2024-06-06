;; Auto-generated. Do not edit!


(when (boundp 'genesis_msgs::LaneReport)
  (if (not (find-package "GENESIS_MSGS"))
    (make-package "GENESIS_MSGS"))
  (shadow 'LaneReport (find-package "GENESIS_MSGS")))
(unless (find-package "GENESIS_MSGS::LANEREPORT")
  (make-package "GENESIS_MSGS::LANEREPORT"))

(in-package "ROS")
;;//! \htmlinclude LaneReport.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass genesis_msgs::LaneReport
  :super ros::object
  :slots (_header _stampA _stampB _a0 _a1 _a2 _a3 _lane_mark_type _lane_mark_quality ))

(defmethod genesis_msgs::LaneReport
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:stampA __stampA) (instance ros::time :init))
    ((:stampB __stampB) (instance ros::time :init))
    ((:a0 __a0) 0.0)
    ((:a1 __a1) 0.0)
    ((:a2 __a2) 0.0)
    ((:a3 __a3) 0.0)
    ((:lane_mark_type __lane_mark_type) 0)
    ((:lane_mark_quality __lane_mark_quality) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _stampA __stampA)
   (setq _stampB __stampB)
   (setq _a0 (float __a0))
   (setq _a1 (float __a1))
   (setq _a2 (float __a2))
   (setq _a3 (float __a3))
   (setq _lane_mark_type (round __lane_mark_type))
   (setq _lane_mark_quality (round __lane_mark_quality))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:stampA
   (&optional __stampA)
   (if __stampA (setq _stampA __stampA)) _stampA)
  (:stampB
   (&optional __stampB)
   (if __stampB (setq _stampB __stampB)) _stampB)
  (:a0
   (&optional __a0)
   (if __a0 (setq _a0 __a0)) _a0)
  (:a1
   (&optional __a1)
   (if __a1 (setq _a1 __a1)) _a1)
  (:a2
   (&optional __a2)
   (if __a2 (setq _a2 __a2)) _a2)
  (:a3
   (&optional __a3)
   (if __a3 (setq _a3 __a3)) _a3)
  (:lane_mark_type
   (&optional __lane_mark_type)
   (if __lane_mark_type (setq _lane_mark_type __lane_mark_type)) _lane_mark_type)
  (:lane_mark_quality
   (&optional __lane_mark_quality)
   (if __lane_mark_quality (setq _lane_mark_quality __lane_mark_quality)) _lane_mark_quality)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; time _stampA
    8
    ;; time _stampB
    8
    ;; float32 _a0
    4
    ;; float32 _a1
    4
    ;; float32 _a2
    4
    ;; float32 _a3
    4
    ;; int32 _lane_mark_type
    4
    ;; int32 _lane_mark_quality
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; time _stampA
       (write-long (send _stampA :sec) s) (write-long (send _stampA :nsec) s)
     ;; time _stampB
       (write-long (send _stampB :sec) s) (write-long (send _stampB :nsec) s)
     ;; float32 _a0
       (sys::poke _a0 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _a1
       (sys::poke _a1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _a2
       (sys::poke _a2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _a3
       (sys::poke _a3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _lane_mark_type
       (write-long _lane_mark_type s)
     ;; int32 _lane_mark_quality
       (write-long _lane_mark_quality s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; time _stampA
     (send _stampA :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stampA :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; time _stampB
     (send _stampB :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stampB :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _a0
     (setq _a0 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _a1
     (setq _a1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _a2
     (setq _a2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _a3
     (setq _a3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _lane_mark_type
     (setq _lane_mark_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _lane_mark_quality
     (setq _lane_mark_quality (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get genesis_msgs::LaneReport :md5sum-) "38b4f1a74aa95aed2e054915f544383c")
(setf (get genesis_msgs::LaneReport :datatype-) "genesis_msgs/LaneReport")
(setf (get genesis_msgs::LaneReport :definition-)
      "Header header

time stampA					# timestamp for the \"A\"-part of the message; same as header.stamp
time stampB					# timestamp for the \"B\"-part of the message

# Lane polynomial in vehicle frame is y = a0 + a1 x + a2 x^2 + a3 x^3
float32 a0
float32 a1
float32 a2
float32 a3

# Mark types: 6 \"Invalid\" 5 \"Botts'Dots\" 4 \"DoubleLaneMark\" 3 \"RoadEdge\" 2 \"Undecided\" 1 \"Solid\" 0 \"Dashed\" ;
int32 lane_mark_type
# Quality types: 0, 1 \"Low Quality\" 2, 3 \"High Quality\"
int32 lane_mark_quality

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



(provide :genesis_msgs/LaneReport "38b4f1a74aa95aed2e054915f544383c")


