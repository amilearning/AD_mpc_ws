// Generated by gencpp from file genesis_msgs/SteeringReport.msg
// DO NOT EDIT!


#ifndef GENESIS_MSGS_MESSAGE_STEERINGREPORT_H
#define GENESIS_MSGS_MESSAGE_STEERINGREPORT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace genesis_msgs
{
template <class ContainerAllocator>
struct SteeringReport_
{
  typedef SteeringReport_<ContainerAllocator> Type;

  SteeringReport_()
    : header()
    , steering_wheel_angle(0.0)
    , steering_wheel_speed(0.0)
    , steering_stat(0)
    , msg_count(0)
    , checksum(0)  {
    }
  SteeringReport_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , steering_wheel_angle(0.0)
    , steering_wheel_speed(0.0)
    , steering_stat(0)
    , msg_count(0)
    , checksum(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef float _steering_wheel_angle_type;
  _steering_wheel_angle_type steering_wheel_angle;

   typedef float _steering_wheel_speed_type;
  _steering_wheel_speed_type steering_wheel_speed;

   typedef uint8_t _steering_stat_type;
  _steering_stat_type steering_stat;

   typedef uint8_t _msg_count_type;
  _msg_count_type msg_count;

   typedef uint8_t _checksum_type;
  _checksum_type checksum;





  typedef boost::shared_ptr< ::genesis_msgs::SteeringReport_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::genesis_msgs::SteeringReport_<ContainerAllocator> const> ConstPtr;

}; // struct SteeringReport_

typedef ::genesis_msgs::SteeringReport_<std::allocator<void> > SteeringReport;

typedef boost::shared_ptr< ::genesis_msgs::SteeringReport > SteeringReportPtr;
typedef boost::shared_ptr< ::genesis_msgs::SteeringReport const> SteeringReportConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::genesis_msgs::SteeringReport_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::genesis_msgs::SteeringReport_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::genesis_msgs::SteeringReport_<ContainerAllocator1> & lhs, const ::genesis_msgs::SteeringReport_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.steering_wheel_angle == rhs.steering_wheel_angle &&
    lhs.steering_wheel_speed == rhs.steering_wheel_speed &&
    lhs.steering_stat == rhs.steering_stat &&
    lhs.msg_count == rhs.msg_count &&
    lhs.checksum == rhs.checksum;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::genesis_msgs::SteeringReport_<ContainerAllocator1> & lhs, const ::genesis_msgs::SteeringReport_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace genesis_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::genesis_msgs::SteeringReport_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::genesis_msgs::SteeringReport_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::genesis_msgs::SteeringReport_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::genesis_msgs::SteeringReport_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::genesis_msgs::SteeringReport_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::genesis_msgs::SteeringReport_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::genesis_msgs::SteeringReport_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4859bfda0d84232363f2c485e301bd32";
  }

  static const char* value(const ::genesis_msgs::SteeringReport_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4859bfda0d842323ULL;
  static const uint64_t static_value2 = 0x63f2c485e301bd32ULL;
};

template<class ContainerAllocator>
struct DataType< ::genesis_msgs::SteeringReport_<ContainerAllocator> >
{
  static const char* value()
  {
    return "genesis_msgs/SteeringReport";
  }

  static const char* value(const ::genesis_msgs::SteeringReport_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::genesis_msgs::SteeringReport_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"\n"
"# Steering Wheel\n"
"float32 steering_wheel_angle # deg\n"
"float32 steering_wheel_speed # ??\n"
"uint8 steering_stat\n"
"uint8 msg_count\n"
"uint8 checksum\n"
"\n"
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
;
  }

  static const char* value(const ::genesis_msgs::SteeringReport_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::genesis_msgs::SteeringReport_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.steering_wheel_angle);
      stream.next(m.steering_wheel_speed);
      stream.next(m.steering_stat);
      stream.next(m.msg_count);
      stream.next(m.checksum);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SteeringReport_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::genesis_msgs::SteeringReport_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::genesis_msgs::SteeringReport_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "steering_wheel_angle: ";
    Printer<float>::stream(s, indent + "  ", v.steering_wheel_angle);
    s << indent << "steering_wheel_speed: ";
    Printer<float>::stream(s, indent + "  ", v.steering_wheel_speed);
    s << indent << "steering_stat: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.steering_stat);
    s << indent << "msg_count: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.msg_count);
    s << indent << "checksum: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.checksum);
  }
};

} // namespace message_operations
} // namespace ros

#endif // GENESIS_MSGS_MESSAGE_STEERINGREPORT_H
