; Auto-generated. Do not edit!


(cl:in-package genesis_msgs-msg)


;//! \htmlinclude VehicleImuReport.msg.html

(cl:defclass <VehicleImuReport> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (yaw_rate
    :reader yaw_rate
    :initarg :yaw_rate
    :type cl:float
    :initform 0.0)
   (lat_accel
    :reader lat_accel
    :initarg :lat_accel
    :type cl:float
    :initform 0.0)
   (long_accel
    :reader long_accel
    :initarg :long_accel
    :type cl:float
    :initform 0.0))
)

(cl:defclass VehicleImuReport (<VehicleImuReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleImuReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleImuReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name genesis_msgs-msg:<VehicleImuReport> is deprecated: use genesis_msgs-msg:VehicleImuReport instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <VehicleImuReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader genesis_msgs-msg:header-val is deprecated.  Use genesis_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'yaw_rate-val :lambda-list '(m))
(cl:defmethod yaw_rate-val ((m <VehicleImuReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader genesis_msgs-msg:yaw_rate-val is deprecated.  Use genesis_msgs-msg:yaw_rate instead.")
  (yaw_rate m))

(cl:ensure-generic-function 'lat_accel-val :lambda-list '(m))
(cl:defmethod lat_accel-val ((m <VehicleImuReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader genesis_msgs-msg:lat_accel-val is deprecated.  Use genesis_msgs-msg:lat_accel instead.")
  (lat_accel m))

(cl:ensure-generic-function 'long_accel-val :lambda-list '(m))
(cl:defmethod long_accel-val ((m <VehicleImuReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader genesis_msgs-msg:long_accel-val is deprecated.  Use genesis_msgs-msg:long_accel instead.")
  (long_accel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleImuReport>) ostream)
  "Serializes a message object of type '<VehicleImuReport>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw_rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lat_accel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'long_accel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleImuReport>) istream)
  "Deserializes a message object of type '<VehicleImuReport>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw_rate) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lat_accel) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'long_accel) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleImuReport>)))
  "Returns string type for a message object of type '<VehicleImuReport>"
  "genesis_msgs/VehicleImuReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleImuReport)))
  "Returns string type for a message object of type 'VehicleImuReport"
  "genesis_msgs/VehicleImuReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleImuReport>)))
  "Returns md5sum for a message object of type '<VehicleImuReport>"
  "6e80ee09b6b860b9df67618823009a87")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleImuReport)))
  "Returns md5sum for a message object of type 'VehicleImuReport"
  "6e80ee09b6b860b9df67618823009a87")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleImuReport>)))
  "Returns full string definition for message of type '<VehicleImuReport>"
  (cl:format cl:nil "Header header~%~%float32 yaw_rate~%float32 lat_accel~%float32 long_accel~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleImuReport)))
  "Returns full string definition for message of type 'VehicleImuReport"
  (cl:format cl:nil "Header header~%~%float32 yaw_rate~%float32 lat_accel~%float32 long_accel~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleImuReport>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleImuReport>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleImuReport
    (cl:cons ':header (header msg))
    (cl:cons ':yaw_rate (yaw_rate msg))
    (cl:cons ':lat_accel (lat_accel msg))
    (cl:cons ':long_accel (long_accel msg))
))
