// Generated by gencpp from file magic_object_finder/magicObjectFinderFeedback.msg
// DO NOT EDIT!


#ifndef MAGIC_OBJECT_FINDER_MESSAGE_MAGICOBJECTFINDERFEEDBACK_H
#define MAGIC_OBJECT_FINDER_MESSAGE_MAGICOBJECTFINDERFEEDBACK_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace magic_object_finder
{
template <class ContainerAllocator>
struct magicObjectFinderFeedback_
{
  typedef magicObjectFinderFeedback_<ContainerAllocator> Type;

  magicObjectFinderFeedback_()
    {
    }
  magicObjectFinderFeedback_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::magic_object_finder::magicObjectFinderFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::magic_object_finder::magicObjectFinderFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct magicObjectFinderFeedback_

typedef ::magic_object_finder::magicObjectFinderFeedback_<std::allocator<void> > magicObjectFinderFeedback;

typedef boost::shared_ptr< ::magic_object_finder::magicObjectFinderFeedback > magicObjectFinderFeedbackPtr;
typedef boost::shared_ptr< ::magic_object_finder::magicObjectFinderFeedback const> magicObjectFinderFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::magic_object_finder::magicObjectFinderFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::magic_object_finder::magicObjectFinderFeedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace magic_object_finder

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'roscpp': ['/opt/ros/kinetic/share/roscpp/cmake/../msg'], 'magic_object_finder': ['/home/hanbin/ros_ws/devel/share/magic_object_finder/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'actionlib': ['/opt/ros/kinetic/share/actionlib/cmake/../msg'], 'trajectory_msgs': ['/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg'], 'gazebo_msgs': ['/home/hanbin/ros_ws/src/learning_ros_external_pkgs_kinetic/gazebo_ros_pkgs/gazebo_msgs/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::magic_object_finder::magicObjectFinderFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::magic_object_finder::magicObjectFinderFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::magic_object_finder::magicObjectFinderFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::magic_object_finder::magicObjectFinderFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::magic_object_finder::magicObjectFinderFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::magic_object_finder::magicObjectFinderFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::magic_object_finder::magicObjectFinderFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::magic_object_finder::magicObjectFinderFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::magic_object_finder::magicObjectFinderFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "magic_object_finder/magicObjectFinderFeedback";
  }

  static const char* value(const ::magic_object_finder::magicObjectFinderFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::magic_object_finder::magicObjectFinderFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
#feedback: optional; \n\
#int32 OBJECT_FINDER_BUSY=3 \n\
#int32 fdbk\n\
\n\
\n\
\n\
\n\
";
  }

  static const char* value(const ::magic_object_finder::magicObjectFinderFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::magic_object_finder::magicObjectFinderFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct magicObjectFinderFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::magic_object_finder::magicObjectFinderFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::magic_object_finder::magicObjectFinderFeedback_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // MAGIC_OBJECT_FINDER_MESSAGE_MAGICOBJECTFINDERFEEDBACK_H
