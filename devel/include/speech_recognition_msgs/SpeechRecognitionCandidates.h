// Generated by gencpp from file speech_recognition_msgs/SpeechRecognitionCandidates.msg
// DO NOT EDIT!


#ifndef SPEECH_RECOGNITION_MSGS_MESSAGE_SPEECHRECOGNITIONCANDIDATES_H
#define SPEECH_RECOGNITION_MSGS_MESSAGE_SPEECHRECOGNITIONCANDIDATES_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace speech_recognition_msgs
{
template <class ContainerAllocator>
struct SpeechRecognitionCandidates_
{
  typedef SpeechRecognitionCandidates_<ContainerAllocator> Type;

  SpeechRecognitionCandidates_()
    : transcript()
    , confidence()  {
    }
  SpeechRecognitionCandidates_(const ContainerAllocator& _alloc)
    : transcript(_alloc)
    , confidence(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _transcript_type;
  _transcript_type transcript;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _confidence_type;
  _confidence_type confidence;





  typedef boost::shared_ptr< ::speech_recognition_msgs::SpeechRecognitionCandidates_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::speech_recognition_msgs::SpeechRecognitionCandidates_<ContainerAllocator> const> ConstPtr;

}; // struct SpeechRecognitionCandidates_

typedef ::speech_recognition_msgs::SpeechRecognitionCandidates_<std::allocator<void> > SpeechRecognitionCandidates;

typedef boost::shared_ptr< ::speech_recognition_msgs::SpeechRecognitionCandidates > SpeechRecognitionCandidatesPtr;
typedef boost::shared_ptr< ::speech_recognition_msgs::SpeechRecognitionCandidates const> SpeechRecognitionCandidatesConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::speech_recognition_msgs::SpeechRecognitionCandidates_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::speech_recognition_msgs::SpeechRecognitionCandidates_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::speech_recognition_msgs::SpeechRecognitionCandidates_<ContainerAllocator1> & lhs, const ::speech_recognition_msgs::SpeechRecognitionCandidates_<ContainerAllocator2> & rhs)
{
  return lhs.transcript == rhs.transcript &&
    lhs.confidence == rhs.confidence;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::speech_recognition_msgs::SpeechRecognitionCandidates_<ContainerAllocator1> & lhs, const ::speech_recognition_msgs::SpeechRecognitionCandidates_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace speech_recognition_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::speech_recognition_msgs::SpeechRecognitionCandidates_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::speech_recognition_msgs::SpeechRecognitionCandidates_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::speech_recognition_msgs::SpeechRecognitionCandidates_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::speech_recognition_msgs::SpeechRecognitionCandidates_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::speech_recognition_msgs::SpeechRecognitionCandidates_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::speech_recognition_msgs::SpeechRecognitionCandidates_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::speech_recognition_msgs::SpeechRecognitionCandidates_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8bf91ae2b1d4cbc38dce17013599f915";
  }

  static const char* value(const ::speech_recognition_msgs::SpeechRecognitionCandidates_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8bf91ae2b1d4cbc3ULL;
  static const uint64_t static_value2 = 0x8dce17013599f915ULL;
};

template<class ContainerAllocator>
struct DataType< ::speech_recognition_msgs::SpeechRecognitionCandidates_<ContainerAllocator> >
{
  static const char* value()
  {
    return "speech_recognition_msgs/SpeechRecognitionCandidates";
  }

  static const char* value(const ::speech_recognition_msgs::SpeechRecognitionCandidates_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::speech_recognition_msgs::SpeechRecognitionCandidates_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string[] transcript   # candidate words of speech-to-text API\n"
"float32[] confidence  # confidence of transcript\n"
;
  }

  static const char* value(const ::speech_recognition_msgs::SpeechRecognitionCandidates_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::speech_recognition_msgs::SpeechRecognitionCandidates_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.transcript);
      stream.next(m.confidence);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SpeechRecognitionCandidates_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::speech_recognition_msgs::SpeechRecognitionCandidates_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::speech_recognition_msgs::SpeechRecognitionCandidates_<ContainerAllocator>& v)
  {
    s << indent << "transcript[]" << std::endl;
    for (size_t i = 0; i < v.transcript.size(); ++i)
    {
      s << indent << "  transcript[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.transcript[i]);
    }
    s << indent << "confidence[]" << std::endl;
    for (size_t i = 0; i < v.confidence.size(); ++i)
    {
      s << indent << "  confidence[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.confidence[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // SPEECH_RECOGNITION_MSGS_MESSAGE_SPEECHRECOGNITIONCANDIDATES_H
