# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "part_fetcher: 7 messages, 0 services")

set(MSG_I_FLAGS "-Ipart_fetcher:/home/hanbin/ros_ws/devel/share/part_fetcher/msg;-Iroscpp:/opt/ros/kinetic/share/roscpp/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Icartesian_planner:/home/hanbin/ros_ws/devel/share/cartesian_planner/msg;-Iactionlib:/opt/ros/kinetic/share/actionlib/cmake/../msg;-Itf:/opt/ros/kinetic/share/tf/cmake/../msg;-Iobject_grabber:/home/hanbin/ros_ws/devel/share/object_grabber/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Ibaxter_trajectory_streamer:/home/hanbin/ros_ws/devel/share/baxter_trajectory_streamer/msg;-Iarm7dof_traj_as:/home/hanbin/ros_ws/devel/share/arm7dof_traj_as/msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Ibaxter_core_msgs:/home/hanbin/ros_ws/src/learning_ros_external_pkgs_kinetic/baxter_common/baxter_core_msgs/msg;-Itrajectory_msgs:/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(part_fetcher_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherAction.msg" NAME_WE)
add_custom_target(_part_fetcher_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "part_fetcher" "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherAction.msg" "actionlib_msgs/GoalID:std_msgs/Header:part_fetcher/PartFetcherResult:geometry_msgs/Quaternion:part_fetcher/PartFetcherActionFeedback:geometry_msgs/Point:geometry_msgs/PoseStamped:part_fetcher/PartFetcherFeedback:part_fetcher/PartFetcherActionGoal:part_fetcher/PartFetcherActionResult:actionlib_msgs/GoalStatus:geometry_msgs/Pose:part_fetcher/PartFetcherGoal"
)

get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherResult.msg" NAME_WE)
add_custom_target(_part_fetcher_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "part_fetcher" "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherResult.msg" ""
)

get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherGoal.msg" NAME_WE)
add_custom_target(_part_fetcher_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "part_fetcher" "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherGoal.msg" "geometry_msgs/Quaternion:geometry_msgs/PoseStamped:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherActionFeedback.msg" NAME_WE)
add_custom_target(_part_fetcher_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "part_fetcher" "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherActionFeedback.msg" "part_fetcher/PartFetcherFeedback:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherActionResult.msg" NAME_WE)
add_custom_target(_part_fetcher_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "part_fetcher" "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherActionResult.msg" "actionlib_msgs/GoalID:part_fetcher/PartFetcherResult:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherActionGoal.msg" NAME_WE)
add_custom_target(_part_fetcher_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "part_fetcher" "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherActionGoal.msg" "actionlib_msgs/GoalID:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/PoseStamped:geometry_msgs/Pose:part_fetcher/PartFetcherGoal"
)

get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherFeedback.msg" NAME_WE)
add_custom_target(_part_fetcher_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "part_fetcher" "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherFeedback.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(part_fetcher
  "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherFeedback.msg;/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherActionGoal.msg;/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherActionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/part_fetcher
)
_generate_msg_cpp(part_fetcher
  "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/part_fetcher
)
_generate_msg_cpp(part_fetcher
  "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/part_fetcher
)
_generate_msg_cpp(part_fetcher
  "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/part_fetcher
)
_generate_msg_cpp(part_fetcher
  "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/part_fetcher
)
_generate_msg_cpp(part_fetcher
  "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/part_fetcher
)
_generate_msg_cpp(part_fetcher
  "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/part_fetcher
)

### Generating Services

### Generating Module File
_generate_module_cpp(part_fetcher
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/part_fetcher
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(part_fetcher_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(part_fetcher_generate_messages part_fetcher_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherAction.msg" NAME_WE)
add_dependencies(part_fetcher_generate_messages_cpp _part_fetcher_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherResult.msg" NAME_WE)
add_dependencies(part_fetcher_generate_messages_cpp _part_fetcher_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherGoal.msg" NAME_WE)
add_dependencies(part_fetcher_generate_messages_cpp _part_fetcher_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherActionFeedback.msg" NAME_WE)
add_dependencies(part_fetcher_generate_messages_cpp _part_fetcher_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherActionResult.msg" NAME_WE)
add_dependencies(part_fetcher_generate_messages_cpp _part_fetcher_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherActionGoal.msg" NAME_WE)
add_dependencies(part_fetcher_generate_messages_cpp _part_fetcher_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherFeedback.msg" NAME_WE)
add_dependencies(part_fetcher_generate_messages_cpp _part_fetcher_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(part_fetcher_gencpp)
add_dependencies(part_fetcher_gencpp part_fetcher_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS part_fetcher_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(part_fetcher
  "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherFeedback.msg;/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherActionGoal.msg;/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherActionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/part_fetcher
)
_generate_msg_eus(part_fetcher
  "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/part_fetcher
)
_generate_msg_eus(part_fetcher
  "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/part_fetcher
)
_generate_msg_eus(part_fetcher
  "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/part_fetcher
)
_generate_msg_eus(part_fetcher
  "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/part_fetcher
)
_generate_msg_eus(part_fetcher
  "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/part_fetcher
)
_generate_msg_eus(part_fetcher
  "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/part_fetcher
)

### Generating Services

### Generating Module File
_generate_module_eus(part_fetcher
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/part_fetcher
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(part_fetcher_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(part_fetcher_generate_messages part_fetcher_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherAction.msg" NAME_WE)
add_dependencies(part_fetcher_generate_messages_eus _part_fetcher_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherResult.msg" NAME_WE)
add_dependencies(part_fetcher_generate_messages_eus _part_fetcher_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherGoal.msg" NAME_WE)
add_dependencies(part_fetcher_generate_messages_eus _part_fetcher_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherActionFeedback.msg" NAME_WE)
add_dependencies(part_fetcher_generate_messages_eus _part_fetcher_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherActionResult.msg" NAME_WE)
add_dependencies(part_fetcher_generate_messages_eus _part_fetcher_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherActionGoal.msg" NAME_WE)
add_dependencies(part_fetcher_generate_messages_eus _part_fetcher_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherFeedback.msg" NAME_WE)
add_dependencies(part_fetcher_generate_messages_eus _part_fetcher_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(part_fetcher_geneus)
add_dependencies(part_fetcher_geneus part_fetcher_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS part_fetcher_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(part_fetcher
  "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherFeedback.msg;/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherActionGoal.msg;/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherActionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/part_fetcher
)
_generate_msg_lisp(part_fetcher
  "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/part_fetcher
)
_generate_msg_lisp(part_fetcher
  "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/part_fetcher
)
_generate_msg_lisp(part_fetcher
  "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/part_fetcher
)
_generate_msg_lisp(part_fetcher
  "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/part_fetcher
)
_generate_msg_lisp(part_fetcher
  "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/part_fetcher
)
_generate_msg_lisp(part_fetcher
  "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/part_fetcher
)

### Generating Services

### Generating Module File
_generate_module_lisp(part_fetcher
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/part_fetcher
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(part_fetcher_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(part_fetcher_generate_messages part_fetcher_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherAction.msg" NAME_WE)
add_dependencies(part_fetcher_generate_messages_lisp _part_fetcher_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherResult.msg" NAME_WE)
add_dependencies(part_fetcher_generate_messages_lisp _part_fetcher_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherGoal.msg" NAME_WE)
add_dependencies(part_fetcher_generate_messages_lisp _part_fetcher_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherActionFeedback.msg" NAME_WE)
add_dependencies(part_fetcher_generate_messages_lisp _part_fetcher_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherActionResult.msg" NAME_WE)
add_dependencies(part_fetcher_generate_messages_lisp _part_fetcher_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherActionGoal.msg" NAME_WE)
add_dependencies(part_fetcher_generate_messages_lisp _part_fetcher_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherFeedback.msg" NAME_WE)
add_dependencies(part_fetcher_generate_messages_lisp _part_fetcher_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(part_fetcher_genlisp)
add_dependencies(part_fetcher_genlisp part_fetcher_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS part_fetcher_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(part_fetcher
  "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherFeedback.msg;/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherActionGoal.msg;/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherActionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/part_fetcher
)
_generate_msg_nodejs(part_fetcher
  "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/part_fetcher
)
_generate_msg_nodejs(part_fetcher
  "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/part_fetcher
)
_generate_msg_nodejs(part_fetcher
  "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/part_fetcher
)
_generate_msg_nodejs(part_fetcher
  "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/part_fetcher
)
_generate_msg_nodejs(part_fetcher
  "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/part_fetcher
)
_generate_msg_nodejs(part_fetcher
  "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/part_fetcher
)

### Generating Services

### Generating Module File
_generate_module_nodejs(part_fetcher
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/part_fetcher
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(part_fetcher_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(part_fetcher_generate_messages part_fetcher_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherAction.msg" NAME_WE)
add_dependencies(part_fetcher_generate_messages_nodejs _part_fetcher_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherResult.msg" NAME_WE)
add_dependencies(part_fetcher_generate_messages_nodejs _part_fetcher_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherGoal.msg" NAME_WE)
add_dependencies(part_fetcher_generate_messages_nodejs _part_fetcher_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherActionFeedback.msg" NAME_WE)
add_dependencies(part_fetcher_generate_messages_nodejs _part_fetcher_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherActionResult.msg" NAME_WE)
add_dependencies(part_fetcher_generate_messages_nodejs _part_fetcher_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherActionGoal.msg" NAME_WE)
add_dependencies(part_fetcher_generate_messages_nodejs _part_fetcher_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherFeedback.msg" NAME_WE)
add_dependencies(part_fetcher_generate_messages_nodejs _part_fetcher_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(part_fetcher_gennodejs)
add_dependencies(part_fetcher_gennodejs part_fetcher_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS part_fetcher_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(part_fetcher
  "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherFeedback.msg;/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherActionGoal.msg;/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherActionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/part_fetcher
)
_generate_msg_py(part_fetcher
  "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/part_fetcher
)
_generate_msg_py(part_fetcher
  "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/part_fetcher
)
_generate_msg_py(part_fetcher
  "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/part_fetcher
)
_generate_msg_py(part_fetcher
  "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/part_fetcher
)
_generate_msg_py(part_fetcher
  "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/part_fetcher
)
_generate_msg_py(part_fetcher
  "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/part_fetcher
)

### Generating Services

### Generating Module File
_generate_module_py(part_fetcher
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/part_fetcher
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(part_fetcher_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(part_fetcher_generate_messages part_fetcher_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherAction.msg" NAME_WE)
add_dependencies(part_fetcher_generate_messages_py _part_fetcher_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherResult.msg" NAME_WE)
add_dependencies(part_fetcher_generate_messages_py _part_fetcher_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherGoal.msg" NAME_WE)
add_dependencies(part_fetcher_generate_messages_py _part_fetcher_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherActionFeedback.msg" NAME_WE)
add_dependencies(part_fetcher_generate_messages_py _part_fetcher_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherActionResult.msg" NAME_WE)
add_dependencies(part_fetcher_generate_messages_py _part_fetcher_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherActionGoal.msg" NAME_WE)
add_dependencies(part_fetcher_generate_messages_py _part_fetcher_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/part_fetcher/msg/PartFetcherFeedback.msg" NAME_WE)
add_dependencies(part_fetcher_generate_messages_py _part_fetcher_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(part_fetcher_genpy)
add_dependencies(part_fetcher_genpy part_fetcher_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS part_fetcher_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/part_fetcher)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/part_fetcher
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET roscpp_generate_messages_cpp)
  add_dependencies(part_fetcher_generate_messages_cpp roscpp_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(part_fetcher_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET cartesian_planner_generate_messages_cpp)
  add_dependencies(part_fetcher_generate_messages_cpp cartesian_planner_generate_messages_cpp)
endif()
if(TARGET actionlib_generate_messages_cpp)
  add_dependencies(part_fetcher_generate_messages_cpp actionlib_generate_messages_cpp)
endif()
if(TARGET tf_generate_messages_cpp)
  add_dependencies(part_fetcher_generate_messages_cpp tf_generate_messages_cpp)
endif()
if(TARGET object_manipulation_properties_generate_messages_cpp)
  add_dependencies(part_fetcher_generate_messages_cpp object_manipulation_properties_generate_messages_cpp)
endif()
if(TARGET generic_gripper_services_generate_messages_cpp)
  add_dependencies(part_fetcher_generate_messages_cpp generic_gripper_services_generate_messages_cpp)
endif()
if(TARGET object_grabber_generate_messages_cpp)
  add_dependencies(part_fetcher_generate_messages_cpp object_grabber_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/part_fetcher)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/part_fetcher
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET roscpp_generate_messages_eus)
  add_dependencies(part_fetcher_generate_messages_eus roscpp_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(part_fetcher_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET cartesian_planner_generate_messages_eus)
  add_dependencies(part_fetcher_generate_messages_eus cartesian_planner_generate_messages_eus)
endif()
if(TARGET actionlib_generate_messages_eus)
  add_dependencies(part_fetcher_generate_messages_eus actionlib_generate_messages_eus)
endif()
if(TARGET tf_generate_messages_eus)
  add_dependencies(part_fetcher_generate_messages_eus tf_generate_messages_eus)
endif()
if(TARGET object_manipulation_properties_generate_messages_eus)
  add_dependencies(part_fetcher_generate_messages_eus object_manipulation_properties_generate_messages_eus)
endif()
if(TARGET generic_gripper_services_generate_messages_eus)
  add_dependencies(part_fetcher_generate_messages_eus generic_gripper_services_generate_messages_eus)
endif()
if(TARGET object_grabber_generate_messages_eus)
  add_dependencies(part_fetcher_generate_messages_eus object_grabber_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/part_fetcher)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/part_fetcher
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET roscpp_generate_messages_lisp)
  add_dependencies(part_fetcher_generate_messages_lisp roscpp_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(part_fetcher_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET cartesian_planner_generate_messages_lisp)
  add_dependencies(part_fetcher_generate_messages_lisp cartesian_planner_generate_messages_lisp)
endif()
if(TARGET actionlib_generate_messages_lisp)
  add_dependencies(part_fetcher_generate_messages_lisp actionlib_generate_messages_lisp)
endif()
if(TARGET tf_generate_messages_lisp)
  add_dependencies(part_fetcher_generate_messages_lisp tf_generate_messages_lisp)
endif()
if(TARGET object_manipulation_properties_generate_messages_lisp)
  add_dependencies(part_fetcher_generate_messages_lisp object_manipulation_properties_generate_messages_lisp)
endif()
if(TARGET generic_gripper_services_generate_messages_lisp)
  add_dependencies(part_fetcher_generate_messages_lisp generic_gripper_services_generate_messages_lisp)
endif()
if(TARGET object_grabber_generate_messages_lisp)
  add_dependencies(part_fetcher_generate_messages_lisp object_grabber_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/part_fetcher)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/part_fetcher
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET roscpp_generate_messages_nodejs)
  add_dependencies(part_fetcher_generate_messages_nodejs roscpp_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(part_fetcher_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET cartesian_planner_generate_messages_nodejs)
  add_dependencies(part_fetcher_generate_messages_nodejs cartesian_planner_generate_messages_nodejs)
endif()
if(TARGET actionlib_generate_messages_nodejs)
  add_dependencies(part_fetcher_generate_messages_nodejs actionlib_generate_messages_nodejs)
endif()
if(TARGET tf_generate_messages_nodejs)
  add_dependencies(part_fetcher_generate_messages_nodejs tf_generate_messages_nodejs)
endif()
if(TARGET object_manipulation_properties_generate_messages_nodejs)
  add_dependencies(part_fetcher_generate_messages_nodejs object_manipulation_properties_generate_messages_nodejs)
endif()
if(TARGET generic_gripper_services_generate_messages_nodejs)
  add_dependencies(part_fetcher_generate_messages_nodejs generic_gripper_services_generate_messages_nodejs)
endif()
if(TARGET object_grabber_generate_messages_nodejs)
  add_dependencies(part_fetcher_generate_messages_nodejs object_grabber_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/part_fetcher)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/part_fetcher\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/part_fetcher
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET roscpp_generate_messages_py)
  add_dependencies(part_fetcher_generate_messages_py roscpp_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(part_fetcher_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET cartesian_planner_generate_messages_py)
  add_dependencies(part_fetcher_generate_messages_py cartesian_planner_generate_messages_py)
endif()
if(TARGET actionlib_generate_messages_py)
  add_dependencies(part_fetcher_generate_messages_py actionlib_generate_messages_py)
endif()
if(TARGET tf_generate_messages_py)
  add_dependencies(part_fetcher_generate_messages_py tf_generate_messages_py)
endif()
if(TARGET object_manipulation_properties_generate_messages_py)
  add_dependencies(part_fetcher_generate_messages_py object_manipulation_properties_generate_messages_py)
endif()
if(TARGET generic_gripper_services_generate_messages_py)
  add_dependencies(part_fetcher_generate_messages_py generic_gripper_services_generate_messages_py)
endif()
if(TARGET object_grabber_generate_messages_py)
  add_dependencies(part_fetcher_generate_messages_py object_grabber_generate_messages_py)
endif()
