;; Auto-generated. Do not edit!


(when (boundp 'genesis_path_follower::mpc_path)
  (if (not (find-package "GENESIS_PATH_FOLLOWER"))
    (make-package "GENESIS_PATH_FOLLOWER"))
  (shadow 'mpc_path (find-package "GENESIS_PATH_FOLLOWER")))
(unless (find-package "GENESIS_PATH_FOLLOWER::MPC_PATH")
  (make-package "GENESIS_PATH_FOLLOWER::MPC_PATH"))

(in-package "ROS")
;;//! \htmlinclude mpc_path.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass genesis_path_follower::mpc_path
  :super ros::object
  :slots (_header _solve_status _solve_time _xs _ys _vs _psis _xr _yr _vr _psir _df _acc _ss _eys _epsis _crf _vrf ))

(defmethod genesis_path_follower::mpc_path
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:solve_status __solve_status) "")
    ((:solve_time __solve_time) 0.0)
    ((:xs __xs) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:ys __ys) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:vs __vs) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:psis __psis) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:xr __xr) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:yr __yr) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:vr __vr) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:psir __psir) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:df __df) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:acc __acc) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:ss __ss) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:eys __eys) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:epsis __epsis) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:crf __crf) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:vrf __vrf) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _solve_status (string __solve_status))
   (setq _solve_time (float __solve_time))
   (setq _xs __xs)
   (setq _ys __ys)
   (setq _vs __vs)
   (setq _psis __psis)
   (setq _xr __xr)
   (setq _yr __yr)
   (setq _vr __vr)
   (setq _psir __psir)
   (setq _df __df)
   (setq _acc __acc)
   (setq _ss __ss)
   (setq _eys __eys)
   (setq _epsis __epsis)
   (setq _crf __crf)
   (setq _vrf (float __vrf))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:solve_status
   (&optional __solve_status)
   (if __solve_status (setq _solve_status __solve_status)) _solve_status)
  (:solve_time
   (&optional __solve_time)
   (if __solve_time (setq _solve_time __solve_time)) _solve_time)
  (:xs
   (&optional __xs)
   (if __xs (setq _xs __xs)) _xs)
  (:ys
   (&optional __ys)
   (if __ys (setq _ys __ys)) _ys)
  (:vs
   (&optional __vs)
   (if __vs (setq _vs __vs)) _vs)
  (:psis
   (&optional __psis)
   (if __psis (setq _psis __psis)) _psis)
  (:xr
   (&optional __xr)
   (if __xr (setq _xr __xr)) _xr)
  (:yr
   (&optional __yr)
   (if __yr (setq _yr __yr)) _yr)
  (:vr
   (&optional __vr)
   (if __vr (setq _vr __vr)) _vr)
  (:psir
   (&optional __psir)
   (if __psir (setq _psir __psir)) _psir)
  (:df
   (&optional __df)
   (if __df (setq _df __df)) _df)
  (:acc
   (&optional __acc)
   (if __acc (setq _acc __acc)) _acc)
  (:ss
   (&optional __ss)
   (if __ss (setq _ss __ss)) _ss)
  (:eys
   (&optional __eys)
   (if __eys (setq _eys __eys)) _eys)
  (:epsis
   (&optional __epsis)
   (if __epsis (setq _epsis __epsis)) _epsis)
  (:crf
   (&optional __crf)
   (if __crf (setq _crf __crf)) _crf)
  (:vrf
   (&optional __vrf)
   (if __vrf (setq _vrf __vrf)) _vrf)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _solve_status
    4 (length _solve_status)
    ;; float64 _solve_time
    8
    ;; float64[] _xs
    (* 8    (length _xs)) 4
    ;; float64[] _ys
    (* 8    (length _ys)) 4
    ;; float64[] _vs
    (* 8    (length _vs)) 4
    ;; float64[] _psis
    (* 8    (length _psis)) 4
    ;; float64[] _xr
    (* 8    (length _xr)) 4
    ;; float64[] _yr
    (* 8    (length _yr)) 4
    ;; float64[] _vr
    (* 8    (length _vr)) 4
    ;; float64[] _psir
    (* 8    (length _psir)) 4
    ;; float64[] _df
    (* 8    (length _df)) 4
    ;; float64[] _acc
    (* 8    (length _acc)) 4
    ;; float64[] _ss
    (* 8    (length _ss)) 4
    ;; float64[] _eys
    (* 8    (length _eys)) 4
    ;; float64[] _epsis
    (* 8    (length _epsis)) 4
    ;; float64[] _crf
    (* 8    (length _crf)) 4
    ;; float64 _vrf
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _solve_status
       (write-long (length _solve_status) s) (princ _solve_status s)
     ;; float64 _solve_time
       (sys::poke _solve_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64[] _xs
     (write-long (length _xs) s)
     (dotimes (i (length _xs))
       (sys::poke (elt _xs i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _ys
     (write-long (length _ys) s)
     (dotimes (i (length _ys))
       (sys::poke (elt _ys i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _vs
     (write-long (length _vs) s)
     (dotimes (i (length _vs))
       (sys::poke (elt _vs i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _psis
     (write-long (length _psis) s)
     (dotimes (i (length _psis))
       (sys::poke (elt _psis i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _xr
     (write-long (length _xr) s)
     (dotimes (i (length _xr))
       (sys::poke (elt _xr i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _yr
     (write-long (length _yr) s)
     (dotimes (i (length _yr))
       (sys::poke (elt _yr i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _vr
     (write-long (length _vr) s)
     (dotimes (i (length _vr))
       (sys::poke (elt _vr i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _psir
     (write-long (length _psir) s)
     (dotimes (i (length _psir))
       (sys::poke (elt _psir i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _df
     (write-long (length _df) s)
     (dotimes (i (length _df))
       (sys::poke (elt _df i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _acc
     (write-long (length _acc) s)
     (dotimes (i (length _acc))
       (sys::poke (elt _acc i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _ss
     (write-long (length _ss) s)
     (dotimes (i (length _ss))
       (sys::poke (elt _ss i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _eys
     (write-long (length _eys) s)
     (dotimes (i (length _eys))
       (sys::poke (elt _eys i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _epsis
     (write-long (length _epsis) s)
     (dotimes (i (length _epsis))
       (sys::poke (elt _epsis i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _crf
     (write-long (length _crf) s)
     (dotimes (i (length _crf))
       (sys::poke (elt _crf i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64 _vrf
       (sys::poke _vrf (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _solve_status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _solve_status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _solve_time
     (setq _solve_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64[] _xs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _xs (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _xs i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _ys
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ys (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _ys i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _vs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _vs (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _vs i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _psis
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _psis (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _psis i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _xr
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _xr (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _xr i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _yr
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _yr (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _yr i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _vr
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _vr (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _vr i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _psir
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _psir (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _psir i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _df
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _df (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _df i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _acc
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _acc (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _acc i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _ss
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ss (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _ss i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _eys
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _eys (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _eys i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _epsis
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _epsis (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _epsis i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _crf
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _crf (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _crf i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64 _vrf
     (setq _vrf (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get genesis_path_follower::mpc_path :md5sum-) "d5cdd34d6da3208a35233bde8022e4d2")
(setf (get genesis_path_follower::mpc_path :datatype-) "genesis_path_follower/mpc_path")
(setf (get genesis_path_follower::mpc_path :definition-)
      "Header header
string solve_status # e.g. optimal, infeasible, etc.
float64 solve_time  # time used to solve the optimization problem in seconds
float64[] xs        # MPC solution for x coordinate (m)
float64[] ys        # MPC solution for y coordinate (m)
float64[] vs        # MPC solution for speed (m/s)
float64[] psis      # MPC solution for yaw angle (rad)
float64[] xr        # MPC reference for \"\"
float64[] yr        # MPC reference for \"\"
float64[] vr        # MPC reference for \"\"
float64[] psir      # MPC reference for \"\"
float64[] df        # MPC solution for front steering angle (rad)
float64[] acc       # MPC solution for acceleration (m/s^2)

float64[] ss        # MPC solution for Frenet s (m)
float64[] eys       # MPC solution for Frenet ey (m)
float64[] epsis     # MPC solution for Frenet epsi (m)

float64[] crf       # curvature reference profile for Frenet (rad/m)
float64 vrf         # curvature-aware velocity reference for Frenet (m/s)

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



(provide :genesis_path_follower/mpc_path "d5cdd34d6da3208a35233bde8022e4d2")


