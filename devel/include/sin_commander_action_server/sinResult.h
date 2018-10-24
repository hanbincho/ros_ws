// Generated by gencpp from file sin_commander_action_server/sinResult.msg
// DO NOT EDIT!


#ifndef SIN_COMMANDER_ACTION_SERVER_MESSAGE_SINRESULT_H
#define SIN_COMMANDER_ACTION_SERVER_MESSAGE_SINRESULT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace sin_commander_action_server
{
template <class ContainerAllocator>
struct sinResult_
{
  typedef sinResult_<ContainerAllocator> Type;

  sinResult_()
    : is_done(false)  {
    }
  sinResult_(const ContainerAllocator& _alloc)
    : is_done(false)  {
  (void)_alloc;
    }



   typedef uint8_t _is_done_type;
  _is_done_type is_done;





  typedef boost::shared_ptr< ::sin_commander_action_server::sinResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::sin_commander_action_server::sinResult_<ContainerAllocator> const> ConstPtr;

}; // struct sinResult_

typedef ::sin_commander_action_server::sinResult_<std::allocator<void> > sinResult;

typedef boost::shared_ptr< ::sin_commander_action_server::sinResult > sinResultPtr;
typedef boost::shared_ptr< ::sin_commander_action_server::sinResult const> sinResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::sin_commander_action_server::sinResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::sin_commander_action_server::sinResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace sin_commander_action_server

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'actionlib': ['/opt/ros/kinetic/share/actionlib/cmake/../msg'], 'sin_commander_action_server': ['/home/hanbin/ros_ws/devel/share/sin_commander_action_server/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'roscpp': ['/opt/ros/kinetic/share/roscpp/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::sin_commander_action_server::sinResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::sin_commander_action_server::sinResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sin_commander_action_server::sinResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sin_commander_action_server::sinResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sin_commander_action_server::sinResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sin_commander_action_server::sinResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::sin_commander_action_server::sinResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ccf1bf44aca57c0fac7595ea9e4b924c";
  }

  static const char* value(const ::sin_commander_action_server::sinResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xccf1bf44aca57c0fULL;
  static const uint64_t static_value2 = 0xac7595ea9e4b924cULL;
};

template<class ContainerAllocator>
struct DataType< ::sin_commander_action_server::sinResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "sin_commander_action_server/sinResult";
  }

  static const char* value(const ::sin_commander_action_server::sinResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::sin_commander_action_server::sinResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
#result definition\n\
bool is_done\n\
";
  }

  static const char* value(const ::sin_commander_action_server::sinResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::sin_commander_action_server::sinResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.is_done);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct sinResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::sin_commander_action_server::sinResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::sin_commander_action_server::sinResult_<ContainerAllocator>& v)
  {
    s << indent << "is_done: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.is_done);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SIN_COMMANDER_ACTION_SERVER_MESSAGE_SINRESULT_H
