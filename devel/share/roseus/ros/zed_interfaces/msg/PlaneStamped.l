;; Auto-generated. Do not edit!


(when (boundp 'zed_interfaces::PlaneStamped)
  (if (not (find-package "ZED_INTERFACES"))
    (make-package "ZED_INTERFACES"))
  (shadow 'PlaneStamped (find-package "ZED_INTERFACES")))
(unless (find-package "ZED_INTERFACES::PLANESTAMPED")
  (make-package "ZED_INTERFACES::PLANESTAMPED"))

(in-package "ROS")
;;//! \htmlinclude PlaneStamped.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "SHAPE_MSGS"))
  (ros::roseus-add-msgs "shape_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass zed_interfaces::PlaneStamped
  :super ros::object
  :slots (_header _mesh _coefficients _normal _center _pose _extents _bounds ))

(defmethod zed_interfaces::PlaneStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:mesh __mesh) (instance shape_msgs::Mesh :init))
    ((:coefficients __coefficients) (instance shape_msgs::Plane :init))
    ((:normal __normal) (instance geometry_msgs::Point32 :init))
    ((:center __center) (instance geometry_msgs::Point32 :init))
    ((:pose __pose) (instance geometry_msgs::Transform :init))
    ((:extents __extents) (make-array 2 :initial-element 0.0 :element-type :float))
    ((:bounds __bounds) (instance geometry_msgs::Polygon :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _mesh __mesh)
   (setq _coefficients __coefficients)
   (setq _normal __normal)
   (setq _center __center)
   (setq _pose __pose)
   (setq _extents __extents)
   (setq _bounds __bounds)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:mesh
   (&rest __mesh)
   (if (keywordp (car __mesh))
       (send* _mesh __mesh)
     (progn
       (if __mesh (setq _mesh (car __mesh)))
       _mesh)))
  (:coefficients
   (&rest __coefficients)
   (if (keywordp (car __coefficients))
       (send* _coefficients __coefficients)
     (progn
       (if __coefficients (setq _coefficients (car __coefficients)))
       _coefficients)))
  (:normal
   (&rest __normal)
   (if (keywordp (car __normal))
       (send* _normal __normal)
     (progn
       (if __normal (setq _normal (car __normal)))
       _normal)))
  (:center
   (&rest __center)
   (if (keywordp (car __center))
       (send* _center __center)
     (progn
       (if __center (setq _center (car __center)))
       _center)))
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:extents
   (&optional __extents)
   (if __extents (setq _extents __extents)) _extents)
  (:bounds
   (&rest __bounds)
   (if (keywordp (car __bounds))
       (send* _bounds __bounds)
     (progn
       (if __bounds (setq _bounds (car __bounds)))
       _bounds)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; shape_msgs/Mesh _mesh
    (send _mesh :serialization-length)
    ;; shape_msgs/Plane _coefficients
    (send _coefficients :serialization-length)
    ;; geometry_msgs/Point32 _normal
    (send _normal :serialization-length)
    ;; geometry_msgs/Point32 _center
    (send _center :serialization-length)
    ;; geometry_msgs/Transform _pose
    (send _pose :serialization-length)
    ;; float32[2] _extents
    (* 4    2)
    ;; geometry_msgs/Polygon _bounds
    (send _bounds :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; shape_msgs/Mesh _mesh
       (send _mesh :serialize s)
     ;; shape_msgs/Plane _coefficients
       (send _coefficients :serialize s)
     ;; geometry_msgs/Point32 _normal
       (send _normal :serialize s)
     ;; geometry_msgs/Point32 _center
       (send _center :serialize s)
     ;; geometry_msgs/Transform _pose
       (send _pose :serialize s)
     ;; float32[2] _extents
     (dotimes (i 2)
       (sys::poke (elt _extents i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; geometry_msgs/Polygon _bounds
       (send _bounds :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; shape_msgs/Mesh _mesh
     (send _mesh :deserialize buf ptr-) (incf ptr- (send _mesh :serialization-length))
   ;; shape_msgs/Plane _coefficients
     (send _coefficients :deserialize buf ptr-) (incf ptr- (send _coefficients :serialization-length))
   ;; geometry_msgs/Point32 _normal
     (send _normal :deserialize buf ptr-) (incf ptr- (send _normal :serialization-length))
   ;; geometry_msgs/Point32 _center
     (send _center :deserialize buf ptr-) (incf ptr- (send _center :serialization-length))
   ;; geometry_msgs/Transform _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; float32[2] _extents
   (dotimes (i (length _extents))
     (setf (elt _extents i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; geometry_msgs/Polygon _bounds
     (send _bounds :deserialize buf ptr-) (incf ptr- (send _bounds :serialization-length))
   ;;
   self)
  )

(setf (get zed_interfaces::PlaneStamped :md5sum-) "1ae4cda68097919aea83add5dc8f86c1")
(setf (get zed_interfaces::PlaneStamped :datatype-) "zed_interfaces/PlaneStamped")
(setf (get zed_interfaces::PlaneStamped :definition-)
      "# Standard Header
std_msgs/Header header

# Mesh of the place
shape_msgs/Mesh mesh

# Representation of a plane, using the plane equation ax + by + cz + d = 0
shape_msgs/Plane coefficients

# Normal vector
geometry_msgs/Point32 normal

# Center point 
geometry_msgs/Point32 center

# Plane pose relative to the global reference frame
geometry_msgs/Transform pose

# Width and height of the bounding rectangle around the plane contours
float32[2] extents

# The polygon bounds of the plane
geometry_msgs/Polygon bounds


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
MSG: shape_msgs/Mesh
# Definition of a mesh

# list of triangles; the index values refer to positions in vertices[]
MeshTriangle[] triangles

# the actual vertices that make up the mesh
geometry_msgs/Point[] vertices

================================================================================
MSG: shape_msgs/MeshTriangle
# Definition of a triangle's vertices
uint32[3] vertex_indices

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: shape_msgs/Plane
# Representation of a plane, using the plane equation ax + by + cz + d = 0

# a := coef[0]
# b := coef[1]
# c := coef[2]
# d := coef[3]

float64[4] coef

================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/Polygon
#A specification of a polygon where the first and last points are assumed to be connected
Point32[] points

")



(provide :zed_interfaces/PlaneStamped "1ae4cda68097919aea83add5dc8f86c1")


