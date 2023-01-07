;; Auto-generated. Do not edit!


(when (boundp 'zed_interfaces::ObjectsStamped)
  (if (not (find-package "ZED_INTERFACES"))
    (make-package "ZED_INTERFACES"))
  (shadow 'ObjectsStamped (find-package "ZED_INTERFACES")))
(unless (find-package "ZED_INTERFACES::OBJECTSSTAMPED")
  (make-package "ZED_INTERFACES::OBJECTSSTAMPED"))

(in-package "ROS")
;;//! \htmlinclude ObjectsStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass zed_interfaces::ObjectsStamped
  :super ros::object
  :slots (_header _objects ))

(defmethod zed_interfaces::ObjectsStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:objects __objects) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _objects __objects)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:objects
   (&rest __objects)
   (if (keywordp (car __objects))
       (send* _objects __objects)
     (progn
       (if __objects (setq _objects (car __objects)))
       _objects)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; zed_interfaces/Object[] _objects
    (apply #'+ (send-all _objects :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; zed_interfaces/Object[] _objects
     (write-long (length _objects) s)
     (dolist (elem _objects)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; zed_interfaces/Object[] _objects
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _objects (let (r) (dotimes (i n) (push (instance zed_interfaces::Object :init) r)) r))
     (dolist (elem- _objects)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get zed_interfaces::ObjectsStamped :md5sum-) "e91047b6614d7847b9669e1a2fe302b2")
(setf (get zed_interfaces::ObjectsStamped :datatype-) "zed_interfaces/ObjectsStamped")
(setf (get zed_interfaces::ObjectsStamped :definition-)
      "# Standard Header
std_msgs/Header header

# Array of `object_stamped` topics
zed_interfaces/Object[] objects

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

================================================================================
MSG: zed_interfaces/Object
# Object label
string label

# Object label ID
int16 label_id

# Object sub
string sublabel

# Object confidence level (1-99)
float32 confidence

# Object centroid position
float32[3] position

# Position covariance
float32[6] position_covariance

# Object velocity
float32[3] velocity

# Tracking available
bool tracking_available

# Tracking state
# 0 -> OFF (object not valid)
# 1 -> OK
# 2 -> SEARCHING (occlusion occurred, trajectory is estimated)
int8 tracking_state

# Action state
# 0 -> IDLE
# 2 -> MOVING
int8 action_state

# 2D Bounding box projected to Camera image
zed_interfaces/BoundingBox2Di bounding_box_2d

# 3D Bounding box in world frame
zed_interfaces/BoundingBox3D bounding_box_3d

# 3D dimensions (width, height, lenght)
float32[3] dimensions_3d

# Is skeleton available?
bool skeleton_available

# 2D Bounding box projected to Camera image of the person head
zed_interfaces/BoundingBox2Df head_bounding_box_2d

# 3D Bounding box in world frame of the person head
zed_interfaces/BoundingBox3D head_bounding_box_3d

# 3D position of the centroid of the person head
float32[3] head_position

# 2D Person skeleton projected to Camera image
zed_interfaces/Skeleton2D skeleton_2d

# 3D Person skeleton in world frame
zed_interfaces/Skeleton3D skeleton_3d

================================================================================
MSG: zed_interfaces/BoundingBox2Di
#      0 ------- 1
#      |         |
#      |         |
#      |         |
#      3 ------- 2
zed_interfaces/Keypoint2Di[4] corners

================================================================================
MSG: zed_interfaces/Keypoint2Di
uint32[2] kp

================================================================================
MSG: zed_interfaces/BoundingBox3D
#      1 ------- 2
#     /.        /|
#    0 ------- 3 |
#    | .       | |
#    | 5.......| 6
#    |.        |/
#    4 ------- 7
zed_interfaces/Keypoint3D[8] corners

================================================================================
MSG: zed_interfaces/Keypoint3D
float32[3] kp

================================================================================
MSG: zed_interfaces/BoundingBox2Df
#      0 ------- 1
#      |         |
#      |         |
#      |         |
#      3 ------- 2
zed_interfaces/Keypoint2Df[4] corners

================================================================================
MSG: zed_interfaces/Keypoint2Df
float32[2] kp

================================================================================
MSG: zed_interfaces/Skeleton2D
# Skeleton joints indices
#        16-14   15-17
#             \\ /
#              0
#              |
#       2------1------5
#       |    |   |    |
#	    |    |   |    |
#       3    |   |    6
#       |    |   |    |
#       |    |   |    |
#       4    8   11   7
#            |   |
#            |   |
#            |   |
#            9   12
#            |   |
#            |   |
#            |   |
#           10   13
zed_interfaces/Keypoint2Df[18] keypoints

================================================================================
MSG: zed_interfaces/Skeleton3D
# Skeleton joints indices
#        16-14   15-17
#             \\ /
#              0
#              |
#       2------1------5
#       |    |   |    |
#	    |    |   |    |
#       3    |   |    6
#       |    |   |    |
#       |    |   |    |
#       4    8   11   7
#            |   |
#            |   |
#            |   |
#            9   12
#            |   |
#            |   |
#            |   |
#           10   13
zed_interfaces/Keypoint3D[18] keypoints

")



(provide :zed_interfaces/ObjectsStamped "e91047b6614d7847b9669e1a2fe302b2")


