;; Auto-generated. Do not edit!


(when (boundp 'zed_interfaces::Object)
  (if (not (find-package "ZED_INTERFACES"))
    (make-package "ZED_INTERFACES"))
  (shadow 'Object (find-package "ZED_INTERFACES")))
(unless (find-package "ZED_INTERFACES::OBJECT")
  (make-package "ZED_INTERFACES::OBJECT"))

(in-package "ROS")
;;//! \htmlinclude Object.msg.html


(defclass zed_interfaces::Object
  :super ros::object
  :slots (_label _label_id _sublabel _confidence _position _position_covariance _velocity _tracking_available _tracking_state _action_state _bounding_box_2d _bounding_box_3d _dimensions_3d _skeleton_available _head_bounding_box_2d _head_bounding_box_3d _head_position _skeleton_2d _skeleton_3d ))

(defmethod zed_interfaces::Object
  (:init
   (&key
    ((:label __label) "")
    ((:label_id __label_id) 0)
    ((:sublabel __sublabel) "")
    ((:confidence __confidence) 0.0)
    ((:position __position) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:position_covariance __position_covariance) (make-array 6 :initial-element 0.0 :element-type :float))
    ((:velocity __velocity) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:tracking_available __tracking_available) nil)
    ((:tracking_state __tracking_state) 0)
    ((:action_state __action_state) 0)
    ((:bounding_box_2d __bounding_box_2d) (instance zed_interfaces::BoundingBox2Di :init))
    ((:bounding_box_3d __bounding_box_3d) (instance zed_interfaces::BoundingBox3D :init))
    ((:dimensions_3d __dimensions_3d) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:skeleton_available __skeleton_available) nil)
    ((:head_bounding_box_2d __head_bounding_box_2d) (instance zed_interfaces::BoundingBox2Df :init))
    ((:head_bounding_box_3d __head_bounding_box_3d) (instance zed_interfaces::BoundingBox3D :init))
    ((:head_position __head_position) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:skeleton_2d __skeleton_2d) (instance zed_interfaces::Skeleton2D :init))
    ((:skeleton_3d __skeleton_3d) (instance zed_interfaces::Skeleton3D :init))
    )
   (send-super :init)
   (setq _label (string __label))
   (setq _label_id (round __label_id))
   (setq _sublabel (string __sublabel))
   (setq _confidence (float __confidence))
   (setq _position __position)
   (setq _position_covariance __position_covariance)
   (setq _velocity __velocity)
   (setq _tracking_available __tracking_available)
   (setq _tracking_state (round __tracking_state))
   (setq _action_state (round __action_state))
   (setq _bounding_box_2d __bounding_box_2d)
   (setq _bounding_box_3d __bounding_box_3d)
   (setq _dimensions_3d __dimensions_3d)
   (setq _skeleton_available __skeleton_available)
   (setq _head_bounding_box_2d __head_bounding_box_2d)
   (setq _head_bounding_box_3d __head_bounding_box_3d)
   (setq _head_position __head_position)
   (setq _skeleton_2d __skeleton_2d)
   (setq _skeleton_3d __skeleton_3d)
   self)
  (:label
   (&optional __label)
   (if __label (setq _label __label)) _label)
  (:label_id
   (&optional __label_id)
   (if __label_id (setq _label_id __label_id)) _label_id)
  (:sublabel
   (&optional __sublabel)
   (if __sublabel (setq _sublabel __sublabel)) _sublabel)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:position_covariance
   (&optional __position_covariance)
   (if __position_covariance (setq _position_covariance __position_covariance)) _position_covariance)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:tracking_available
   (&optional (__tracking_available :null))
   (if (not (eq __tracking_available :null)) (setq _tracking_available __tracking_available)) _tracking_available)
  (:tracking_state
   (&optional __tracking_state)
   (if __tracking_state (setq _tracking_state __tracking_state)) _tracking_state)
  (:action_state
   (&optional __action_state)
   (if __action_state (setq _action_state __action_state)) _action_state)
  (:bounding_box_2d
   (&rest __bounding_box_2d)
   (if (keywordp (car __bounding_box_2d))
       (send* _bounding_box_2d __bounding_box_2d)
     (progn
       (if __bounding_box_2d (setq _bounding_box_2d (car __bounding_box_2d)))
       _bounding_box_2d)))
  (:bounding_box_3d
   (&rest __bounding_box_3d)
   (if (keywordp (car __bounding_box_3d))
       (send* _bounding_box_3d __bounding_box_3d)
     (progn
       (if __bounding_box_3d (setq _bounding_box_3d (car __bounding_box_3d)))
       _bounding_box_3d)))
  (:dimensions_3d
   (&optional __dimensions_3d)
   (if __dimensions_3d (setq _dimensions_3d __dimensions_3d)) _dimensions_3d)
  (:skeleton_available
   (&optional (__skeleton_available :null))
   (if (not (eq __skeleton_available :null)) (setq _skeleton_available __skeleton_available)) _skeleton_available)
  (:head_bounding_box_2d
   (&rest __head_bounding_box_2d)
   (if (keywordp (car __head_bounding_box_2d))
       (send* _head_bounding_box_2d __head_bounding_box_2d)
     (progn
       (if __head_bounding_box_2d (setq _head_bounding_box_2d (car __head_bounding_box_2d)))
       _head_bounding_box_2d)))
  (:head_bounding_box_3d
   (&rest __head_bounding_box_3d)
   (if (keywordp (car __head_bounding_box_3d))
       (send* _head_bounding_box_3d __head_bounding_box_3d)
     (progn
       (if __head_bounding_box_3d (setq _head_bounding_box_3d (car __head_bounding_box_3d)))
       _head_bounding_box_3d)))
  (:head_position
   (&optional __head_position)
   (if __head_position (setq _head_position __head_position)) _head_position)
  (:skeleton_2d
   (&rest __skeleton_2d)
   (if (keywordp (car __skeleton_2d))
       (send* _skeleton_2d __skeleton_2d)
     (progn
       (if __skeleton_2d (setq _skeleton_2d (car __skeleton_2d)))
       _skeleton_2d)))
  (:skeleton_3d
   (&rest __skeleton_3d)
   (if (keywordp (car __skeleton_3d))
       (send* _skeleton_3d __skeleton_3d)
     (progn
       (if __skeleton_3d (setq _skeleton_3d (car __skeleton_3d)))
       _skeleton_3d)))
  (:serialization-length
   ()
   (+
    ;; string _label
    4 (length _label)
    ;; int16 _label_id
    2
    ;; string _sublabel
    4 (length _sublabel)
    ;; float32 _confidence
    4
    ;; float32[3] _position
    (* 4    3)
    ;; float32[6] _position_covariance
    (* 4    6)
    ;; float32[3] _velocity
    (* 4    3)
    ;; bool _tracking_available
    1
    ;; int8 _tracking_state
    1
    ;; int8 _action_state
    1
    ;; zed_interfaces/BoundingBox2Di _bounding_box_2d
    (send _bounding_box_2d :serialization-length)
    ;; zed_interfaces/BoundingBox3D _bounding_box_3d
    (send _bounding_box_3d :serialization-length)
    ;; float32[3] _dimensions_3d
    (* 4    3)
    ;; bool _skeleton_available
    1
    ;; zed_interfaces/BoundingBox2Df _head_bounding_box_2d
    (send _head_bounding_box_2d :serialization-length)
    ;; zed_interfaces/BoundingBox3D _head_bounding_box_3d
    (send _head_bounding_box_3d :serialization-length)
    ;; float32[3] _head_position
    (* 4    3)
    ;; zed_interfaces/Skeleton2D _skeleton_2d
    (send _skeleton_2d :serialization-length)
    ;; zed_interfaces/Skeleton3D _skeleton_3d
    (send _skeleton_3d :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _label
       (write-long (length _label) s) (princ _label s)
     ;; int16 _label_id
       (write-word _label_id s)
     ;; string _sublabel
       (write-long (length _sublabel) s) (princ _sublabel s)
     ;; float32 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32[3] _position
     (dotimes (i 3)
       (sys::poke (elt _position i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[6] _position_covariance
     (dotimes (i 6)
       (sys::poke (elt _position_covariance i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[3] _velocity
     (dotimes (i 3)
       (sys::poke (elt _velocity i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; bool _tracking_available
       (if _tracking_available (write-byte -1 s) (write-byte 0 s))
     ;; int8 _tracking_state
       (write-byte _tracking_state s)
     ;; int8 _action_state
       (write-byte _action_state s)
     ;; zed_interfaces/BoundingBox2Di _bounding_box_2d
       (send _bounding_box_2d :serialize s)
     ;; zed_interfaces/BoundingBox3D _bounding_box_3d
       (send _bounding_box_3d :serialize s)
     ;; float32[3] _dimensions_3d
     (dotimes (i 3)
       (sys::poke (elt _dimensions_3d i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; bool _skeleton_available
       (if _skeleton_available (write-byte -1 s) (write-byte 0 s))
     ;; zed_interfaces/BoundingBox2Df _head_bounding_box_2d
       (send _head_bounding_box_2d :serialize s)
     ;; zed_interfaces/BoundingBox3D _head_bounding_box_3d
       (send _head_bounding_box_3d :serialize s)
     ;; float32[3] _head_position
     (dotimes (i 3)
       (sys::poke (elt _head_position i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; zed_interfaces/Skeleton2D _skeleton_2d
       (send _skeleton_2d :serialize s)
     ;; zed_interfaces/Skeleton3D _skeleton_3d
       (send _skeleton_3d :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _label
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _label (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int16 _label_id
     (setq _label_id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; string _sublabel
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _sublabel (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _confidence
     (setq _confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32[3] _position
   (dotimes (i (length _position))
     (setf (elt _position i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[6] _position_covariance
   (dotimes (i (length _position_covariance))
     (setf (elt _position_covariance i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[3] _velocity
   (dotimes (i (length _velocity))
     (setf (elt _velocity i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; bool _tracking_available
     (setq _tracking_available (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int8 _tracking_state
     (setq _tracking_state (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _tracking_state 127) (setq _tracking_state (- _tracking_state 256)))
   ;; int8 _action_state
     (setq _action_state (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _action_state 127) (setq _action_state (- _action_state 256)))
   ;; zed_interfaces/BoundingBox2Di _bounding_box_2d
     (send _bounding_box_2d :deserialize buf ptr-) (incf ptr- (send _bounding_box_2d :serialization-length))
   ;; zed_interfaces/BoundingBox3D _bounding_box_3d
     (send _bounding_box_3d :deserialize buf ptr-) (incf ptr- (send _bounding_box_3d :serialization-length))
   ;; float32[3] _dimensions_3d
   (dotimes (i (length _dimensions_3d))
     (setf (elt _dimensions_3d i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; bool _skeleton_available
     (setq _skeleton_available (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; zed_interfaces/BoundingBox2Df _head_bounding_box_2d
     (send _head_bounding_box_2d :deserialize buf ptr-) (incf ptr- (send _head_bounding_box_2d :serialization-length))
   ;; zed_interfaces/BoundingBox3D _head_bounding_box_3d
     (send _head_bounding_box_3d :deserialize buf ptr-) (incf ptr- (send _head_bounding_box_3d :serialization-length))
   ;; float32[3] _head_position
   (dotimes (i (length _head_position))
     (setf (elt _head_position i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; zed_interfaces/Skeleton2D _skeleton_2d
     (send _skeleton_2d :deserialize buf ptr-) (incf ptr- (send _skeleton_2d :serialization-length))
   ;; zed_interfaces/Skeleton3D _skeleton_3d
     (send _skeleton_3d :deserialize buf ptr-) (incf ptr- (send _skeleton_3d :serialization-length))
   ;;
   self)
  )

(setf (get zed_interfaces::Object :md5sum-) "20668bd5819407b0c69c8d1de510a3a2")
(setf (get zed_interfaces::Object :datatype-) "zed_interfaces/Object")
(setf (get zed_interfaces::Object :definition-)
      "# Object label
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



(provide :zed_interfaces/Object "20668bd5819407b0c69c8d1de510a3a2")


