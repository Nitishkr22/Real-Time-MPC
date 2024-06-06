;; Auto-generated. Do not edit!


(when (boundp 'genesis_msgs::ESRTrackReport)
  (if (not (find-package "GENESIS_MSGS"))
    (make-package "GENESIS_MSGS"))
  (shadow 'ESRTrackReport (find-package "GENESIS_MSGS")))
(unless (find-package "GENESIS_MSGS::ESRTRACKREPORT")
  (make-package "GENESIS_MSGS::ESRTRACKREPORT"))

(in-package "ROS")
;;//! \htmlinclude ESRTrackReport.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass genesis_msgs::ESRTrackReport
  :super ros::object
  :slots (_header _grouping_changed _oncoming _bridge_object _status _rolling_count _mode _range _range_rate _range_accel _width _angle _lat_rate ))

(defmethod genesis_msgs::ESRTrackReport
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:grouping_changed __grouping_changed) (make-array 0 :initial-element 0 :element-type :integer))
    ((:oncoming __oncoming) (make-array 0 :initial-element 0 :element-type :integer))
    ((:bridge_object __bridge_object) (make-array 0 :initial-element 0 :element-type :integer))
    ((:status __status) (make-array 0 :initial-element 0 :element-type :integer))
    ((:rolling_count __rolling_count) (make-array 0 :initial-element 0 :element-type :integer))
    ((:mode __mode) (make-array 0 :initial-element 0 :element-type :integer))
    ((:range __range) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:range_rate __range_rate) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:range_accel __range_accel) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:width __width) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:angle __angle) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:lat_rate __lat_rate) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _grouping_changed __grouping_changed)
   (setq _oncoming __oncoming)
   (setq _bridge_object __bridge_object)
   (setq _status __status)
   (setq _rolling_count __rolling_count)
   (setq _mode __mode)
   (setq _range __range)
   (setq _range_rate __range_rate)
   (setq _range_accel __range_accel)
   (setq _width __width)
   (setq _angle __angle)
   (setq _lat_rate __lat_rate)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:grouping_changed
   (&optional __grouping_changed)
   (if __grouping_changed (setq _grouping_changed __grouping_changed)) _grouping_changed)
  (:oncoming
   (&optional __oncoming)
   (if __oncoming (setq _oncoming __oncoming)) _oncoming)
  (:bridge_object
   (&optional __bridge_object)
   (if __bridge_object (setq _bridge_object __bridge_object)) _bridge_object)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:rolling_count
   (&optional __rolling_count)
   (if __rolling_count (setq _rolling_count __rolling_count)) _rolling_count)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:range
   (&optional __range)
   (if __range (setq _range __range)) _range)
  (:range_rate
   (&optional __range_rate)
   (if __range_rate (setq _range_rate __range_rate)) _range_rate)
  (:range_accel
   (&optional __range_accel)
   (if __range_accel (setq _range_accel __range_accel)) _range_accel)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:lat_rate
   (&optional __lat_rate)
   (if __lat_rate (setq _lat_rate __lat_rate)) _lat_rate)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32[] _grouping_changed
    (* 4    (length _grouping_changed)) 4
    ;; int32[] _oncoming
    (* 4    (length _oncoming)) 4
    ;; int32[] _bridge_object
    (* 4    (length _bridge_object)) 4
    ;; int32[] _status
    (* 4    (length _status)) 4
    ;; int32[] _rolling_count
    (* 4    (length _rolling_count)) 4
    ;; int32[] _mode
    (* 4    (length _mode)) 4
    ;; float32[] _range
    (* 4    (length _range)) 4
    ;; float32[] _range_rate
    (* 4    (length _range_rate)) 4
    ;; float32[] _range_accel
    (* 4    (length _range_accel)) 4
    ;; float32[] _width
    (* 4    (length _width)) 4
    ;; float32[] _angle
    (* 4    (length _angle)) 4
    ;; float32[] _lat_rate
    (* 4    (length _lat_rate)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32[] _grouping_changed
     (write-long (length _grouping_changed) s)
     (dotimes (i (length _grouping_changed))
       (write-long (elt _grouping_changed i) s)
       )
     ;; int32[] _oncoming
     (write-long (length _oncoming) s)
     (dotimes (i (length _oncoming))
       (write-long (elt _oncoming i) s)
       )
     ;; int32[] _bridge_object
     (write-long (length _bridge_object) s)
     (dotimes (i (length _bridge_object))
       (write-long (elt _bridge_object i) s)
       )
     ;; int32[] _status
     (write-long (length _status) s)
     (dotimes (i (length _status))
       (write-long (elt _status i) s)
       )
     ;; int32[] _rolling_count
     (write-long (length _rolling_count) s)
     (dotimes (i (length _rolling_count))
       (write-long (elt _rolling_count i) s)
       )
     ;; int32[] _mode
     (write-long (length _mode) s)
     (dotimes (i (length _mode))
       (write-long (elt _mode i) s)
       )
     ;; float32[] _range
     (write-long (length _range) s)
     (dotimes (i (length _range))
       (sys::poke (elt _range i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _range_rate
     (write-long (length _range_rate) s)
     (dotimes (i (length _range_rate))
       (sys::poke (elt _range_rate i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _range_accel
     (write-long (length _range_accel) s)
     (dotimes (i (length _range_accel))
       (sys::poke (elt _range_accel i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _width
     (write-long (length _width) s)
     (dotimes (i (length _width))
       (sys::poke (elt _width i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _angle
     (write-long (length _angle) s)
     (dotimes (i (length _angle))
       (sys::poke (elt _angle i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _lat_rate
     (write-long (length _lat_rate) s)
     (dotimes (i (length _lat_rate))
       (sys::poke (elt _lat_rate i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32[] _grouping_changed
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _grouping_changed (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _grouping_changed i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _oncoming
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _oncoming (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _oncoming i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _bridge_object
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _bridge_object (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _bridge_object i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _status
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _status (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _status i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _rolling_count
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _rolling_count (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _rolling_count i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _mode
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _mode (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _mode i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float32[] _range
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _range (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _range i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _range_rate
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _range_rate (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _range_rate i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _range_accel
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _range_accel (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _range_accel i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _width
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _width (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _width i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _angle
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _angle (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _angle i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _lat_rate
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lat_rate (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _lat_rate i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get genesis_msgs::ESRTrackReport :md5sum-) "fd50ae5f4f5173c868d1c9edbd613a3f")
(setf (get genesis_msgs::ESRTrackReport :datatype-) "genesis_msgs/ESRTrackReport")
(setf (get genesis_msgs::ESRTrackReport :definition-)
      "Header header

# STATUS/MODE RELATED
int32[] grouping_changed      # changed (1), unchanged(0)
int32[] oncoming              # oncoming (1), not oncoming (0)
int32[] bridge_object         # bridge (1), not bridge (0)
int32[] status                # New_Coasted_Target(7), Invalid_Coasted_Target(6), Merged_Target(5), Coasted_Target(4), 
                            # Updated_Target(3), New_Updated_Target(2), New_Target(1), No_Target(0)
int32[] rolling_count         # ?
int32[] mode                  # both MR/LR (3), LR(2), MR(1), Neither (0)

# MEASUREMENTS
float32[] range               # m
float32[] range_rate          # m/s
float32[] range_accel         # m/s^2
float32[] width               # m
float32[] angle               # deg
float32[] lat_rate            # ?

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



(provide :genesis_msgs/ESRTrackReport "fd50ae5f4f5173c868d1c9edbd613a3f")


