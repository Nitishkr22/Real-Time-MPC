;; Auto-generated. Do not edit!


(when (boundp 'genesis_msgs::MandoObjectReport)
  (if (not (find-package "GENESIS_MSGS"))
    (make-package "GENESIS_MSGS"))
  (shadow 'MandoObjectReport (find-package "GENESIS_MSGS")))
(unless (find-package "GENESIS_MSGS::MANDOOBJECTREPORT")
  (make-package "GENESIS_MSGS::MANDOOBJECTREPORT"))

(in-package "ROS")
;;//! \htmlinclude MandoObjectReport.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass genesis_msgs::MandoObjectReport
  :super ros::object
  :slots (_header _index _alive_count_a _object_identifier _object_age _object_valid _object_mode _object_lane _angle_rate _angle_left _angle_right _cipv _brake_lights _blinker_info _alive_count_b _range _range_rate _motion_status _accel_x _position_y ))

(defmethod genesis_msgs::MandoObjectReport
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:index __index) (make-array 0 :initial-element 0 :element-type :integer))
    ((:alive_count_a __alive_count_a) (make-array 0 :initial-element 0 :element-type :integer))
    ((:object_identifier __object_identifier) (make-array 0 :initial-element 0 :element-type :integer))
    ((:object_age __object_age) (make-array 0 :initial-element 0 :element-type :integer))
    ((:object_valid __object_valid) (make-array 0 :initial-element 0 :element-type :integer))
    ((:object_mode __object_mode) (make-array 0 :initial-element 0 :element-type :integer))
    ((:object_lane __object_lane) (make-array 0 :initial-element 0 :element-type :integer))
    ((:angle_rate __angle_rate) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:angle_left __angle_left) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:angle_right __angle_right) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:cipv __cipv) (make-array 0 :initial-element 0 :element-type :integer))
    ((:brake_lights __brake_lights) (make-array 0 :initial-element 0 :element-type :integer))
    ((:blinker_info __blinker_info) (make-array 0 :initial-element 0 :element-type :integer))
    ((:alive_count_b __alive_count_b) (make-array 0 :initial-element 0 :element-type :integer))
    ((:range __range) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:range_rate __range_rate) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:motion_status __motion_status) (make-array 0 :initial-element 0 :element-type :integer))
    ((:accel_x __accel_x) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:position_y __position_y) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _index __index)
   (setq _alive_count_a __alive_count_a)
   (setq _object_identifier __object_identifier)
   (setq _object_age __object_age)
   (setq _object_valid __object_valid)
   (setq _object_mode __object_mode)
   (setq _object_lane __object_lane)
   (setq _angle_rate __angle_rate)
   (setq _angle_left __angle_left)
   (setq _angle_right __angle_right)
   (setq _cipv __cipv)
   (setq _brake_lights __brake_lights)
   (setq _blinker_info __blinker_info)
   (setq _alive_count_b __alive_count_b)
   (setq _range __range)
   (setq _range_rate __range_rate)
   (setq _motion_status __motion_status)
   (setq _accel_x __accel_x)
   (setq _position_y __position_y)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:index
   (&optional __index)
   (if __index (setq _index __index)) _index)
  (:alive_count_a
   (&optional __alive_count_a)
   (if __alive_count_a (setq _alive_count_a __alive_count_a)) _alive_count_a)
  (:object_identifier
   (&optional __object_identifier)
   (if __object_identifier (setq _object_identifier __object_identifier)) _object_identifier)
  (:object_age
   (&optional __object_age)
   (if __object_age (setq _object_age __object_age)) _object_age)
  (:object_valid
   (&optional __object_valid)
   (if __object_valid (setq _object_valid __object_valid)) _object_valid)
  (:object_mode
   (&optional __object_mode)
   (if __object_mode (setq _object_mode __object_mode)) _object_mode)
  (:object_lane
   (&optional __object_lane)
   (if __object_lane (setq _object_lane __object_lane)) _object_lane)
  (:angle_rate
   (&optional __angle_rate)
   (if __angle_rate (setq _angle_rate __angle_rate)) _angle_rate)
  (:angle_left
   (&optional __angle_left)
   (if __angle_left (setq _angle_left __angle_left)) _angle_left)
  (:angle_right
   (&optional __angle_right)
   (if __angle_right (setq _angle_right __angle_right)) _angle_right)
  (:cipv
   (&optional __cipv)
   (if __cipv (setq _cipv __cipv)) _cipv)
  (:brake_lights
   (&optional __brake_lights)
   (if __brake_lights (setq _brake_lights __brake_lights)) _brake_lights)
  (:blinker_info
   (&optional __blinker_info)
   (if __blinker_info (setq _blinker_info __blinker_info)) _blinker_info)
  (:alive_count_b
   (&optional __alive_count_b)
   (if __alive_count_b (setq _alive_count_b __alive_count_b)) _alive_count_b)
  (:range
   (&optional __range)
   (if __range (setq _range __range)) _range)
  (:range_rate
   (&optional __range_rate)
   (if __range_rate (setq _range_rate __range_rate)) _range_rate)
  (:motion_status
   (&optional __motion_status)
   (if __motion_status (setq _motion_status __motion_status)) _motion_status)
  (:accel_x
   (&optional __accel_x)
   (if __accel_x (setq _accel_x __accel_x)) _accel_x)
  (:position_y
   (&optional __position_y)
   (if __position_y (setq _position_y __position_y)) _position_y)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32[] _index
    (* 4    (length _index)) 4
    ;; int32[] _alive_count_a
    (* 4    (length _alive_count_a)) 4
    ;; int32[] _object_identifier
    (* 4    (length _object_identifier)) 4
    ;; int32[] _object_age
    (* 4    (length _object_age)) 4
    ;; int32[] _object_valid
    (* 4    (length _object_valid)) 4
    ;; int32[] _object_mode
    (* 4    (length _object_mode)) 4
    ;; int32[] _object_lane
    (* 4    (length _object_lane)) 4
    ;; float32[] _angle_rate
    (* 4    (length _angle_rate)) 4
    ;; float32[] _angle_left
    (* 4    (length _angle_left)) 4
    ;; float32[] _angle_right
    (* 4    (length _angle_right)) 4
    ;; int32[] _cipv
    (* 4    (length _cipv)) 4
    ;; int32[] _brake_lights
    (* 4    (length _brake_lights)) 4
    ;; int32[] _blinker_info
    (* 4    (length _blinker_info)) 4
    ;; int32[] _alive_count_b
    (* 4    (length _alive_count_b)) 4
    ;; float32[] _range
    (* 4    (length _range)) 4
    ;; float32[] _range_rate
    (* 4    (length _range_rate)) 4
    ;; int32[] _motion_status
    (* 4    (length _motion_status)) 4
    ;; float32[] _accel_x
    (* 4    (length _accel_x)) 4
    ;; float32[] _position_y
    (* 4    (length _position_y)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32[] _index
     (write-long (length _index) s)
     (dotimes (i (length _index))
       (write-long (elt _index i) s)
       )
     ;; int32[] _alive_count_a
     (write-long (length _alive_count_a) s)
     (dotimes (i (length _alive_count_a))
       (write-long (elt _alive_count_a i) s)
       )
     ;; int32[] _object_identifier
     (write-long (length _object_identifier) s)
     (dotimes (i (length _object_identifier))
       (write-long (elt _object_identifier i) s)
       )
     ;; int32[] _object_age
     (write-long (length _object_age) s)
     (dotimes (i (length _object_age))
       (write-long (elt _object_age i) s)
       )
     ;; int32[] _object_valid
     (write-long (length _object_valid) s)
     (dotimes (i (length _object_valid))
       (write-long (elt _object_valid i) s)
       )
     ;; int32[] _object_mode
     (write-long (length _object_mode) s)
     (dotimes (i (length _object_mode))
       (write-long (elt _object_mode i) s)
       )
     ;; int32[] _object_lane
     (write-long (length _object_lane) s)
     (dotimes (i (length _object_lane))
       (write-long (elt _object_lane i) s)
       )
     ;; float32[] _angle_rate
     (write-long (length _angle_rate) s)
     (dotimes (i (length _angle_rate))
       (sys::poke (elt _angle_rate i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _angle_left
     (write-long (length _angle_left) s)
     (dotimes (i (length _angle_left))
       (sys::poke (elt _angle_left i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _angle_right
     (write-long (length _angle_right) s)
     (dotimes (i (length _angle_right))
       (sys::poke (elt _angle_right i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; int32[] _cipv
     (write-long (length _cipv) s)
     (dotimes (i (length _cipv))
       (write-long (elt _cipv i) s)
       )
     ;; int32[] _brake_lights
     (write-long (length _brake_lights) s)
     (dotimes (i (length _brake_lights))
       (write-long (elt _brake_lights i) s)
       )
     ;; int32[] _blinker_info
     (write-long (length _blinker_info) s)
     (dotimes (i (length _blinker_info))
       (write-long (elt _blinker_info i) s)
       )
     ;; int32[] _alive_count_b
     (write-long (length _alive_count_b) s)
     (dotimes (i (length _alive_count_b))
       (write-long (elt _alive_count_b i) s)
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
     ;; int32[] _motion_status
     (write-long (length _motion_status) s)
     (dotimes (i (length _motion_status))
       (write-long (elt _motion_status i) s)
       )
     ;; float32[] _accel_x
     (write-long (length _accel_x) s)
     (dotimes (i (length _accel_x))
       (sys::poke (elt _accel_x i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _position_y
     (write-long (length _position_y) s)
     (dotimes (i (length _position_y))
       (sys::poke (elt _position_y i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32[] _index
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _index (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _index i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _alive_count_a
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _alive_count_a (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _alive_count_a i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _object_identifier
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _object_identifier (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _object_identifier i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _object_age
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _object_age (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _object_age i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _object_valid
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _object_valid (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _object_valid i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _object_mode
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _object_mode (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _object_mode i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _object_lane
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _object_lane (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _object_lane i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float32[] _angle_rate
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _angle_rate (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _angle_rate i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _angle_left
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _angle_left (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _angle_left i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _angle_right
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _angle_right (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _angle_right i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; int32[] _cipv
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cipv (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _cipv i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _brake_lights
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _brake_lights (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _brake_lights i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _blinker_info
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _blinker_info (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _blinker_info i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _alive_count_b
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _alive_count_b (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _alive_count_b i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
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
   ;; int32[] _motion_status
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _motion_status (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _motion_status i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float32[] _accel_x
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _accel_x (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _accel_x i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _position_y
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _position_y (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _position_y i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get genesis_msgs::MandoObjectReport :md5sum-) "9f997b467cbc16144eb262d8e6a2bc7c")
(setf (get genesis_msgs::MandoObjectReport :datatype-) "genesis_msgs/MandoObjectReport")
(setf (get genesis_msgs::MandoObjectReport :definition-)
      "Header header

int32[] index

int32[] alive_count_a 
int32[] object_identifier
int32[] object_age
int32[] object_valid			# valid(1) or invalid (0)
int32[] object_mode			# cutout (2), cutin (1), neither(0)
int32[] object_lane			# same lane (0), next left (1), far left (2), near right (3), far right (4), unknown (5)
float32[] angle_rate			# deg
float32[] angle_left			# deg
float32[] angle_right			# deg
int32[] cipv				# cipv = closest in path vehicle(1) or not (0)
int32[] brake_lights			# on (1), off or N/A (0)
int32[] blinker_info			# both(4), right(3), left(2), off(0)

int32[] alive_count_b
float32[] range				# m
float32[] range_rate			# m/s
int32[] motion_status			# stationary (4), stopped(3), oncoming (2), preceding(1), undecided(0)
float32[] accel_x			# m/s^2
float32[] position_y			# m





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



(provide :genesis_msgs/MandoObjectReport "9f997b467cbc16144eb262d8e6a2bc7c")


