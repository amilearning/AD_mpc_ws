# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from genesis_msgs/ESRValidReport.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import genpy
import std_msgs.msg

class ESRValidReport(genpy.Message):
  _md5sum = "5bc0fc869f175fe0d4567a3b81e3a5e1"
  _type = "genesis_msgs/ESRValidReport"
  _has_header = True  # flag to mark the presence of a Header object
  _full_text = """Header header

time stamp1					# timestamp for the Valid1 part; same as header.stamp
time stamp2					# timestamp for the Valid2 part

# Long Range (Valid1)
int32 lr_sn                                     # ?, probably a boolean for if the sensor works?
float32 lr_range_rate                           # m/s
float32 lr_range                                # m
float32 lr_range_power                          # dB
float32 lr_range_angle                          # deg

# Medium Range (Valid2)
int32 mr_sn                                     # ?, probably a boolean for if the sensor works?
float32 mr_range_rate                           # m/s
float32 mr_range                                # m
float32 mr_range_power                          # dB
float32 mr_range_angle                          # deg




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
string frame_id
"""
  __slots__ = ['header','stamp1','stamp2','lr_sn','lr_range_rate','lr_range','lr_range_power','lr_range_angle','mr_sn','mr_range_rate','mr_range','mr_range_power','mr_range_angle']
  _slot_types = ['std_msgs/Header','time','time','int32','float32','float32','float32','float32','int32','float32','float32','float32','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,stamp1,stamp2,lr_sn,lr_range_rate,lr_range,lr_range_power,lr_range_angle,mr_sn,mr_range_rate,mr_range,mr_range_power,mr_range_angle

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ESRValidReport, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.stamp1 is None:
        self.stamp1 = genpy.Time()
      if self.stamp2 is None:
        self.stamp2 = genpy.Time()
      if self.lr_sn is None:
        self.lr_sn = 0
      if self.lr_range_rate is None:
        self.lr_range_rate = 0.
      if self.lr_range is None:
        self.lr_range = 0.
      if self.lr_range_power is None:
        self.lr_range_power = 0.
      if self.lr_range_angle is None:
        self.lr_range_angle = 0.
      if self.mr_sn is None:
        self.mr_sn = 0
      if self.mr_range_rate is None:
        self.mr_range_rate = 0.
      if self.mr_range is None:
        self.mr_range = 0.
      if self.mr_range_power is None:
        self.mr_range_power = 0.
      if self.mr_range_angle is None:
        self.mr_range_angle = 0.
    else:
      self.header = std_msgs.msg.Header()
      self.stamp1 = genpy.Time()
      self.stamp2 = genpy.Time()
      self.lr_sn = 0
      self.lr_range_rate = 0.
      self.lr_range = 0.
      self.lr_range_power = 0.
      self.lr_range_angle = 0.
      self.mr_sn = 0
      self.mr_range_rate = 0.
      self.mr_range = 0.
      self.mr_range_power = 0.
      self.mr_range_angle = 0.

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
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_4Ii4fi4f().pack(_x.stamp1.secs, _x.stamp1.nsecs, _x.stamp2.secs, _x.stamp2.nsecs, _x.lr_sn, _x.lr_range_rate, _x.lr_range, _x.lr_range_power, _x.lr_range_angle, _x.mr_sn, _x.mr_range_rate, _x.mr_range, _x.mr_range_power, _x.mr_range_angle))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.stamp1 is None:
        self.stamp1 = genpy.Time()
      if self.stamp2 is None:
        self.stamp2 = genpy.Time()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 56
      (_x.stamp1.secs, _x.stamp1.nsecs, _x.stamp2.secs, _x.stamp2.nsecs, _x.lr_sn, _x.lr_range_rate, _x.lr_range, _x.lr_range_power, _x.lr_range_angle, _x.mr_sn, _x.mr_range_rate, _x.mr_range, _x.mr_range_power, _x.mr_range_angle,) = _get_struct_4Ii4fi4f().unpack(str[start:end])
      self.stamp1.canon()
      self.stamp2.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_4Ii4fi4f().pack(_x.stamp1.secs, _x.stamp1.nsecs, _x.stamp2.secs, _x.stamp2.nsecs, _x.lr_sn, _x.lr_range_rate, _x.lr_range, _x.lr_range_power, _x.lr_range_angle, _x.mr_sn, _x.mr_range_rate, _x.mr_range, _x.mr_range_power, _x.mr_range_angle))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.stamp1 is None:
        self.stamp1 = genpy.Time()
      if self.stamp2 is None:
        self.stamp2 = genpy.Time()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 56
      (_x.stamp1.secs, _x.stamp1.nsecs, _x.stamp2.secs, _x.stamp2.nsecs, _x.lr_sn, _x.lr_range_rate, _x.lr_range, _x.lr_range_power, _x.lr_range_angle, _x.mr_sn, _x.mr_range_rate, _x.mr_range, _x.mr_range_power, _x.mr_range_angle,) = _get_struct_4Ii4fi4f().unpack(str[start:end])
      self.stamp1.canon()
      self.stamp2.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_4Ii4fi4f = None
def _get_struct_4Ii4fi4f():
    global _struct_4Ii4fi4f
    if _struct_4Ii4fi4f is None:
        _struct_4Ii4fi4f = struct.Struct("<4Ii4fi4f")
    return _struct_4Ii4fi4f
