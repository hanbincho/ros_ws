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
#specify the path segment in element "nseg"
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
