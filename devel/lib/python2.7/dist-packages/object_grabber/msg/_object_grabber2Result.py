# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from object_grabber/object_grabber2Result.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import std_msgs.msg

class object_grabber2Result(genpy.Message):
  _md5sum = "3117930a1aa49e1249134cfe7f822781"
  _type = "object_grabber/object_grabber2Result"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#result definition
#  response codes...
int32 SUCCESS=0
int32 OBJECT_ACQUIRED=0
int32 FAILED_CANNOT_REACH=1
int32 FAILED_CANNOT_APPROACH=2
int32 FAILED_CANNOT_REACH_GRASP_POSE=3
int32 FAILED_CANNOT_REACH_DEPART_POSE=4
int32 FAILED_OBJECT_NOT_IN_GRIPPER=5
int32 FAILED_OBJECT_UNKNOWN=6
int32 OBJECT_GRABBER_BUSY=7
int32 OBJECT_GRABBER_CANCELLED=8
int32 FAILED_CANNOT_REACH_DROPOFF_POSE=9
int32 FAILED_CANNOT_REACH_DROPOFF_APPROACH=10
int32 FAILED_CANNOT_REACH_POSE_CARTESIAN_MOVE=11
int32 FAILED_CANNOT_REACH_JSPACE_MOVE=12
int32 FAILED_CANNOT_MOVE_CARTESIAN_FINE=13
int32 FAILED_CANNOT_MOVE_TO_PRE_POSE=14
int32 ACTION_CODE_UNKNOWN=15
int32 GRIPPER_IS_OPEN=16
int32 GRIPPER_IS_CLOSED=17
int32 GRIPPER_FAILURE=18
int32 PENDING=19
int32 OBJECT_DROPPED_OFF = 20

int32 return_code
geometry_msgs/PoseStamped des_flange_pose_stamped_wrt_torso

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
  SUCCESS = 0
  OBJECT_ACQUIRED = 0
  FAILED_CANNOT_REACH = 1
  FAILED_CANNOT_APPROACH = 2
  FAILED_CANNOT_REACH_GRASP_POSE = 3
  FAILED_CANNOT_REACH_DEPART_POSE = 4
  FAILED_OBJECT_NOT_IN_GRIPPER = 5
  FAILED_OBJECT_UNKNOWN = 6
  OBJECT_GRABBER_BUSY = 7
  OBJECT_GRABBER_CANCELLED = 8
  FAILED_CANNOT_REACH_DROPOFF_POSE = 9
  FAILED_CANNOT_REACH_DROPOFF_APPROACH = 10
  FAILED_CANNOT_REACH_POSE_CARTESIAN_MOVE = 11
  FAILED_CANNOT_REACH_JSPACE_MOVE = 12
  FAILED_CANNOT_MOVE_CARTESIAN_FINE = 13
  FAILED_CANNOT_MOVE_TO_PRE_POSE = 14
  ACTION_CODE_UNKNOWN = 15
  GRIPPER_IS_OPEN = 16
  GRIPPER_IS_CLOSED = 17
  GRIPPER_FAILURE = 18
  PENDING = 19
  OBJECT_DROPPED_OFF = 20

  __slots__ = ['return_code','des_flange_pose_stamped_wrt_torso']
  _slot_types = ['int32','geometry_msgs/PoseStamped']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       return_code,des_flange_pose_stamped_wrt_torso

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(object_grabber2Result, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.return_code is None:
        self.return_code = 0
      if self.des_flange_pose_stamped_wrt_torso is None:
        self.des_flange_pose_stamped_wrt_torso = geometry_msgs.msg.PoseStamped()
    else:
      self.return_code = 0
      self.des_flange_pose_stamped_wrt_torso = geometry_msgs.msg.PoseStamped()

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
      buff.write(_get_struct_i3I().pack(_x.return_code, _x.des_flange_pose_stamped_wrt_torso.header.seq, _x.des_flange_pose_stamped_wrt_torso.header.stamp.secs, _x.des_flange_pose_stamped_wrt_torso.header.stamp.nsecs))
      _x = self.des_flange_pose_stamped_wrt_torso.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_7d().pack(_x.des_flange_pose_stamped_wrt_torso.pose.position.x, _x.des_flange_pose_stamped_wrt_torso.pose.position.y, _x.des_flange_pose_stamped_wrt_torso.pose.position.z, _x.des_flange_pose_stamped_wrt_torso.pose.orientation.x, _x.des_flange_pose_stamped_wrt_torso.pose.orientation.y, _x.des_flange_pose_stamped_wrt_torso.pose.orientation.z, _x.des_flange_pose_stamped_wrt_torso.pose.orientation.w))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.des_flange_pose_stamped_wrt_torso is None:
        self.des_flange_pose_stamped_wrt_torso = geometry_msgs.msg.PoseStamped()
      end = 0
      _x = self
      start = end
      end += 16
      (_x.return_code, _x.des_flange_pose_stamped_wrt_torso.header.seq, _x.des_flange_pose_stamped_wrt_torso.header.stamp.secs, _x.des_flange_pose_stamped_wrt_torso.header.stamp.nsecs,) = _get_struct_i3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.des_flange_pose_stamped_wrt_torso.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.des_flange_pose_stamped_wrt_torso.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 56
      (_x.des_flange_pose_stamped_wrt_torso.pose.position.x, _x.des_flange_pose_stamped_wrt_torso.pose.position.y, _x.des_flange_pose_stamped_wrt_torso.pose.position.z, _x.des_flange_pose_stamped_wrt_torso.pose.orientation.x, _x.des_flange_pose_stamped_wrt_torso.pose.orientation.y, _x.des_flange_pose_stamped_wrt_torso.pose.orientation.z, _x.des_flange_pose_stamped_wrt_torso.pose.orientation.w,) = _get_struct_7d().unpack(str[start:end])
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
      buff.write(_get_struct_i3I().pack(_x.return_code, _x.des_flange_pose_stamped_wrt_torso.header.seq, _x.des_flange_pose_stamped_wrt_torso.header.stamp.secs, _x.des_flange_pose_stamped_wrt_torso.header.stamp.nsecs))
      _x = self.des_flange_pose_stamped_wrt_torso.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_7d().pack(_x.des_flange_pose_stamped_wrt_torso.pose.position.x, _x.des_flange_pose_stamped_wrt_torso.pose.position.y, _x.des_flange_pose_stamped_wrt_torso.pose.position.z, _x.des_flange_pose_stamped_wrt_torso.pose.orientation.x, _x.des_flange_pose_stamped_wrt_torso.pose.orientation.y, _x.des_flange_pose_stamped_wrt_torso.pose.orientation.z, _x.des_flange_pose_stamped_wrt_torso.pose.orientation.w))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.des_flange_pose_stamped_wrt_torso is None:
        self.des_flange_pose_stamped_wrt_torso = geometry_msgs.msg.PoseStamped()
      end = 0
      _x = self
      start = end
      end += 16
      (_x.return_code, _x.des_flange_pose_stamped_wrt_torso.header.seq, _x.des_flange_pose_stamped_wrt_torso.header.stamp.secs, _x.des_flange_pose_stamped_wrt_torso.header.stamp.nsecs,) = _get_struct_i3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.des_flange_pose_stamped_wrt_torso.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.des_flange_pose_stamped_wrt_torso.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 56
      (_x.des_flange_pose_stamped_wrt_torso.pose.position.x, _x.des_flange_pose_stamped_wrt_torso.pose.position.y, _x.des_flange_pose_stamped_wrt_torso.pose.position.z, _x.des_flange_pose_stamped_wrt_torso.pose.orientation.x, _x.des_flange_pose_stamped_wrt_torso.pose.orientation.y, _x.des_flange_pose_stamped_wrt_torso.pose.orientation.z, _x.des_flange_pose_stamped_wrt_torso.pose.orientation.w,) = _get_struct_7d().unpack(str[start:end])
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
