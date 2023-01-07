; Auto-generated. Do not edit!


(cl:in-package zed_interfaces-msg)


;//! \htmlinclude ObjectsStamped.msg.html

(cl:defclass <ObjectsStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (objects
    :reader objects
    :initarg :objects
    :type (cl:vector zed_interfaces-msg:Object)
   :initform (cl:make-array 0 :element-type 'zed_interfaces-msg:Object :initial-element (cl:make-instance 'zed_interfaces-msg:Object))))
)

(cl:defclass ObjectsStamped (<ObjectsStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObjectsStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObjectsStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zed_interfaces-msg:<ObjectsStamped> is deprecated: use zed_interfaces-msg:ObjectsStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ObjectsStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-msg:header-val is deprecated.  Use zed_interfaces-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'objects-val :lambda-list '(m))
(cl:defmethod objects-val ((m <ObjectsStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-msg:objects-val is deprecated.  Use zed_interfaces-msg:objects instead.")
  (objects m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObjectsStamped>) ostream)
  "Serializes a message object of type '<ObjectsStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'objects))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'objects))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObjectsStamped>) istream)
  "Deserializes a message object of type '<ObjectsStamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'objects) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'objects)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'zed_interfaces-msg:Object))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObjectsStamped>)))
  "Returns string type for a message object of type '<ObjectsStamped>"
  "zed_interfaces/ObjectsStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObjectsStamped)))
  "Returns string type for a message object of type 'ObjectsStamped"
  "zed_interfaces/ObjectsStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObjectsStamped>)))
  "Returns md5sum for a message object of type '<ObjectsStamped>"
  "e91047b6614d7847b9669e1a2fe302b2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObjectsStamped)))
  "Returns md5sum for a message object of type 'ObjectsStamped"
  "e91047b6614d7847b9669e1a2fe302b2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObjectsStamped>)))
  "Returns full string definition for message of type '<ObjectsStamped>"
  (cl:format cl:nil "# Standard Header~%std_msgs/Header header~%~%# Array of `object_stamped` topics~%zed_interfaces/Object[] objects~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: zed_interfaces/Object~%# Object label~%string label~%~%# Object label ID~%int16 label_id~%~%# Object sub~%string sublabel~%~%# Object confidence level (1-99)~%float32 confidence~%~%# Object centroid position~%float32[3] position~%~%# Position covariance~%float32[6] position_covariance~%~%# Object velocity~%float32[3] velocity~%~%# Tracking available~%bool tracking_available~%~%# Tracking state~%# 0 -> OFF (object not valid)~%# 1 -> OK~%# 2 -> SEARCHING (occlusion occurred, trajectory is estimated)~%int8 tracking_state~%~%# Action state~%# 0 -> IDLE~%# 2 -> MOVING~%int8 action_state~%~%# 2D Bounding box projected to Camera image~%zed_interfaces/BoundingBox2Di bounding_box_2d~%~%# 3D Bounding box in world frame~%zed_interfaces/BoundingBox3D bounding_box_3d~%~%# 3D dimensions (width, height, lenght)~%float32[3] dimensions_3d~%~%# Is skeleton available?~%bool skeleton_available~%~%# 2D Bounding box projected to Camera image of the person head~%zed_interfaces/BoundingBox2Df head_bounding_box_2d~%~%# 3D Bounding box in world frame of the person head~%zed_interfaces/BoundingBox3D head_bounding_box_3d~%~%# 3D position of the centroid of the person head~%float32[3] head_position~%~%# 2D Person skeleton projected to Camera image~%zed_interfaces/Skeleton2D skeleton_2d~%~%# 3D Person skeleton in world frame~%zed_interfaces/Skeleton3D skeleton_3d~%~%================================================================================~%MSG: zed_interfaces/BoundingBox2Di~%#      0 ------- 1~%#      |         |~%#      |         |~%#      |         |~%#      3 ------- 2~%zed_interfaces/Keypoint2Di[4] corners~%~%================================================================================~%MSG: zed_interfaces/Keypoint2Di~%uint32[2] kp~%~%================================================================================~%MSG: zed_interfaces/BoundingBox3D~%#      1 ------- 2~%#     /.        /|~%#    0 ------- 3 |~%#    | .       | |~%#    | 5.......| 6~%#    |.        |/~%#    4 ------- 7~%zed_interfaces/Keypoint3D[8] corners~%~%================================================================================~%MSG: zed_interfaces/Keypoint3D~%float32[3] kp~%~%================================================================================~%MSG: zed_interfaces/BoundingBox2Df~%#      0 ------- 1~%#      |         |~%#      |         |~%#      |         |~%#      3 ------- 2~%zed_interfaces/Keypoint2Df[4] corners~%~%================================================================================~%MSG: zed_interfaces/Keypoint2Df~%float32[2] kp~%~%================================================================================~%MSG: zed_interfaces/Skeleton2D~%# Skeleton joints indices~%#        16-14   15-17~%#             \\ /~%#              0~%#              |~%#       2------1------5~%#       |    |   |    |~%#	    |    |   |    |~%#       3    |   |    6~%#       |    |   |    |~%#       |    |   |    |~%#       4    8   11   7~%#            |   |~%#            |   |~%#            |   |~%#            9   12~%#            |   |~%#            |   |~%#            |   |~%#           10   13~%zed_interfaces/Keypoint2Df[18] keypoints~%~%================================================================================~%MSG: zed_interfaces/Skeleton3D~%# Skeleton joints indices~%#        16-14   15-17~%#             \\ /~%#              0~%#              |~%#       2------1------5~%#       |    |   |    |~%#	    |    |   |    |~%#       3    |   |    6~%#       |    |   |    |~%#       |    |   |    |~%#       4    8   11   7~%#            |   |~%#            |   |~%#            |   |~%#            9   12~%#            |   |~%#            |   |~%#            |   |~%#           10   13~%zed_interfaces/Keypoint3D[18] keypoints~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObjectsStamped)))
  "Returns full string definition for message of type 'ObjectsStamped"
  (cl:format cl:nil "# Standard Header~%std_msgs/Header header~%~%# Array of `object_stamped` topics~%zed_interfaces/Object[] objects~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: zed_interfaces/Object~%# Object label~%string label~%~%# Object label ID~%int16 label_id~%~%# Object sub~%string sublabel~%~%# Object confidence level (1-99)~%float32 confidence~%~%# Object centroid position~%float32[3] position~%~%# Position covariance~%float32[6] position_covariance~%~%# Object velocity~%float32[3] velocity~%~%# Tracking available~%bool tracking_available~%~%# Tracking state~%# 0 -> OFF (object not valid)~%# 1 -> OK~%# 2 -> SEARCHING (occlusion occurred, trajectory is estimated)~%int8 tracking_state~%~%# Action state~%# 0 -> IDLE~%# 2 -> MOVING~%int8 action_state~%~%# 2D Bounding box projected to Camera image~%zed_interfaces/BoundingBox2Di bounding_box_2d~%~%# 3D Bounding box in world frame~%zed_interfaces/BoundingBox3D bounding_box_3d~%~%# 3D dimensions (width, height, lenght)~%float32[3] dimensions_3d~%~%# Is skeleton available?~%bool skeleton_available~%~%# 2D Bounding box projected to Camera image of the person head~%zed_interfaces/BoundingBox2Df head_bounding_box_2d~%~%# 3D Bounding box in world frame of the person head~%zed_interfaces/BoundingBox3D head_bounding_box_3d~%~%# 3D position of the centroid of the person head~%float32[3] head_position~%~%# 2D Person skeleton projected to Camera image~%zed_interfaces/Skeleton2D skeleton_2d~%~%# 3D Person skeleton in world frame~%zed_interfaces/Skeleton3D skeleton_3d~%~%================================================================================~%MSG: zed_interfaces/BoundingBox2Di~%#      0 ------- 1~%#      |         |~%#      |         |~%#      |         |~%#      3 ------- 2~%zed_interfaces/Keypoint2Di[4] corners~%~%================================================================================~%MSG: zed_interfaces/Keypoint2Di~%uint32[2] kp~%~%================================================================================~%MSG: zed_interfaces/BoundingBox3D~%#      1 ------- 2~%#     /.        /|~%#    0 ------- 3 |~%#    | .       | |~%#    | 5.......| 6~%#    |.        |/~%#    4 ------- 7~%zed_interfaces/Keypoint3D[8] corners~%~%================================================================================~%MSG: zed_interfaces/Keypoint3D~%float32[3] kp~%~%================================================================================~%MSG: zed_interfaces/BoundingBox2Df~%#      0 ------- 1~%#      |         |~%#      |         |~%#      |         |~%#      3 ------- 2~%zed_interfaces/Keypoint2Df[4] corners~%~%================================================================================~%MSG: zed_interfaces/Keypoint2Df~%float32[2] kp~%~%================================================================================~%MSG: zed_interfaces/Skeleton2D~%# Skeleton joints indices~%#        16-14   15-17~%#             \\ /~%#              0~%#              |~%#       2------1------5~%#       |    |   |    |~%#	    |    |   |    |~%#       3    |   |    6~%#       |    |   |    |~%#       |    |   |    |~%#       4    8   11   7~%#            |   |~%#            |   |~%#            |   |~%#            9   12~%#            |   |~%#            |   |~%#            |   |~%#           10   13~%zed_interfaces/Keypoint2Df[18] keypoints~%~%================================================================================~%MSG: zed_interfaces/Skeleton3D~%# Skeleton joints indices~%#        16-14   15-17~%#             \\ /~%#              0~%#              |~%#       2------1------5~%#       |    |   |    |~%#	    |    |   |    |~%#       3    |   |    6~%#       |    |   |    |~%#       |    |   |    |~%#       4    8   11   7~%#            |   |~%#            |   |~%#            |   |~%#            9   12~%#            |   |~%#            |   |~%#            |   |~%#           10   13~%zed_interfaces/Keypoint3D[18] keypoints~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObjectsStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'objects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObjectsStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'ObjectsStamped
    (cl:cons ':header (header msg))
    (cl:cons ':objects (objects msg))
))
