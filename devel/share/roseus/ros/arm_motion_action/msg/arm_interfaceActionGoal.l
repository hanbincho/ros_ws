;; Auto-generated. Do not edit!


(when (boundp 'arm_motion_action::arm_interfaceActionGoal)
  (if (not (find-package "ARM_MOTION_ACTION"))
    (make-package "ARM_MOTION_ACTION"))
  (shadow 'arm_interfaceActionGoal (find-package "ARM_MOTION_ACTION")))
(unless (find-package "ARM_MOTION_ACTION::ARM_INTERFACEACTIONGOAL")
  (make-package "ARM_MOTION_ACTION::ARM_INTERFACEACTIONGOAL"))

(in-package "ROS")
;;//! \htmlinclude arm_interfaceActionGoal.msg.html
(if (not (find-package "ACTIONLIB_MSGS"))
  (ros::roseus-add-msgs "actionlib_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass arm_motion_action::arm_interfaceActionGoal
  :super ros::object
  :slots (_header _goal_id _goal ))

(defmethod arm_motion_action::arm_interfaceActionGoal
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:goal_id __goal_id) (instance actionlib_msgs::GoalID :init))
    ((:goal __goal) (instance arm_motion_action::arm_interfaceGoal :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _goal_id __goal_id)
   (setq _goal __goal)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:goal_id
   (&rest __goal_id)
   (if (keywordp (car __goal_id))
       (send* _goal_id __goal_id)
     (progn
       (if __goal_id (setq _goal_id (car __goal_id)))
       _goal_id)))
  (:goal
   (&rest __goal)
   (if (keywordp (car __goal))
       (send* _goal __goal)
     (progn
       (if __goal (setq _goal (car __goal)))
       _goal)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; actionlib_msgs/GoalID _goal_id
    (send _goal_id :serialization-length)
    ;; arm_motion_action/arm_interfaceGoal _goal
    (send _goal :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; actionlib_msgs/GoalID _goal_id
       (send _goal_id :serialize s)
     ;; arm_motion_action/arm_interfaceGoal _goal
       (send _goal :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; actionlib_msgs/GoalID _goal_id
     (send _goal_id :deserialize buf ptr-) (incf ptr- (send _goal_id :serialization-length))
   ;; arm_motion_action/arm_interfaceGoal _goal
     (send _goal :deserialize buf ptr-) (incf ptr- (send _goal :serialization-length))
   ;;
   self)
  )

(setf (get arm_motion_action::arm_interfaceActionGoal :md5sum-) "9e97718a7ab375036bb56bb9356b4a91")
(setf (get arm_motion_action::arm_interfaceActionGoal :datatype-) "arm_motion_action/arm_interfaceActionGoal")
(setf (get arm_motion_action::arm_interfaceActionGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalID goal_id
arm_interfaceGoal goal

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
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: actionlib_msgs/GoalID
# The stamp should store the time at which this goal was requested.
# It is used by an action server when it tries to preempt all
# goals that were requested before a certain time
time stamp

# The id provides a way to associate feedback and
# result message with specific goal requests. The id
# specified must be unique.
string id


================================================================================
MSG: arm_motion_action/arm_interfaceGoal
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#cartesian-move action interface
#minimally, it may contain just a command code
#more generally, it may contain desired tool-frame pose, as well
# as gripper pose (gripper opening, or vacuum gripper on/off)
# and an arrival time for the move
# It is assumed that a move starts from the previous commanded pose, or from the current joint state

#return codes provide status info, e.g. if a proposed move is reachable

#define message constants:  
uint8 ARM_TEST_MODE = 0

#queries
uint8 ARM_IS_SERVER_BUSY_QUERY = 1
uint8 ARM_QUERY_IS_PATH_VALID = 2
uint8 GET_TOOL_POSE = 5
uint8 GET_Q_DATA = 7

#requests for motion plans; 
uint8 PLAN_JSPACE_TRAJ_CURRENT_TO_WAITING_POSE=20
uint8 PLAN_JSPACE_TRAJ_CURRENT_TO_QGOAL = 21
uint8 PLAN_JSPACE_TRAJ_CURRENT_TO_CART_TOOL_POSE = 22 #plan a joint-space path from current arm pose to some IK soln of Cartesian goal

uint8 PLAN_CARTESIAN_TRAJ_CURRENT_TO_DES_TOOL_POSE = 23
uint8 PLAN_CARTESIAN_TRAJ_QSTART_TO_DES_TOOL_POSE = 24
uint8 PLAN_CARTESIAN_TRAJ_QPREV_TO_DES_TOOL_POSE = 25

uint8 CLEAR_MULTI_TRAJ_PLAN = 26
uint8 APPEND_MULTI_TRAJ_CART_SEGMENT = 27
uint8 APPEND_MULTI_TRAJ_JSPACE_SEGMENT = 28
uint8 TEST_PATH_FOR_DISCONTINUITIES = 29
uint8 GET_NUM_PATH_SEGMENTS = 30
uint8 GET_REPLANNED_ARRIVAL_TIMES = 31
uint8 REPLAN_DISCONTINUITIES = 32

uint8 REFINE_PLANNED_TRAJECTORY = 41 #if used approx IK soln, use this option to refine solns
uint8 SEGMENT_DISCONTINUOUS_TRAJ = 42 #if soln is discontinuous, segment it into a multi-traj plan
# return the number of new segments and their respective arrival times

# request to preview plan:
#uint8 DISPLAY_TRAJECTORY = 50

#MOVE command!
uint8 EXECUTE_PLANNED_TRAJ = 100
#specify a segment number to be executed from a multi-segment trajectory
uint8 EXECUTE_TRAJ_NSEG = 101
#for a path with discontinuities, command arm to go to first pose of segment nseg
#specify the path segment in element \"nseg\"
uint8 GOTO_NSEG_START = 102

#uint8 ARM_DESCEND_20CM=101
#uint8 ARM_DEPART_20CM=102


#goal:
int32 command_code
geometry_msgs/PoseStamped des_pose_gripper
float64[] arm_dp #to command a 3-D vector displacement relative to current pose, fixed orientation
float64[] q_goal
float64[] q_start
int32 nsteps
float64 arrival_time
int32 nseg #to choose one of NSEG segments in a multi-traj vector
#float64 time_scale_stretch_factor

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :arm_motion_action/arm_interfaceActionGoal "9e97718a7ab375036bb56bb9356b4a91")

