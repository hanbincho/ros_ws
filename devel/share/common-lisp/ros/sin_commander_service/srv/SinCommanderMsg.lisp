; Auto-generated. Do not edit!


(cl:in-package sin_commander_service-srv)


;//! \htmlinclude SinCommanderMsg-request.msg.html

(cl:defclass <SinCommanderMsg-request> (roslisp-msg-protocol:ros-message)
  ((amp
    :reader amp
    :initarg :amp
    :type cl:float
    :initform 0.0)
   (freq
    :reader freq
    :initarg :freq
    :type cl:float
    :initform 0.0))
)

(cl:defclass SinCommanderMsg-request (<SinCommanderMsg-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SinCommanderMsg-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SinCommanderMsg-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sin_commander_service-srv:<SinCommanderMsg-request> is deprecated: use sin_commander_service-srv:SinCommanderMsg-request instead.")))

(cl:ensure-generic-function 'amp-val :lambda-list '(m))
(cl:defmethod amp-val ((m <SinCommanderMsg-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sin_commander_service-srv:amp-val is deprecated.  Use sin_commander_service-srv:amp instead.")
  (amp m))

(cl:ensure-generic-function 'freq-val :lambda-list '(m))
(cl:defmethod freq-val ((m <SinCommanderMsg-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sin_commander_service-srv:freq-val is deprecated.  Use sin_commander_service-srv:freq instead.")
  (freq m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SinCommanderMsg-request>) ostream)
  "Serializes a message object of type '<SinCommanderMsg-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'amp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'freq))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SinCommanderMsg-request>) istream)
  "Deserializes a message object of type '<SinCommanderMsg-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'amp) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'freq) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SinCommanderMsg-request>)))
  "Returns string type for a service object of type '<SinCommanderMsg-request>"
  "sin_commander_service/SinCommanderMsgRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SinCommanderMsg-request)))
  "Returns string type for a service object of type 'SinCommanderMsg-request"
  "sin_commander_service/SinCommanderMsgRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SinCommanderMsg-request>)))
  "Returns md5sum for a message object of type '<SinCommanderMsg-request>"
  "1934939e811673ac6de96fd9859814cf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SinCommanderMsg-request)))
  "Returns md5sum for a message object of type 'SinCommanderMsg-request"
  "1934939e811673ac6de96fd9859814cf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SinCommanderMsg-request>)))
  "Returns full string definition for message of type '<SinCommanderMsg-request>"
  (cl:format cl:nil "float32 amp~%float32 freq~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SinCommanderMsg-request)))
  "Returns full string definition for message of type 'SinCommanderMsg-request"
  (cl:format cl:nil "float32 amp~%float32 freq~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SinCommanderMsg-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SinCommanderMsg-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SinCommanderMsg-request
    (cl:cons ':amp (amp msg))
    (cl:cons ':freq (freq msg))
))
;//! \htmlinclude SinCommanderMsg-response.msg.html

(cl:defclass <SinCommanderMsg-response> (roslisp-msg-protocol:ros-message)
  ((sin_velocity
    :reader sin_velocity
    :initarg :sin_velocity
    :type cl:float
    :initform 0.0))
)

(cl:defclass SinCommanderMsg-response (<SinCommanderMsg-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SinCommanderMsg-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SinCommanderMsg-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sin_commander_service-srv:<SinCommanderMsg-response> is deprecated: use sin_commander_service-srv:SinCommanderMsg-response instead.")))

(cl:ensure-generic-function 'sin_velocity-val :lambda-list '(m))
(cl:defmethod sin_velocity-val ((m <SinCommanderMsg-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sin_commander_service-srv:sin_velocity-val is deprecated.  Use sin_commander_service-srv:sin_velocity instead.")
  (sin_velocity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SinCommanderMsg-response>) ostream)
  "Serializes a message object of type '<SinCommanderMsg-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'sin_velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SinCommanderMsg-response>) istream)
  "Deserializes a message object of type '<SinCommanderMsg-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sin_velocity) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SinCommanderMsg-response>)))
  "Returns string type for a service object of type '<SinCommanderMsg-response>"
  "sin_commander_service/SinCommanderMsgResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SinCommanderMsg-response)))
  "Returns string type for a service object of type 'SinCommanderMsg-response"
  "sin_commander_service/SinCommanderMsgResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SinCommanderMsg-response>)))
  "Returns md5sum for a message object of type '<SinCommanderMsg-response>"
  "1934939e811673ac6de96fd9859814cf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SinCommanderMsg-response)))
  "Returns md5sum for a message object of type 'SinCommanderMsg-response"
  "1934939e811673ac6de96fd9859814cf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SinCommanderMsg-response>)))
  "Returns full string definition for message of type '<SinCommanderMsg-response>"
  (cl:format cl:nil "float32 sin_velocity~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SinCommanderMsg-response)))
  "Returns full string definition for message of type 'SinCommanderMsg-response"
  (cl:format cl:nil "float32 sin_velocity~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SinCommanderMsg-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SinCommanderMsg-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SinCommanderMsg-response
    (cl:cons ':sin_velocity (sin_velocity msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SinCommanderMsg)))
  'SinCommanderMsg-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SinCommanderMsg)))
  'SinCommanderMsg-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SinCommanderMsg)))
  "Returns string type for a service object of type '<SinCommanderMsg>"
  "sin_commander_service/SinCommanderMsg")