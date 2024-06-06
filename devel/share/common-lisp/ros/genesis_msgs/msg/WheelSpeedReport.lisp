; Auto-generated. Do not edit!


(cl:in-package genesis_msgs-msg)


;//! \htmlinclude WheelSpeedReport.msg.html

(cl:defclass <WheelSpeedReport> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (wheel_speed_fl
    :reader wheel_speed_fl
    :initarg :wheel_speed_fl
    :type cl:float
    :initform 0.0)
   (wheel_speed_fr
    :reader wheel_speed_fr
    :initarg :wheel_speed_fr
    :type cl:float
    :initform 0.0)
   (wheel_speed_rl
    :reader wheel_speed_rl
    :initarg :wheel_speed_rl
    :type cl:float
    :initform 0.0)
   (wheel_speed_rr
    :reader wheel_speed_rr
    :initarg :wheel_speed_rr
    :type cl:float
    :initform 0.0))
)

(cl:defclass WheelSpeedReport (<WheelSpeedReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WheelSpeedReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WheelSpeedReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name genesis_msgs-msg:<WheelSpeedReport> is deprecated: use genesis_msgs-msg:WheelSpeedReport instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <WheelSpeedReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader genesis_msgs-msg:header-val is deprecated.  Use genesis_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'wheel_speed_fl-val :lambda-list '(m))
(cl:defmethod wheel_speed_fl-val ((m <WheelSpeedReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader genesis_msgs-msg:wheel_speed_fl-val is deprecated.  Use genesis_msgs-msg:wheel_speed_fl instead.")
  (wheel_speed_fl m))

(cl:ensure-generic-function 'wheel_speed_fr-val :lambda-list '(m))
(cl:defmethod wheel_speed_fr-val ((m <WheelSpeedReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader genesis_msgs-msg:wheel_speed_fr-val is deprecated.  Use genesis_msgs-msg:wheel_speed_fr instead.")
  (wheel_speed_fr m))

(cl:ensure-generic-function 'wheel_speed_rl-val :lambda-list '(m))
(cl:defmethod wheel_speed_rl-val ((m <WheelSpeedReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader genesis_msgs-msg:wheel_speed_rl-val is deprecated.  Use genesis_msgs-msg:wheel_speed_rl instead.")
  (wheel_speed_rl m))

(cl:ensure-generic-function 'wheel_speed_rr-val :lambda-list '(m))
(cl:defmethod wheel_speed_rr-val ((m <WheelSpeedReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader genesis_msgs-msg:wheel_speed_rr-val is deprecated.  Use genesis_msgs-msg:wheel_speed_rr instead.")
  (wheel_speed_rr m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WheelSpeedReport>) ostream)
  "Serializes a message object of type '<WheelSpeedReport>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'wheel_speed_fl))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'wheel_speed_fr))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'wheel_speed_rl))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'wheel_speed_rr))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WheelSpeedReport>) istream)
  "Deserializes a message object of type '<WheelSpeedReport>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wheel_speed_fl) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wheel_speed_fr) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wheel_speed_rl) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wheel_speed_rr) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WheelSpeedReport>)))
  "Returns string type for a message object of type '<WheelSpeedReport>"
  "genesis_msgs/WheelSpeedReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WheelSpeedReport)))
  "Returns string type for a message object of type 'WheelSpeedReport"
  "genesis_msgs/WheelSpeedReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WheelSpeedReport>)))
  "Returns md5sum for a message object of type '<WheelSpeedReport>"
  "a53e80a356e4025a8aac3ddad6c964fd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WheelSpeedReport)))
  "Returns md5sum for a message object of type 'WheelSpeedReport"
  "a53e80a356e4025a8aac3ddad6c964fd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WheelSpeedReport>)))
  "Returns full string definition for message of type '<WheelSpeedReport>"
  (cl:format cl:nil "Header header~%~%# Wheel Speeds~%float32 wheel_speed_fl # kph~%float32 wheel_speed_fr # kph~%float32 wheel_speed_rl # kph~%float32 wheel_speed_rr # kph~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WheelSpeedReport)))
  "Returns full string definition for message of type 'WheelSpeedReport"
  (cl:format cl:nil "Header header~%~%# Wheel Speeds~%float32 wheel_speed_fl # kph~%float32 wheel_speed_fr # kph~%float32 wheel_speed_rl # kph~%float32 wheel_speed_rr # kph~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WheelSpeedReport>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WheelSpeedReport>))
  "Converts a ROS message object to a list"
  (cl:list 'WheelSpeedReport
    (cl:cons ':header (header msg))
    (cl:cons ':wheel_speed_fl (wheel_speed_fl msg))
    (cl:cons ':wheel_speed_fr (wheel_speed_fr msg))
    (cl:cons ':wheel_speed_rl (wheel_speed_rl msg))
    (cl:cons ':wheel_speed_rr (wheel_speed_rr msg))
))
