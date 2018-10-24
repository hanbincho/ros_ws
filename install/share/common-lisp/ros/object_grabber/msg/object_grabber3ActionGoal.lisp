; Auto-generated. Do not edit!


(cl:in-package object_grabber-msg)


;//! \htmlinclude object_grabber3ActionGoal.msg.html

(cl:defclass <object_grabber3ActionGoal> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (goal_id
    :reader goal_id
    :initarg :goal_id
    :type actionlib_msgs-msg:GoalID
    :initform (cl:make-instance 'actionlib_msgs-msg:GoalID))
   (goal
    :reader goal
    :initarg :goal
    :type object_grabber-msg:object_grabber3Goal
    :initform (cl:make-instance 'object_grabber-msg:object_grabber3Goal)))
)

(cl:defclass object_grabber3ActionGoal (<object_grabber3ActionGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <object_grabber3ActionGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'object_grabber3ActionGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name object_grabber-msg:<object_grabber3ActionGoal> is deprecated: use object_grabber-msg:object_grabber3ActionGoal instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <object_grabber3ActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_grabber-msg:header-val is deprecated.  Use object_grabber-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'goal_id-val :lambda-list '(m))
(cl:defmethod goal_id-val ((m <object_grabber3ActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_grabber-msg:goal_id-val is deprecated.  Use object_grabber-msg:goal_id instead.")
  (goal_id m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <object_grabber3ActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_grabber-msg:goal-val is deprecated.  Use object_grabber-msg:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <object_grabber3ActionGoal>) ostream)
  "Serializes a message object of type '<object_grabber3ActionGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <object_grabber3ActionGoal>) istream)
  "Deserializes a message object of type '<object_grabber3ActionGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<object_grabber3ActionGoal>)))
  "Returns string type for a message object of type '<object_grabber3ActionGoal>"
  "object_grabber/object_grabber3ActionGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'object_grabber3ActionGoal)))
  "Returns string type for a message object of type 'object_grabber3ActionGoal"
  "object_grabber/object_grabber3ActionGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<object_grabber3ActionGoal>)))
  "Returns md5sum for a message object of type '<object_grabber3ActionGoal>"
  "f0e78019e4b96145562e653863369f3e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'object_grabber3ActionGoal)))
  "Returns md5sum for a message object of type 'object_grabber3ActionGoal"
  "f0e78019e4b96145562e653863369f3e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<object_grabber3ActionGoal>)))
  "Returns full string definition for message of type '<object_grabber3ActionGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%object_grabber3Goal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: object_grabber/object_grabber3Goal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#object_grabber action message~%#pass in an object code and the object's frame (w/rt named frame_id)~%#object_grabber will plan approach, grasp and lift of object~%#returns codes regarding outcome~%~%#action codes:~%int32 TEST_CODE = 0   #a simple \"ping\" to action server~%int32 MOVE_TO_WAITING_POSE = 1 #move to a pose, defined on param server, that is convenient~%                               #e.g., prepared to approach a surface, but out of way of sensors~%int32 PLAN_MOVE_TO_GRASP_POSE  =2   #expects parameters of current_object_pose, object_ID, grasp_option, approach_option~%                               #must send separate \"grasp\" command to gripper~%int32 PLAN_MOVE_FINE_TO_GRASP_POSE  =3   #as above, but finer/slower approach motion~%int32 PLAN_MOVE_OBJECT_JSPACE =4    #move a grasped object to a destination pose using simple, joint-space move~%                               #expects params: des_object_pose, object_ID, grasp_option (need to know how object is grasped)~%int32 PLAN_MOVE_OBJECT_CSPACE = 5   #move a grasped object with Cartesian motion to a desired object pose~%                               #params:  des_object_pose, object_ID, grasp_option~%int32 PLAN_MOVE_FINE_OBJECT_CSPACE = 6 #as above, but w/ finer, slower motion~%~%int32 PLAN_WITHDRAW_FROM_OBJECT = 7 #with object grasp released, perform departure from object using specified depart strategy~%                               #params: object_ID, grasp_option, depart_option~%int32 PLAN_WITHDRAW_FINE_FROM_OBJECT = 8 #as above, but slower/more precise motion~%~%int32 PLAN_OBJECT_GRASP = 9  #combine multiple elements above to acquire an object~%~%int32 GRAB_OBJECT = 101 #plan and attempt to execute object acquisition, including grasp and lift~%int32 DROPOFF_OBJECT = 102 #plan and attempt to execute object placement and arm withdrawal~%~%int32 SET_SPEED_FACTOR = 10    #use arg speed_factor to change time scale of trajectory plan; larger than 1.0--> slower~%~%#manipulation strategy options:~%int32 DEFAULT_GRASP_STRATEGY = 0~%#has corresponding default approach and depart strategies~%~%int32 EXECUTE_PLANNED_MOVE = 100 #accept arm-motion plan and enable its execution~%~%#generalized gripper commands:~%int32 GRIPPER_PREPARE_GRASP_OBJECT = 20 #may require gripper to prepare for grasp approach, e.g. open fingers~%int32 GRIPPER_GRASP_OBJECT = 21        #command to perform appropriate action to grasp object, ~%                               #assumes gripper is in appropriate pose, prepared to grasp object~%                               #client does not need to know what type of gripper is used~%int32 GRIPPER_RELEASE_OBJECT = 22      #command to gripper to release a grasped object~%                               #params: object ID and grasp option used; ~%int32 GRIPPER_IS_OBJECT_GRASPED = 23   #a query; may require object_ID, grasp option used, and/or corresponding grasp test parameters; ~%                               #should return true/false~%~%#goal:~%int32 action_code~%int32 object_id~%int32 grasp_option~%int32 approach_strategy~%int32 lift_object_strategy~%int32 dropoff_strategy~%int32 dropoff_withdraw_strategy~%geometry_msgs/PoseStamped object_frame  #should be w/rt system_ref_frame, or have tf to this frame available~%float64 speed_factor #default to 1.0~%float64[] gripper_test_params~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'object_grabber3ActionGoal)))
  "Returns full string definition for message of type 'object_grabber3ActionGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%object_grabber3Goal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: object_grabber/object_grabber3Goal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#object_grabber action message~%#pass in an object code and the object's frame (w/rt named frame_id)~%#object_grabber will plan approach, grasp and lift of object~%#returns codes regarding outcome~%~%#action codes:~%int32 TEST_CODE = 0   #a simple \"ping\" to action server~%int32 MOVE_TO_WAITING_POSE = 1 #move to a pose, defined on param server, that is convenient~%                               #e.g., prepared to approach a surface, but out of way of sensors~%int32 PLAN_MOVE_TO_GRASP_POSE  =2   #expects parameters of current_object_pose, object_ID, grasp_option, approach_option~%                               #must send separate \"grasp\" command to gripper~%int32 PLAN_MOVE_FINE_TO_GRASP_POSE  =3   #as above, but finer/slower approach motion~%int32 PLAN_MOVE_OBJECT_JSPACE =4    #move a grasped object to a destination pose using simple, joint-space move~%                               #expects params: des_object_pose, object_ID, grasp_option (need to know how object is grasped)~%int32 PLAN_MOVE_OBJECT_CSPACE = 5   #move a grasped object with Cartesian motion to a desired object pose~%                               #params:  des_object_pose, object_ID, grasp_option~%int32 PLAN_MOVE_FINE_OBJECT_CSPACE = 6 #as above, but w/ finer, slower motion~%~%int32 PLAN_WITHDRAW_FROM_OBJECT = 7 #with object grasp released, perform departure from object using specified depart strategy~%                               #params: object_ID, grasp_option, depart_option~%int32 PLAN_WITHDRAW_FINE_FROM_OBJECT = 8 #as above, but slower/more precise motion~%~%int32 PLAN_OBJECT_GRASP = 9  #combine multiple elements above to acquire an object~%~%int32 GRAB_OBJECT = 101 #plan and attempt to execute object acquisition, including grasp and lift~%int32 DROPOFF_OBJECT = 102 #plan and attempt to execute object placement and arm withdrawal~%~%int32 SET_SPEED_FACTOR = 10    #use arg speed_factor to change time scale of trajectory plan; larger than 1.0--> slower~%~%#manipulation strategy options:~%int32 DEFAULT_GRASP_STRATEGY = 0~%#has corresponding default approach and depart strategies~%~%int32 EXECUTE_PLANNED_MOVE = 100 #accept arm-motion plan and enable its execution~%~%#generalized gripper commands:~%int32 GRIPPER_PREPARE_GRASP_OBJECT = 20 #may require gripper to prepare for grasp approach, e.g. open fingers~%int32 GRIPPER_GRASP_OBJECT = 21        #command to perform appropriate action to grasp object, ~%                               #assumes gripper is in appropriate pose, prepared to grasp object~%                               #client does not need to know what type of gripper is used~%int32 GRIPPER_RELEASE_OBJECT = 22      #command to gripper to release a grasped object~%                               #params: object ID and grasp option used; ~%int32 GRIPPER_IS_OBJECT_GRASPED = 23   #a query; may require object_ID, grasp option used, and/or corresponding grasp test parameters; ~%                               #should return true/false~%~%#goal:~%int32 action_code~%int32 object_id~%int32 grasp_option~%int32 approach_strategy~%int32 lift_object_strategy~%int32 dropoff_strategy~%int32 dropoff_withdraw_strategy~%geometry_msgs/PoseStamped object_frame  #should be w/rt system_ref_frame, or have tf to this frame available~%float64 speed_factor #default to 1.0~%float64[] gripper_test_params~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <object_grabber3ActionGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <object_grabber3ActionGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'object_grabber3ActionGoal
    (cl:cons ':header (header msg))
    (cl:cons ':goal_id (goal_id msg))
    (cl:cons ':goal (goal msg))
))
