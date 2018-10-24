# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from cartesian_planner/cart_moveGoal.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import std_msgs.msg

class cart_moveGoal(genpy.Message):
  _md5sum = "5bd816596081b2b0fbcdf7dad29bf944"
  _type = "cartesian_planner/cart_moveGoal"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
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
uint8 PLAN_PATH_CURRENT_TO_WAITING_POSE=20
#uint8 PLAN_PATH_CURRENT_TO_PRE_POSE=20 #synonym
uint8 PLAN_JSPACE_PATH_CURRENT_TO_CART_GRIPPER_POSE = 21 #plan a joint-space path from current arm pose to some IK soln of Cartesian goal

uint8 PLAN_PATH_CURRENT_TO_GOAL_GRIPPER_POSE=22 #plan cartesian path from current arm pose to goal gripper pose
uint8 PLAN_FINE_PATH_CURRENT_TO_GOAL_GRIPPER_POSE = 23 #plan path to specified gripper pose #as above, but hi-res
uint8 PLAN_PATH_CURRENT_TO_GOAL_DP_XYZ = 24 #rectilinear translation w/ fixed orientation
uint8 PLAN_JSPACE_PATH_CURRENT_TO_QGOAL = 25
 

uint8 TIME_RESCALE_PLANNED_TRAJECTORY = 40 #can make arm go slower/faster with provided time-stretch factor
uint8 REFINE_PLANNED_TRAJECTORY = 41 #if used approx IK soln, use this option to refine solns
uint8 SET_ARRIVAL_TIME_PLANNED_TRAJECTORY = 42 #used to set desired arrival time; put arrival time value in goal time_scale_stretch_factor

# request to preview plan:
#uint8 DISPLAY_TRAJECTORY = 50

#MOVE command!
uint8 EXECUTE_PLANNED_PATH = 100

#uint8 ARM_DESCEND_20CM=101
#uint8 ARM_DEPART_20CM=102


#goal:
int32 command_code
geometry_msgs/PoseStamped des_pose_gripper
float64[] arm_dp #to command a 3-D vector displacement relative to current pose, fixed orientation
float64[] q_goal
float64 time_scale_stretch_factor

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
"""
  # Pseudo-constants
  ARM_TEST_MODE = 0
  ARM_IS_SERVER_BUSY_QUERY = 1
  ARM_QUERY_IS_PATH_VALID = 2
  GET_TOOL_POSE = 5
  GET_Q_DATA = 7
  PLAN_PATH_CURRENT_TO_WAITING_POSE = 20
  PLAN_JSPACE_PATH_CURRENT_TO_CART_GRIPPER_POSE = 21
  PLAN_PATH_CURRENT_TO_GOAL_GRIPPER_POSE = 22
  PLAN_FINE_PATH_CURRENT_TO_GOAL_GRIPPER_POSE = 23
  PLAN_PATH_CURRENT_TO_GOAL_DP_XYZ = 24
  PLAN_JSPACE_PATH_CURRENT_TO_QGOAL = 25
  TIME_RESCALE_PLANNED_TRAJECTORY = 40
  REFINE_PLANNED_TRAJECTORY = 41
  SET_ARRIVAL_TIME_PLANNED_TRAJECTORY = 42
  EXECUTE_PLANNED_PATH = 100

  __slots__ = ['command_code','des_pose_gripper','arm_dp','q_goal','time_scale_stretch_factor']
  _slot_types = ['int32','geometry_msgs/PoseStamped','float64[]','float64[]','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       command_code,des_pose_gripper,arm_dp,q_goal,time_scale_stretch_factor

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(cart_moveGoal, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.command_code is None:
        self.command_code = 0
      if self.des_pose_gripper is None:
        self.des_pose_gripper = geometry_msgs.msg.PoseStamped()
      if self.arm_dp is None:
        self.arm_dp = []
      if self.q_goal is None:
        self.q_goal = []
      if self.time_scale_stretch_factor is None:
        self.time_scale_stretch_factor = 0.
    else:
      self.command_code = 0
      self.des_pose_gripper = geometry_msgs.msg.PoseStamped()
      self.arm_dp = []
      self.q_goal = []
      self.time_scale_stretch_factor = 0.

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_i3I().pack(_x.command_code, _x.des_pose_gripper.header.seq, _x.des_pose_gripper.header.stamp.secs, _x.des_pose_gripper.header.stamp.nsecs))
      _x = self.des_pose_gripper.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_7d().pack(_x.des_pose_gripper.pose.position.x, _x.des_pose_gripper.pose.position.y, _x.des_pose_gripper.pose.position.z, _x.des_pose_gripper.pose.orientation.x, _x.des_pose_gripper.pose.orientation.y, _x.des_pose_gripper.pose.orientation.z, _x.des_pose_gripper.pose.orientation.w))
      length = len(self.arm_dp)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.pack(pattern, *self.arm_dp))
      length = len(self.q_goal)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.pack(pattern, *self.q_goal))
      buff.write(_get_struct_d().pack(self.time_scale_stretch_factor))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.des_pose_gripper is None:
        self.des_pose_gripper = geometry_msgs.msg.PoseStamped()
      end = 0
      _x = self
      start = end
      end += 16
      (_x.command_code, _x.des_pose_gripper.header.seq, _x.des_pose_gripper.header.stamp.secs, _x.des_pose_gripper.header.stamp.nsecs,) = _get_struct_i3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.des_pose_gripper.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.des_pose_gripper.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 56
      (_x.des_pose_gripper.pose.position.x, _x.des_pose_gripper.pose.position.y, _x.des_pose_gripper.pose.position.z, _x.des_pose_gripper.pose.orientation.x, _x.des_pose_gripper.pose.orientation.y, _x.des_pose_gripper.pose.orientation.z, _x.des_pose_gripper.pose.orientation.w,) = _get_struct_7d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.arm_dp = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.q_goal = struct.unpack(pattern, str[start:end])
      start = end
      end += 8
      (self.time_scale_stretch_factor,) = _get_struct_d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_i3I().pack(_x.command_code, _x.des_pose_gripper.header.seq, _x.des_pose_gripper.header.stamp.secs, _x.des_pose_gripper.header.stamp.nsecs))
      _x = self.des_pose_gripper.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_7d().pack(_x.des_pose_gripper.pose.position.x, _x.des_pose_gripper.pose.position.y, _x.des_pose_gripper.pose.position.z, _x.des_pose_gripper.pose.orientation.x, _x.des_pose_gripper.pose.orientation.y, _x.des_pose_gripper.pose.orientation.z, _x.des_pose_gripper.pose.orientation.w))
      length = len(self.arm_dp)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.arm_dp.tostring())
      length = len(self.q_goal)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.q_goal.tostring())
      buff.write(_get_struct_d().pack(self.time_scale_stretch_factor))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.des_pose_gripper is None:
        self.des_pose_gripper = geometry_msgs.msg.PoseStamped()
      end = 0
      _x = self
      start = end
      end += 16
      (_x.command_code, _x.des_pose_gripper.header.seq, _x.des_pose_gripper.header.stamp.secs, _x.des_pose_gripper.header.stamp.nsecs,) = _get_struct_i3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.des_pose_gripper.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.des_pose_gripper.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 56
      (_x.des_pose_gripper.pose.position.x, _x.des_pose_gripper.pose.position.y, _x.des_pose_gripper.pose.position.z, _x.des_pose_gripper.pose.orientation.x, _x.des_pose_gripper.pose.orientation.y, _x.des_pose_gripper.pose.orientation.z, _x.des_pose_gripper.pose.orientation.w,) = _get_struct_7d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.arm_dp = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.q_goal = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      start = end
      end += 8
      (self.time_scale_stretch_factor,) = _get_struct_d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_i3I = None
def _get_struct_i3I():
    global _struct_i3I
    if _struct_i3I is None:
        _struct_i3I = struct.Struct("<i3I")
    return _struct_i3I
_struct_7d = None
def _get_struct_7d():
    global _struct_7d
    if _struct_7d is None:
        _struct_7d = struct.Struct("<7d")
    return _struct_7d
_struct_d = None
def _get_struct_d():
    global _struct_d
    if _struct_d is None:
        _struct_d = struct.Struct("<d")
    return _struct_d
