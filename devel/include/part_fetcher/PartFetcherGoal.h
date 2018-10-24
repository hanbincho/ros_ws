// Generated by gencpp from file part_fetcher/PartFetcherGoal.msg
// DO NOT EDIT!


#ifndef PART_FETCHER_MESSAGE_PARTFETCHERGOAL_H
#define PART_FETCHER_MESSAGE_PARTFETCHERGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/PoseStamped.h>

namespace part_fetcher
{
template <class ContainerAllocator>
struct PartFetcherGoal_
{
  typedef PartFetcherGoal_<ContainerAllocator> Type;

  PartFetcherGoal_()
    : object_id(0)
    , object_frame()
    , desired_frame()  {
    }
  PartFetcherGoal_(const ContainerAllocator& _alloc)
    : object_id(0)
    , object_frame(_alloc)
    , desired_frame(_alloc)  {
  (void)_alloc;
    }



   typedef int32_t _object_id_type;
  _object_id_type object_id;

   typedef  ::geometry_msgs::PoseStamped_<ContainerAllocator>  _object_frame_type;
  _object_frame_type object_frame;

   typedef  ::geometry_msgs::PoseStamped_<ContainerAllocator>  _desired_frame_type;
  _desired_frame_type desired_frame;





  typedef boost::shared_ptr< ::part_fetcher::PartFetcherGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::part_fetcher::PartFetcherGoal_<ContainerAllocator> const> ConstPtr;

}; // struct PartFetcherGoal_

typedef ::part_fetcher::PartFetcherGoal_<std::allocator<void> > PartFetcherGoal;

typedef boost::shared_ptr< ::part_fetcher::PartFetcherGoal > PartFetcherGoalPtr;
typedef boost::shared_ptr< ::part_fetcher::PartFetcherGoal const> PartFetcherGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::part_fetcher::PartFetcherGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::part_fetcher::PartFetcherGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace part_fetcher

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'trajectory_msgs': ['/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg'], 'roscpp': ['/opt/ros/kinetic/share/roscpp/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'arm7dof_traj_as': ['/home/hanbin/ros_ws/devel/share/arm7dof_traj_as/msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'actionlib': ['/opt/ros/kinetic/share/actionlib/cmake/../msg'], 'part_fetcher': ['/home/hanbin/ros_ws/devel/share/part_fetcher/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'baxter_core_msgs': ['/home/hanbin/ros_ws/src/learning_ros_external_pkgs_kinetic/baxter_common/baxter_core_msgs/msg'], 'object_grabber': ['/home/hanbin/ros_ws/devel/share/object_grabber/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'tf': ['/opt/ros/kinetic/share/tf/cmake/../msg'], 'cartesian_planner': ['/home/hanbin/ros_ws/devel/share/cartesian_planner/msg'], 'baxter_trajectory_streamer': ['/home/hanbin/ros_ws/devel/share/baxter_trajectory_streamer/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::part_fetcher::PartFetcherGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::part_fetcher::PartFetcherGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::part_fetcher::PartFetcherGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::part_fetcher::PartFetcherGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::part_fetcher::PartFetcherGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::part_fetcher::PartFetcherGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::part_fetcher::PartFetcherGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3ed50a2a1765af4bdef88bc97e5adc74";
  }

  static const char* value(const ::part_fetcher::PartFetcherGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3ed50a2a1765af4bULL;
  static const uint64_t static_value2 = 0xdef88bc97e5adc74ULL;
};

template<class ContainerAllocator>
struct DataType< ::part_fetcher::PartFetcherGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "part_fetcher/PartFetcherGoal";
  }

  static const char* value(const ::part_fetcher::PartFetcherGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::part_fetcher::PartFetcherGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
#action message for part fetcher\n\
#specify a part ID, starting pose, and desired destination pose\n\
int32 object_id\n\
geometry_msgs/PoseStamped object_frame\n\
geometry_msgs/PoseStamped desired_frame\n\
\n\
================================================================================\n\
MSG: geometry_msgs/PoseStamped\n\
# A Pose with reference coordinate frame and timestamp\n\
Header header\n\
Pose pose\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Pose\n\
# A representation of pose in free space, composed of position and orientation. \n\
Point position\n\
Quaternion orientation\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Quaternion\n\
# This represents an orientation in free space in quaternion form.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 w\n\
";
  }

  static const char* value(const ::part_fetcher::PartFetcherGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::part_fetcher::PartFetcherGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.object_id);
      stream.next(m.object_frame);
      stream.next(m.desired_frame);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PartFetcherGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::part_fetcher::PartFetcherGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::part_fetcher::PartFetcherGoal_<ContainerAllocator>& v)
  {
    s << indent << "object_id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.object_id);
    s << indent << "object_frame: ";
    s << std::endl;
    Printer< ::geometry_msgs::PoseStamped_<ContainerAllocator> >::stream(s, indent + "  ", v.object_frame);
    s << indent << "desired_frame: ";
    s << std::endl;
    Printer< ::geometry_msgs::PoseStamped_<ContainerAllocator> >::stream(s, indent + "  ", v.desired_frame);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PART_FETCHER_MESSAGE_PARTFETCHERGOAL_H
