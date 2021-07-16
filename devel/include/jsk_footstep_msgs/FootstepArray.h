// Generated by gencpp from file jsk_footstep_msgs/FootstepArray.msg
// DO NOT EDIT!


#ifndef JSK_FOOTSTEP_MSGS_MESSAGE_FOOTSTEPARRAY_H
#define JSK_FOOTSTEP_MSGS_MESSAGE_FOOTSTEPARRAY_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <jsk_footstep_msgs/Footstep.h>

namespace jsk_footstep_msgs
{
template <class ContainerAllocator>
struct FootstepArray_
{
  typedef FootstepArray_<ContainerAllocator> Type;

  FootstepArray_()
    : header()
    , footsteps()  {
    }
  FootstepArray_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , footsteps(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::jsk_footstep_msgs::Footstep_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::jsk_footstep_msgs::Footstep_<ContainerAllocator> >::other >  _footsteps_type;
  _footsteps_type footsteps;





  typedef boost::shared_ptr< ::jsk_footstep_msgs::FootstepArray_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::jsk_footstep_msgs::FootstepArray_<ContainerAllocator> const> ConstPtr;

}; // struct FootstepArray_

typedef ::jsk_footstep_msgs::FootstepArray_<std::allocator<void> > FootstepArray;

typedef boost::shared_ptr< ::jsk_footstep_msgs::FootstepArray > FootstepArrayPtr;
typedef boost::shared_ptr< ::jsk_footstep_msgs::FootstepArray const> FootstepArrayConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::jsk_footstep_msgs::FootstepArray_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::jsk_footstep_msgs::FootstepArray_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::jsk_footstep_msgs::FootstepArray_<ContainerAllocator1> & lhs, const ::jsk_footstep_msgs::FootstepArray_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.footsteps == rhs.footsteps;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::jsk_footstep_msgs::FootstepArray_<ContainerAllocator1> & lhs, const ::jsk_footstep_msgs::FootstepArray_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace jsk_footstep_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::jsk_footstep_msgs::FootstepArray_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::jsk_footstep_msgs::FootstepArray_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::jsk_footstep_msgs::FootstepArray_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::jsk_footstep_msgs::FootstepArray_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::jsk_footstep_msgs::FootstepArray_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::jsk_footstep_msgs::FootstepArray_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::jsk_footstep_msgs::FootstepArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "385bc396845a4680214262a4679d83b3";
  }

  static const char* value(const ::jsk_footstep_msgs::FootstepArray_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x385bc396845a4680ULL;
  static const uint64_t static_value2 = 0x214262a4679d83b3ULL;
};

template<class ContainerAllocator>
struct DataType< ::jsk_footstep_msgs::FootstepArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "jsk_footstep_msgs/FootstepArray";
  }

  static const char* value(const ::jsk_footstep_msgs::FootstepArray_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::jsk_footstep_msgs::FootstepArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"Footstep[] footsteps\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: jsk_footstep_msgs/Footstep\n"
"uint8 RIGHT=2\n"
"uint8 LEFT=1\n"
"\n"
"# Constants to visualize progress\n"
"uint8 REJECTED=3\n"
"uint8 APPROVED=4\n"
"\n"
"## limb_indicator values\n"
"uint8 LLEG=1\n"
"uint8 RLEG=2\n"
"uint8 LARM=5\n"
"uint8 RARM=6\n"
"\n"
"uint8 leg ## value should be one of limb_indicator values.\n"
"geometry_msgs/Pose pose ## 'pose' represents nominal pose. It may be an end-effector of limb.\n"
"duration duration\n"
"# optional parameters\n"
"uint32 footstep_group\n"
"geometry_msgs/Vector3 dimensions ## cube [length(x), width(y), height(z)]\n"
"geometry_msgs/Vector3 offset     ## offset from pose to center of cube\n"
"float32 swing_height\n"
"float32 cost\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Vector3\n"
"# This represents a vector in free space. \n"
"# It is only meant to represent a direction. Therefore, it does not\n"
"# make sense to apply a translation to it (e.g., when applying a \n"
"# generic rigid transformation to a Vector3, tf2 will only apply the\n"
"# rotation). If you want your data to be translatable too, use the\n"
"# geometry_msgs/Point message instead.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::jsk_footstep_msgs::FootstepArray_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::jsk_footstep_msgs::FootstepArray_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.footsteps);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct FootstepArray_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::jsk_footstep_msgs::FootstepArray_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::jsk_footstep_msgs::FootstepArray_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "footsteps[]" << std::endl;
    for (size_t i = 0; i < v.footsteps.size(); ++i)
    {
      s << indent << "  footsteps[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::jsk_footstep_msgs::Footstep_<ContainerAllocator> >::stream(s, indent + "    ", v.footsteps[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // JSK_FOOTSTEP_MSGS_MESSAGE_FOOTSTEPARRAY_H
