; Auto-generated. Do not edit!


(cl:in-package sin_commander_action_server-msg)


;//! \htmlinclude sinResult.msg.html

(cl:defclass <sinResult> (roslisp-msg-protocol:ros-message)
  ((is_done
    :reader is_done
    :initarg :is_done
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass sinResult (<sinResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <sinResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'sinResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sin_commander_action_server-msg:<sinResult> is deprecated: use sin_commander_action_server-msg:sinResult instead.")))

(cl:ensure-generic-function 'is_done-val :lambda-list '(m))
(cl:defmethod is_done-val ((m <sinResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sin_commander_action_server-msg:is_done-val is deprecated.  Use sin_commander_action_server-msg:is_done instead.")
  (is_done m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <sinResult>) ostream)
  "Serializes a message object of type '<sinResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_done) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <sinResult>) istream)
  "Deserializes a message object of type '<sinResult>"
    (cl:setf (cl:slot-value msg 'is_done) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<sinResult>)))
  "Returns string type for a message object of type '<sinResult>"
  "sin_commander_action_server/sinResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'sinResult)))
  "Returns string type for a message object of type 'sinResult"
  "sin_commander_action_server/sinResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<sinResult>)))
  "Returns md5sum for a message object of type '<sinResult>"
  "ccf1bf44aca57c0fac7595ea9e4b924c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'sinResult)))
  "Returns md5sum for a message object of type 'sinResult"
  "ccf1bf44aca57c0fac7595ea9e4b924c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<sinResult>)))
  "Returns full string definition for message of type '<sinResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result definition~%bool is_done~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'sinResult)))
  "Returns full string definition for message of type 'sinResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result definition~%bool is_done~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <sinResult>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <sinResult>))
  "Converts a ROS message object to a list"
  (cl:list 'sinResult
    (cl:cons ':is_done (is_done msg))
))