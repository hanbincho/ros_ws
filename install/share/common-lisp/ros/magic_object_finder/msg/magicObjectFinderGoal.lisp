; Auto-generated. Do not edit!


(cl:in-package magic_object_finder-msg)


;//! \htmlinclude magicObjectFinderGoal.msg.html

(cl:defclass <magicObjectFinderGoal> (roslisp-msg-protocol:ros-message)
  ((object_name
    :reader object_name
    :initarg :object_name
    :type cl:string
    :initform ""))
)

(cl:defclass magicObjectFinderGoal (<magicObjectFinderGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <magicObjectFinderGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'magicObjectFinderGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name magic_object_finder-msg:<magicObjectFinderGoal> is deprecated: use magic_object_finder-msg:magicObjectFinderGoal instead.")))

(cl:ensure-generic-function 'object_name-val :lambda-list '(m))
(cl:defmethod object_name-val ((m <magicObjectFinderGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader magic_object_finder-msg:object_name-val is deprecated.  Use magic_object_finder-msg:object_name instead.")
  (object_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <magicObjectFinderGoal>) ostream)
  "Serializes a message object of type '<magicObjectFinderGoal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'object_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'object_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <magicObjectFinderGoal>) istream)
  "Deserializes a message object of type '<magicObjectFinderGoal>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'object_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'object_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<magicObjectFinderGoal>)))
  "Returns string type for a message object of type '<magicObjectFinderGoal>"
  "magic_object_finder/magicObjectFinderGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'magicObjectFinderGoal)))
  "Returns string type for a message object of type 'magicObjectFinderGoal"
  "magic_object_finder/magicObjectFinderGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<magicObjectFinderGoal>)))
  "Returns md5sum for a message object of type '<magicObjectFinderGoal>"
  "2f12226348d323c2e5b2031b3da53f1b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'magicObjectFinderGoal)))
  "Returns md5sum for a message object of type 'magicObjectFinderGoal"
  "2f12226348d323c2e5b2031b3da53f1b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<magicObjectFinderGoal>)))
  "Returns full string definition for message of type '<magicObjectFinderGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#objectFinder.action~%#goal:~%#get object ID codes from <object_manipulation_properties/object_ID_codes.h>~%#goal field to fill in: name of object of interest~%string object_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'magicObjectFinderGoal)))
  "Returns full string definition for message of type 'magicObjectFinderGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#objectFinder.action~%#goal:~%#get object ID codes from <object_manipulation_properties/object_ID_codes.h>~%#goal field to fill in: name of object of interest~%string object_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <magicObjectFinderGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'object_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <magicObjectFinderGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'magicObjectFinderGoal
    (cl:cons ':object_name (object_name msg))
))
