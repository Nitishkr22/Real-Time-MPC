; Auto-generated. Do not edit!


(cl:in-package genesis_msgs-msg)


;//! \htmlinclude LaneReport.msg.html

(cl:defclass <LaneReport> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (stampA
    :reader stampA
    :initarg :stampA
    :type cl:real
    :initform 0)
   (stampB
    :reader stampB
    :initarg :stampB
    :type cl:real
    :initform 0)
   (a0
    :reader a0
    :initarg :a0
    :type cl:float
    :initform 0.0)
   (a1
    :reader a1
    :initarg :a1
    :type cl:float
    :initform 0.0)
   (a2
    :reader a2
    :initarg :a2
    :type cl:float
    :initform 0.0)
   (a3
    :reader a3
    :initarg :a3
    :type cl:float
    :initform 0.0)
   (lane_mark_type
    :reader lane_mark_type
    :initarg :lane_mark_type
    :type cl:integer
    :initform 0)
   (lane_mark_quality
    :reader lane_mark_quality
    :initarg :lane_mark_quality
    :type cl:integer
    :initform 0))
)

(cl:defclass LaneReport (<LaneReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name genesis_msgs-msg:<LaneReport> is deprecated: use genesis_msgs-msg:LaneReport instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LaneReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader genesis_msgs-msg:header-val is deprecated.  Use genesis_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'stampA-val :lambda-list '(m))
(cl:defmethod stampA-val ((m <LaneReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader genesis_msgs-msg:stampA-val is deprecated.  Use genesis_msgs-msg:stampA instead.")
  (stampA m))

(cl:ensure-generic-function 'stampB-val :lambda-list '(m))
(cl:defmethod stampB-val ((m <LaneReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader genesis_msgs-msg:stampB-val is deprecated.  Use genesis_msgs-msg:stampB instead.")
  (stampB m))

(cl:ensure-generic-function 'a0-val :lambda-list '(m))
(cl:defmethod a0-val ((m <LaneReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader genesis_msgs-msg:a0-val is deprecated.  Use genesis_msgs-msg:a0 instead.")
  (a0 m))

(cl:ensure-generic-function 'a1-val :lambda-list '(m))
(cl:defmethod a1-val ((m <LaneReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader genesis_msgs-msg:a1-val is deprecated.  Use genesis_msgs-msg:a1 instead.")
  (a1 m))

(cl:ensure-generic-function 'a2-val :lambda-list '(m))
(cl:defmethod a2-val ((m <LaneReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader genesis_msgs-msg:a2-val is deprecated.  Use genesis_msgs-msg:a2 instead.")
  (a2 m))

(cl:ensure-generic-function 'a3-val :lambda-list '(m))
(cl:defmethod a3-val ((m <LaneReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader genesis_msgs-msg:a3-val is deprecated.  Use genesis_msgs-msg:a3 instead.")
  (a3 m))

(cl:ensure-generic-function 'lane_mark_type-val :lambda-list '(m))
(cl:defmethod lane_mark_type-val ((m <LaneReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader genesis_msgs-msg:lane_mark_type-val is deprecated.  Use genesis_msgs-msg:lane_mark_type instead.")
  (lane_mark_type m))

(cl:ensure-generic-function 'lane_mark_quality-val :lambda-list '(m))
(cl:defmethod lane_mark_quality-val ((m <LaneReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader genesis_msgs-msg:lane_mark_quality-val is deprecated.  Use genesis_msgs-msg:lane_mark_quality instead.")
  (lane_mark_quality m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneReport>) ostream)
  "Serializes a message object of type '<LaneReport>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'stampA)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'stampA) (cl:floor (cl:slot-value msg 'stampA)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'stampB)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'stampB) (cl:floor (cl:slot-value msg 'stampB)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'a0))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'a1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'a2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'a3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'lane_mark_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'lane_mark_quality)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneReport>) istream)
  "Deserializes a message object of type '<LaneReport>"
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
      (cl:setf (cl:slot-value msg 'stampA) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stampB) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a0) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a3) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lane_mark_type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lane_mark_quality) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneReport>)))
  "Returns string type for a message object of type '<LaneReport>"
  "genesis_msgs/LaneReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneReport)))
  "Returns string type for a message object of type 'LaneReport"
  "genesis_msgs/LaneReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneReport>)))
  "Returns md5sum for a message object of type '<LaneReport>"
  "38b4f1a74aa95aed2e054915f544383c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneReport)))
  "Returns md5sum for a message object of type 'LaneReport"
  "38b4f1a74aa95aed2e054915f544383c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneReport>)))
  "Returns full string definition for message of type '<LaneReport>"
  (cl:format cl:nil "Header header~%~%time stampA					# timestamp for the \"A\"-part of the message; same as header.stamp~%time stampB					# timestamp for the \"B\"-part of the message~%~%# Lane polynomial in vehicle frame is y = a0 + a1 x + a2 x^2 + a3 x^3~%float32 a0~%float32 a1~%float32 a2~%float32 a3~%~%# Mark types: 6 \"Invalid\" 5 \"Botts'Dots\" 4 \"DoubleLaneMark\" 3 \"RoadEdge\" 2 \"Undecided\" 1 \"Solid\" 0 \"Dashed\" ;~%int32 lane_mark_type~%# Quality types: 0, 1 \"Low Quality\" 2, 3 \"High Quality\"~%int32 lane_mark_quality~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneReport)))
  "Returns full string definition for message of type 'LaneReport"
  (cl:format cl:nil "Header header~%~%time stampA					# timestamp for the \"A\"-part of the message; same as header.stamp~%time stampB					# timestamp for the \"B\"-part of the message~%~%# Lane polynomial in vehicle frame is y = a0 + a1 x + a2 x^2 + a3 x^3~%float32 a0~%float32 a1~%float32 a2~%float32 a3~%~%# Mark types: 6 \"Invalid\" 5 \"Botts'Dots\" 4 \"DoubleLaneMark\" 3 \"RoadEdge\" 2 \"Undecided\" 1 \"Solid\" 0 \"Dashed\" ;~%int32 lane_mark_type~%# Quality types: 0, 1 \"Low Quality\" 2, 3 \"High Quality\"~%int32 lane_mark_quality~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneReport>))
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
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneReport>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneReport
    (cl:cons ':header (header msg))
    (cl:cons ':stampA (stampA msg))
    (cl:cons ':stampB (stampB msg))
    (cl:cons ':a0 (a0 msg))
    (cl:cons ':a1 (a1 msg))
    (cl:cons ':a2 (a2 msg))
    (cl:cons ':a3 (a3 msg))
    (cl:cons ':lane_mark_type (lane_mark_type msg))
    (cl:cons ':lane_mark_quality (lane_mark_quality msg))
))
