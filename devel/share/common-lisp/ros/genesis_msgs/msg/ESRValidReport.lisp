; Auto-generated. Do not edit!


(cl:in-package genesis_msgs-msg)


;//! \htmlinclude ESRValidReport.msg.html

(cl:defclass <ESRValidReport> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (stamp1
    :reader stamp1
    :initarg :stamp1
    :type cl:real
    :initform 0)
   (stamp2
    :reader stamp2
    :initarg :stamp2
    :type cl:real
    :initform 0)
   (lr_sn
    :reader lr_sn
    :initarg :lr_sn
    :type cl:integer
    :initform 0)
   (lr_range_rate
    :reader lr_range_rate
    :initarg :lr_range_rate
    :type cl:float
    :initform 0.0)
   (lr_range
    :reader lr_range
    :initarg :lr_range
    :type cl:float
    :initform 0.0)
   (lr_range_power
    :reader lr_range_power
    :initarg :lr_range_power
    :type cl:float
    :initform 0.0)
   (lr_range_angle
    :reader lr_range_angle
    :initarg :lr_range_angle
    :type cl:float
    :initform 0.0)
   (mr_sn
    :reader mr_sn
    :initarg :mr_sn
    :type cl:integer
    :initform 0)
   (mr_range_rate
    :reader mr_range_rate
    :initarg :mr_range_rate
    :type cl:float
    :initform 0.0)
   (mr_range
    :reader mr_range
    :initarg :mr_range
    :type cl:float
    :initform 0.0)
   (mr_range_power
    :reader mr_range_power
    :initarg :mr_range_power
    :type cl:float
    :initform 0.0)
   (mr_range_angle
    :reader mr_range_angle
    :initarg :mr_range_angle
    :type cl:float
    :initform 0.0))
)

(cl:defclass ESRValidReport (<ESRValidReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ESRValidReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ESRValidReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name genesis_msgs-msg:<ESRValidReport> is deprecated: use genesis_msgs-msg:ESRValidReport instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ESRValidReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader genesis_msgs-msg:header-val is deprecated.  Use genesis_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'stamp1-val :lambda-list '(m))
(cl:defmethod stamp1-val ((m <ESRValidReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader genesis_msgs-msg:stamp1-val is deprecated.  Use genesis_msgs-msg:stamp1 instead.")
  (stamp1 m))

(cl:ensure-generic-function 'stamp2-val :lambda-list '(m))
(cl:defmethod stamp2-val ((m <ESRValidReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader genesis_msgs-msg:stamp2-val is deprecated.  Use genesis_msgs-msg:stamp2 instead.")
  (stamp2 m))

(cl:ensure-generic-function 'lr_sn-val :lambda-list '(m))
(cl:defmethod lr_sn-val ((m <ESRValidReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader genesis_msgs-msg:lr_sn-val is deprecated.  Use genesis_msgs-msg:lr_sn instead.")
  (lr_sn m))

(cl:ensure-generic-function 'lr_range_rate-val :lambda-list '(m))
(cl:defmethod lr_range_rate-val ((m <ESRValidReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader genesis_msgs-msg:lr_range_rate-val is deprecated.  Use genesis_msgs-msg:lr_range_rate instead.")
  (lr_range_rate m))

(cl:ensure-generic-function 'lr_range-val :lambda-list '(m))
(cl:defmethod lr_range-val ((m <ESRValidReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader genesis_msgs-msg:lr_range-val is deprecated.  Use genesis_msgs-msg:lr_range instead.")
  (lr_range m))

(cl:ensure-generic-function 'lr_range_power-val :lambda-list '(m))
(cl:defmethod lr_range_power-val ((m <ESRValidReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader genesis_msgs-msg:lr_range_power-val is deprecated.  Use genesis_msgs-msg:lr_range_power instead.")
  (lr_range_power m))

(cl:ensure-generic-function 'lr_range_angle-val :lambda-list '(m))
(cl:defmethod lr_range_angle-val ((m <ESRValidReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader genesis_msgs-msg:lr_range_angle-val is deprecated.  Use genesis_msgs-msg:lr_range_angle instead.")
  (lr_range_angle m))

(cl:ensure-generic-function 'mr_sn-val :lambda-list '(m))
(cl:defmethod mr_sn-val ((m <ESRValidReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader genesis_msgs-msg:mr_sn-val is deprecated.  Use genesis_msgs-msg:mr_sn instead.")
  (mr_sn m))

(cl:ensure-generic-function 'mr_range_rate-val :lambda-list '(m))
(cl:defmethod mr_range_rate-val ((m <ESRValidReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader genesis_msgs-msg:mr_range_rate-val is deprecated.  Use genesis_msgs-msg:mr_range_rate instead.")
  (mr_range_rate m))

(cl:ensure-generic-function 'mr_range-val :lambda-list '(m))
(cl:defmethod mr_range-val ((m <ESRValidReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader genesis_msgs-msg:mr_range-val is deprecated.  Use genesis_msgs-msg:mr_range instead.")
  (mr_range m))

(cl:ensure-generic-function 'mr_range_power-val :lambda-list '(m))
(cl:defmethod mr_range_power-val ((m <ESRValidReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader genesis_msgs-msg:mr_range_power-val is deprecated.  Use genesis_msgs-msg:mr_range_power instead.")
  (mr_range_power m))

(cl:ensure-generic-function 'mr_range_angle-val :lambda-list '(m))
(cl:defmethod mr_range_angle-val ((m <ESRValidReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader genesis_msgs-msg:mr_range_angle-val is deprecated.  Use genesis_msgs-msg:mr_range_angle instead.")
  (mr_range_angle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ESRValidReport>) ostream)
  "Serializes a message object of type '<ESRValidReport>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'stamp1)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'stamp1) (cl:floor (cl:slot-value msg 'stamp1)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'stamp2)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'stamp2) (cl:floor (cl:slot-value msg 'stamp2)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let* ((signed (cl:slot-value msg 'lr_sn)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lr_range_rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lr_range))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lr_range_power))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lr_range_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'mr_sn)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'mr_range_rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'mr_range))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'mr_range_power))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'mr_range_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ESRValidReport>) istream)
  "Deserializes a message object of type '<ESRValidReport>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stamp1) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stamp2) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lr_sn) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lr_range_rate) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lr_range) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lr_range_power) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lr_range_angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mr_sn) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mr_range_rate) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mr_range) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mr_range_power) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mr_range_angle) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ESRValidReport>)))
  "Returns string type for a message object of type '<ESRValidReport>"
  "genesis_msgs/ESRValidReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ESRValidReport)))
  "Returns string type for a message object of type 'ESRValidReport"
  "genesis_msgs/ESRValidReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ESRValidReport>)))
  "Returns md5sum for a message object of type '<ESRValidReport>"
  "5bc0fc869f175fe0d4567a3b81e3a5e1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ESRValidReport)))
  "Returns md5sum for a message object of type 'ESRValidReport"
  "5bc0fc869f175fe0d4567a3b81e3a5e1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ESRValidReport>)))
  "Returns full string definition for message of type '<ESRValidReport>"
  (cl:format cl:nil "Header header~%~%time stamp1					# timestamp for the Valid1 part; same as header.stamp~%time stamp2					# timestamp for the Valid2 part~%~%# Long Range (Valid1)~%int32 lr_sn                                     # ?, probably a boolean for if the sensor works?~%float32 lr_range_rate                           # m/s~%float32 lr_range                                # m~%float32 lr_range_power                          # dB~%float32 lr_range_angle                          # deg~%~%# Medium Range (Valid2)~%int32 mr_sn                                     # ?, probably a boolean for if the sensor works?~%float32 mr_range_rate                           # m/s~%float32 mr_range                                # m~%float32 mr_range_power                          # dB~%float32 mr_range_angle                          # deg~%~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ESRValidReport)))
  "Returns full string definition for message of type 'ESRValidReport"
  (cl:format cl:nil "Header header~%~%time stamp1					# timestamp for the Valid1 part; same as header.stamp~%time stamp2					# timestamp for the Valid2 part~%~%# Long Range (Valid1)~%int32 lr_sn                                     # ?, probably a boolean for if the sensor works?~%float32 lr_range_rate                           # m/s~%float32 lr_range                                # m~%float32 lr_range_power                          # dB~%float32 lr_range_angle                          # deg~%~%# Medium Range (Valid2)~%int32 mr_sn                                     # ?, probably a boolean for if the sensor works?~%float32 mr_range_rate                           # m/s~%float32 mr_range                                # m~%float32 mr_range_power                          # dB~%float32 mr_range_angle                          # deg~%~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ESRValidReport>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ESRValidReport>))
  "Converts a ROS message object to a list"
  (cl:list 'ESRValidReport
    (cl:cons ':header (header msg))
    (cl:cons ':stamp1 (stamp1 msg))
    (cl:cons ':stamp2 (stamp2 msg))
    (cl:cons ':lr_sn (lr_sn msg))
    (cl:cons ':lr_range_rate (lr_range_rate msg))
    (cl:cons ':lr_range (lr_range msg))
    (cl:cons ':lr_range_power (lr_range_power msg))
    (cl:cons ':lr_range_angle (lr_range_angle msg))
    (cl:cons ':mr_sn (mr_sn msg))
    (cl:cons ':mr_range_rate (mr_range_rate msg))
    (cl:cons ':mr_range (mr_range msg))
    (cl:cons ':mr_range_power (mr_range_power msg))
    (cl:cons ':mr_range_angle (mr_range_angle msg))
))
