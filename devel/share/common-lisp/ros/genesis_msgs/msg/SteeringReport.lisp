; Auto-generated. Do not edit!


(cl:in-package genesis_msgs-msg)


;//! \htmlinclude SteeringReport.msg.html

(cl:defclass <SteeringReport> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (steering_wheel_angle
    :reader steering_wheel_angle
    :initarg :steering_wheel_angle
    :type cl:float
    :initform 0.0)
   (steering_wheel_speed
    :reader steering_wheel_speed
    :initarg :steering_wheel_speed
    :type cl:float
    :initform 0.0)
   (steering_stat
    :reader steering_stat
    :initarg :steering_stat
    :type cl:fixnum
    :initform 0)
   (msg_count
    :reader msg_count
    :initarg :msg_count
    :type cl:fixnum
    :initform 0)
   (checksum
    :reader checksum
    :initarg :checksum
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SteeringReport (<SteeringReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SteeringReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SteeringReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name genesis_msgs-msg:<SteeringReport> is deprecated: use genesis_msgs-msg:SteeringReport instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SteeringReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader genesis_msgs-msg:header-val is deprecated.  Use genesis_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'steering_wheel_angle-val :lambda-list '(m))
(cl:defmethod steering_wheel_angle-val ((m <SteeringReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader genesis_msgs-msg:steering_wheel_angle-val is deprecated.  Use genesis_msgs-msg:steering_wheel_angle instead.")
  (steering_wheel_angle m))

(cl:ensure-generic-function 'steering_wheel_speed-val :lambda-list '(m))
(cl:defmethod steering_wheel_speed-val ((m <SteeringReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader genesis_msgs-msg:steering_wheel_speed-val is deprecated.  Use genesis_msgs-msg:steering_wheel_speed instead.")
  (steering_wheel_speed m))

(cl:ensure-generic-function 'steering_stat-val :lambda-list '(m))
(cl:defmethod steering_stat-val ((m <SteeringReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader genesis_msgs-msg:steering_stat-val is deprecated.  Use genesis_msgs-msg:steering_stat instead.")
  (steering_stat m))

(cl:ensure-generic-function 'msg_count-val :lambda-list '(m))
(cl:defmethod msg_count-val ((m <SteeringReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader genesis_msgs-msg:msg_count-val is deprecated.  Use genesis_msgs-msg:msg_count instead.")
  (msg_count m))

(cl:ensure-generic-function 'checksum-val :lambda-list '(m))
(cl:defmethod checksum-val ((m <SteeringReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader genesis_msgs-msg:checksum-val is deprecated.  Use genesis_msgs-msg:checksum instead.")
  (checksum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SteeringReport>) ostream)
  "Serializes a message object of type '<SteeringReport>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'steering_wheel_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'steering_wheel_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'steering_stat)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msg_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'checksum)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SteeringReport>) istream)
  "Deserializes a message object of type '<SteeringReport>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steering_wheel_angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steering_wheel_speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'steering_stat)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msg_count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'checksum)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SteeringReport>)))
  "Returns string type for a message object of type '<SteeringReport>"
  "genesis_msgs/SteeringReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SteeringReport)))
  "Returns string type for a message object of type 'SteeringReport"
  "genesis_msgs/SteeringReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SteeringReport>)))
  "Returns md5sum for a message object of type '<SteeringReport>"
  "4859bfda0d84232363f2c485e301bd32")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SteeringReport)))
  "Returns md5sum for a message object of type 'SteeringReport"
  "4859bfda0d84232363f2c485e301bd32")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SteeringReport>)))
  "Returns full string definition for message of type '<SteeringReport>"
  (cl:format cl:nil "Header header~%~%# Steering Wheel~%float32 steering_wheel_angle # deg~%float32 steering_wheel_speed # ??~%uint8 steering_stat~%uint8 msg_count~%uint8 checksum~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SteeringReport)))
  "Returns full string definition for message of type 'SteeringReport"
  (cl:format cl:nil "Header header~%~%# Steering Wheel~%float32 steering_wheel_angle # deg~%float32 steering_wheel_speed # ??~%uint8 steering_stat~%uint8 msg_count~%uint8 checksum~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SteeringReport>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SteeringReport>))
  "Converts a ROS message object to a list"
  (cl:list 'SteeringReport
    (cl:cons ':header (header msg))
    (cl:cons ':steering_wheel_angle (steering_wheel_angle msg))
    (cl:cons ':steering_wheel_speed (steering_wheel_speed msg))
    (cl:cons ':steering_stat (steering_stat msg))
    (cl:cons ':msg_count (msg_count msg))
    (cl:cons ':checksum (checksum msg))
))
