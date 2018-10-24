# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "sin_commander_action_server: 7 messages, 0 services")

set(MSG_I_FLAGS "-Isin_commander_action_server:/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg;-Iroscpp:/opt/ros/kinetic/share/roscpp/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Iactionlib:/opt/ros/kinetic/share/actionlib/cmake/../msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(sin_commander_action_server_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinActionResult.msg" NAME_WE)
add_custom_target(_sin_commander_action_server_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sin_commander_action_server" "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinActionResult.msg" "actionlib_msgs/GoalID:sin_commander_action_server/sinResult:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinActionGoal.msg" NAME_WE)
add_custom_target(_sin_commander_action_server_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sin_commander_action_server" "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinActionGoal.msg" "sin_commander_action_server/sinGoal:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinResult.msg" NAME_WE)
add_custom_target(_sin_commander_action_server_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sin_commander_action_server" "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinResult.msg" ""
)

get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinFeedback.msg" NAME_WE)
add_custom_target(_sin_commander_action_server_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sin_commander_action_server" "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinFeedback.msg" ""
)

get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinAction.msg" NAME_WE)
add_custom_target(_sin_commander_action_server_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sin_commander_action_server" "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinAction.msg" "actionlib_msgs/GoalStatus:sin_commander_action_server/sinFeedback:sin_commander_action_server/sinGoal:sin_commander_action_server/sinActionFeedback:sin_commander_action_server/sinResult:sin_commander_action_server/sinActionResult:sin_commander_action_server/sinActionGoal:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinGoal.msg" NAME_WE)
add_custom_target(_sin_commander_action_server_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sin_commander_action_server" "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinGoal.msg" ""
)

get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinActionFeedback.msg" NAME_WE)
add_custom_target(_sin_commander_action_server_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sin_commander_action_server" "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinActionFeedback.msg" "sin_commander_action_server/sinFeedback:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(sin_commander_action_server
  "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sin_commander_action_server
)
_generate_msg_cpp(sin_commander_action_server
  "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sin_commander_action_server
)
_generate_msg_cpp(sin_commander_action_server
  "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sin_commander_action_server
)
_generate_msg_cpp(sin_commander_action_server
  "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sin_commander_action_server
)
_generate_msg_cpp(sin_commander_action_server
  "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinFeedback.msg;/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinGoal.msg;/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinActionFeedback.msg;/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinResult.msg;/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinActionResult.msg;/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinActionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sin_commander_action_server
)
_generate_msg_cpp(sin_commander_action_server
  "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sin_commander_action_server
)
_generate_msg_cpp(sin_commander_action_server
  "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sin_commander_action_server
)

### Generating Services

### Generating Module File
_generate_module_cpp(sin_commander_action_server
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sin_commander_action_server
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(sin_commander_action_server_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(sin_commander_action_server_generate_messages sin_commander_action_server_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinActionResult.msg" NAME_WE)
add_dependencies(sin_commander_action_server_generate_messages_cpp _sin_commander_action_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinActionGoal.msg" NAME_WE)
add_dependencies(sin_commander_action_server_generate_messages_cpp _sin_commander_action_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinResult.msg" NAME_WE)
add_dependencies(sin_commander_action_server_generate_messages_cpp _sin_commander_action_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinFeedback.msg" NAME_WE)
add_dependencies(sin_commander_action_server_generate_messages_cpp _sin_commander_action_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinAction.msg" NAME_WE)
add_dependencies(sin_commander_action_server_generate_messages_cpp _sin_commander_action_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinGoal.msg" NAME_WE)
add_dependencies(sin_commander_action_server_generate_messages_cpp _sin_commander_action_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinActionFeedback.msg" NAME_WE)
add_dependencies(sin_commander_action_server_generate_messages_cpp _sin_commander_action_server_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sin_commander_action_server_gencpp)
add_dependencies(sin_commander_action_server_gencpp sin_commander_action_server_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sin_commander_action_server_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(sin_commander_action_server
  "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sin_commander_action_server
)
_generate_msg_eus(sin_commander_action_server
  "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sin_commander_action_server
)
_generate_msg_eus(sin_commander_action_server
  "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sin_commander_action_server
)
_generate_msg_eus(sin_commander_action_server
  "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sin_commander_action_server
)
_generate_msg_eus(sin_commander_action_server
  "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinFeedback.msg;/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinGoal.msg;/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinActionFeedback.msg;/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinResult.msg;/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinActionResult.msg;/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinActionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sin_commander_action_server
)
_generate_msg_eus(sin_commander_action_server
  "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sin_commander_action_server
)
_generate_msg_eus(sin_commander_action_server
  "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sin_commander_action_server
)

### Generating Services

### Generating Module File
_generate_module_eus(sin_commander_action_server
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sin_commander_action_server
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(sin_commander_action_server_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(sin_commander_action_server_generate_messages sin_commander_action_server_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinActionResult.msg" NAME_WE)
add_dependencies(sin_commander_action_server_generate_messages_eus _sin_commander_action_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinActionGoal.msg" NAME_WE)
add_dependencies(sin_commander_action_server_generate_messages_eus _sin_commander_action_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinResult.msg" NAME_WE)
add_dependencies(sin_commander_action_server_generate_messages_eus _sin_commander_action_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinFeedback.msg" NAME_WE)
add_dependencies(sin_commander_action_server_generate_messages_eus _sin_commander_action_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinAction.msg" NAME_WE)
add_dependencies(sin_commander_action_server_generate_messages_eus _sin_commander_action_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinGoal.msg" NAME_WE)
add_dependencies(sin_commander_action_server_generate_messages_eus _sin_commander_action_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinActionFeedback.msg" NAME_WE)
add_dependencies(sin_commander_action_server_generate_messages_eus _sin_commander_action_server_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sin_commander_action_server_geneus)
add_dependencies(sin_commander_action_server_geneus sin_commander_action_server_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sin_commander_action_server_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(sin_commander_action_server
  "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sin_commander_action_server
)
_generate_msg_lisp(sin_commander_action_server
  "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sin_commander_action_server
)
_generate_msg_lisp(sin_commander_action_server
  "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sin_commander_action_server
)
_generate_msg_lisp(sin_commander_action_server
  "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sin_commander_action_server
)
_generate_msg_lisp(sin_commander_action_server
  "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinFeedback.msg;/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinGoal.msg;/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinActionFeedback.msg;/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinResult.msg;/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinActionResult.msg;/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinActionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sin_commander_action_server
)
_generate_msg_lisp(sin_commander_action_server
  "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sin_commander_action_server
)
_generate_msg_lisp(sin_commander_action_server
  "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sin_commander_action_server
)

### Generating Services

### Generating Module File
_generate_module_lisp(sin_commander_action_server
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sin_commander_action_server
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(sin_commander_action_server_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(sin_commander_action_server_generate_messages sin_commander_action_server_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinActionResult.msg" NAME_WE)
add_dependencies(sin_commander_action_server_generate_messages_lisp _sin_commander_action_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinActionGoal.msg" NAME_WE)
add_dependencies(sin_commander_action_server_generate_messages_lisp _sin_commander_action_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinResult.msg" NAME_WE)
add_dependencies(sin_commander_action_server_generate_messages_lisp _sin_commander_action_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinFeedback.msg" NAME_WE)
add_dependencies(sin_commander_action_server_generate_messages_lisp _sin_commander_action_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinAction.msg" NAME_WE)
add_dependencies(sin_commander_action_server_generate_messages_lisp _sin_commander_action_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinGoal.msg" NAME_WE)
add_dependencies(sin_commander_action_server_generate_messages_lisp _sin_commander_action_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinActionFeedback.msg" NAME_WE)
add_dependencies(sin_commander_action_server_generate_messages_lisp _sin_commander_action_server_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sin_commander_action_server_genlisp)
add_dependencies(sin_commander_action_server_genlisp sin_commander_action_server_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sin_commander_action_server_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(sin_commander_action_server
  "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sin_commander_action_server
)
_generate_msg_nodejs(sin_commander_action_server
  "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sin_commander_action_server
)
_generate_msg_nodejs(sin_commander_action_server
  "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sin_commander_action_server
)
_generate_msg_nodejs(sin_commander_action_server
  "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sin_commander_action_server
)
_generate_msg_nodejs(sin_commander_action_server
  "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinFeedback.msg;/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinGoal.msg;/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinActionFeedback.msg;/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinResult.msg;/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinActionResult.msg;/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinActionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sin_commander_action_server
)
_generate_msg_nodejs(sin_commander_action_server
  "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sin_commander_action_server
)
_generate_msg_nodejs(sin_commander_action_server
  "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sin_commander_action_server
)

### Generating Services

### Generating Module File
_generate_module_nodejs(sin_commander_action_server
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sin_commander_action_server
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(sin_commander_action_server_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(sin_commander_action_server_generate_messages sin_commander_action_server_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinActionResult.msg" NAME_WE)
add_dependencies(sin_commander_action_server_generate_messages_nodejs _sin_commander_action_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinActionGoal.msg" NAME_WE)
add_dependencies(sin_commander_action_server_generate_messages_nodejs _sin_commander_action_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinResult.msg" NAME_WE)
add_dependencies(sin_commander_action_server_generate_messages_nodejs _sin_commander_action_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinFeedback.msg" NAME_WE)
add_dependencies(sin_commander_action_server_generate_messages_nodejs _sin_commander_action_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinAction.msg" NAME_WE)
add_dependencies(sin_commander_action_server_generate_messages_nodejs _sin_commander_action_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinGoal.msg" NAME_WE)
add_dependencies(sin_commander_action_server_generate_messages_nodejs _sin_commander_action_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinActionFeedback.msg" NAME_WE)
add_dependencies(sin_commander_action_server_generate_messages_nodejs _sin_commander_action_server_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sin_commander_action_server_gennodejs)
add_dependencies(sin_commander_action_server_gennodejs sin_commander_action_server_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sin_commander_action_server_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(sin_commander_action_server
  "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sin_commander_action_server
)
_generate_msg_py(sin_commander_action_server
  "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sin_commander_action_server
)
_generate_msg_py(sin_commander_action_server
  "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sin_commander_action_server
)
_generate_msg_py(sin_commander_action_server
  "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sin_commander_action_server
)
_generate_msg_py(sin_commander_action_server
  "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinFeedback.msg;/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinGoal.msg;/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinActionFeedback.msg;/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinResult.msg;/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinActionResult.msg;/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinActionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sin_commander_action_server
)
_generate_msg_py(sin_commander_action_server
  "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sin_commander_action_server
)
_generate_msg_py(sin_commander_action_server
  "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sin_commander_action_server
)

### Generating Services

### Generating Module File
_generate_module_py(sin_commander_action_server
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sin_commander_action_server
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(sin_commander_action_server_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(sin_commander_action_server_generate_messages sin_commander_action_server_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinActionResult.msg" NAME_WE)
add_dependencies(sin_commander_action_server_generate_messages_py _sin_commander_action_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinActionGoal.msg" NAME_WE)
add_dependencies(sin_commander_action_server_generate_messages_py _sin_commander_action_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinResult.msg" NAME_WE)
add_dependencies(sin_commander_action_server_generate_messages_py _sin_commander_action_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinFeedback.msg" NAME_WE)
add_dependencies(sin_commander_action_server_generate_messages_py _sin_commander_action_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinAction.msg" NAME_WE)
add_dependencies(sin_commander_action_server_generate_messages_py _sin_commander_action_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinGoal.msg" NAME_WE)
add_dependencies(sin_commander_action_server_generate_messages_py _sin_commander_action_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg/sinActionFeedback.msg" NAME_WE)
add_dependencies(sin_commander_action_server_generate_messages_py _sin_commander_action_server_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sin_commander_action_server_genpy)
add_dependencies(sin_commander_action_server_genpy sin_commander_action_server_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sin_commander_action_server_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sin_commander_action_server)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sin_commander_action_server
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET roscpp_generate_messages_cpp)
  add_dependencies(sin_commander_action_server_generate_messages_cpp roscpp_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(sin_commander_action_server_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_generate_messages_cpp)
  add_dependencies(sin_commander_action_server_generate_messages_cpp actionlib_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sin_commander_action_server)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sin_commander_action_server
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET roscpp_generate_messages_eus)
  add_dependencies(sin_commander_action_server_generate_messages_eus roscpp_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(sin_commander_action_server_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_generate_messages_eus)
  add_dependencies(sin_commander_action_server_generate_messages_eus actionlib_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sin_commander_action_server)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sin_commander_action_server
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET roscpp_generate_messages_lisp)
  add_dependencies(sin_commander_action_server_generate_messages_lisp roscpp_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(sin_commander_action_server_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_generate_messages_lisp)
  add_dependencies(sin_commander_action_server_generate_messages_lisp actionlib_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sin_commander_action_server)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sin_commander_action_server
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET roscpp_generate_messages_nodejs)
  add_dependencies(sin_commander_action_server_generate_messages_nodejs roscpp_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(sin_commander_action_server_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_generate_messages_nodejs)
  add_dependencies(sin_commander_action_server_generate_messages_nodejs actionlib_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sin_commander_action_server)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sin_commander_action_server\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sin_commander_action_server
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET roscpp_generate_messages_py)
  add_dependencies(sin_commander_action_server_generate_messages_py roscpp_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(sin_commander_action_server_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET actionlib_generate_messages_py)
  add_dependencies(sin_commander_action_server_generate_messages_py actionlib_generate_messages_py)
endif()
