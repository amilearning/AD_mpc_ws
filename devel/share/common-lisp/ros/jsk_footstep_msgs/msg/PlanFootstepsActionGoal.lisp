; Auto-generated. Do not edit!


(cl:in-package jsk_footstep_msgs-msg)


;//! \htmlinclude PlanFootstepsActionGoal.msg.html

(cl:defclass <PlanFootstepsActionGoal> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (goal_id
    :reader goal_id
    :initarg :goal_id
    :type actionlib_msgs-msg:GoalID
    :initform (cl:make-instance 'actionlib_msgs-msg:GoalID))
   (goal
    :reader goal
    :initarg :goal
    :type jsk_footstep_msgs-msg:PlanFootstepsGoal
    :initform (cl:make-instance 'jsk_footstep_msgs-msg:PlanFootstepsGoal)))
)

(cl:defclass PlanFootstepsActionGoal (<PlanFootstepsActionGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlanFootstepsActionGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlanFootstepsActionGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jsk_footstep_msgs-msg:<PlanFootstepsActionGoal> is deprecated: use jsk_footstep_msgs-msg:PlanFootstepsActionGoal instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PlanFootstepsActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_footstep_msgs-msg:header-val is deprecated.  Use jsk_footstep_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'goal_id-val :lambda-list '(m))
(cl:defmethod goal_id-val ((m <PlanFootstepsActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_footstep_msgs-msg:goal_id-val is deprecated.  Use jsk_footstep_msgs-msg:goal_id instead.")
  (goal_id m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <PlanFootstepsActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jsk_footstep_msgs-msg:goal-val is deprecated.  Use jsk_footstep_msgs-msg:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlanFootstepsActionGoal>) ostream)
  "Serializes a message object of type '<PlanFootstepsActionGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlanFootstepsActionGoal>) istream)
  "Deserializes a message object of type '<PlanFootstepsActionGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlanFootstepsActionGoal>)))
  "Returns string type for a message object of type '<PlanFootstepsActionGoal>"
  "jsk_footstep_msgs/PlanFootstepsActionGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlanFootstepsActionGoal)))
  "Returns string type for a message object of type 'PlanFootstepsActionGoal"
  "jsk_footstep_msgs/PlanFootstepsActionGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlanFootstepsActionGoal>)))
  "Returns md5sum for a message object of type '<PlanFootstepsActionGoal>"
  "4f600ecca20b1d57f2e38560d26042c4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlanFootstepsActionGoal)))
  "Returns md5sum for a message object of type 'PlanFootstepsActionGoal"
  "4f600ecca20b1d57f2e38560d26042c4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlanFootstepsActionGoal>)))
  "Returns full string definition for message of type '<PlanFootstepsActionGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%PlanFootstepsGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: jsk_footstep_msgs/PlanFootstepsGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# goal~%FootstepArray goal_footstep~%FootstepArray initial_footstep~%duration timeout~%~%================================================================================~%MSG: jsk_footstep_msgs/FootstepArray~%Header header~%Footstep[] footsteps~%================================================================================~%MSG: jsk_footstep_msgs/Footstep~%uint8 RIGHT=2~%uint8 LEFT=1~%~%# Constants to visualize progress~%uint8 REJECTED=3~%uint8 APPROVED=4~%~%## limb_indicator values~%uint8 LLEG=1~%uint8 RLEG=2~%uint8 LARM=5~%uint8 RARM=6~%~%uint8 leg ## value should be one of limb_indicator values.~%geometry_msgs/Pose pose ## 'pose' represents nominal pose. It may be an end-effector of limb.~%duration duration~%# optional parameters~%uint32 footstep_group~%geometry_msgs/Vector3 dimensions ## cube [length(x), width(y), height(z)]~%geometry_msgs/Vector3 offset     ## offset from pose to center of cube~%float32 swing_height~%float32 cost~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlanFootstepsActionGoal)))
  "Returns full string definition for message of type 'PlanFootstepsActionGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%PlanFootstepsGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: jsk_footstep_msgs/PlanFootstepsGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# goal~%FootstepArray goal_footstep~%FootstepArray initial_footstep~%duration timeout~%~%================================================================================~%MSG: jsk_footstep_msgs/FootstepArray~%Header header~%Footstep[] footsteps~%================================================================================~%MSG: jsk_footstep_msgs/Footstep~%uint8 RIGHT=2~%uint8 LEFT=1~%~%# Constants to visualize progress~%uint8 REJECTED=3~%uint8 APPROVED=4~%~%## limb_indicator values~%uint8 LLEG=1~%uint8 RLEG=2~%uint8 LARM=5~%uint8 RARM=6~%~%uint8 leg ## value should be one of limb_indicator values.~%geometry_msgs/Pose pose ## 'pose' represents nominal pose. It may be an end-effector of limb.~%duration duration~%# optional parameters~%uint32 footstep_group~%geometry_msgs/Vector3 dimensions ## cube [length(x), width(y), height(z)]~%geometry_msgs/Vector3 offset     ## offset from pose to center of cube~%float32 swing_height~%float32 cost~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlanFootstepsActionGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlanFootstepsActionGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'PlanFootstepsActionGoal
    (cl:cons ':header (header msg))
    (cl:cons ':goal_id (goal_id msg))
    (cl:cons ':goal (goal msg))
))
