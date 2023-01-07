; Auto-generated. Do not edit!


(cl:in-package zed_interfaces-msg)


;//! \htmlinclude PlaneStamped.msg.html

(cl:defclass <PlaneStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (mesh
    :reader mesh
    :initarg :mesh
    :type shape_msgs-msg:Mesh
    :initform (cl:make-instance 'shape_msgs-msg:Mesh))
   (coefficients
    :reader coefficients
    :initarg :coefficients
    :type shape_msgs-msg:Plane
    :initform (cl:make-instance 'shape_msgs-msg:Plane))
   (normal
    :reader normal
    :initarg :normal
    :type geometry_msgs-msg:Point32
    :initform (cl:make-instance 'geometry_msgs-msg:Point32))
   (center
    :reader center
    :initarg :center
    :type geometry_msgs-msg:Point32
    :initform (cl:make-instance 'geometry_msgs-msg:Point32))
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Transform
    :initform (cl:make-instance 'geometry_msgs-msg:Transform))
   (extents
    :reader extents
    :initarg :extents
    :type (cl:vector cl:float)
   :initform (cl:make-array 2 :element-type 'cl:float :initial-element 0.0))
   (bounds
    :reader bounds
    :initarg :bounds
    :type geometry_msgs-msg:Polygon
    :initform (cl:make-instance 'geometry_msgs-msg:Polygon)))
)

(cl:defclass PlaneStamped (<PlaneStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlaneStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlaneStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zed_interfaces-msg:<PlaneStamped> is deprecated: use zed_interfaces-msg:PlaneStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PlaneStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-msg:header-val is deprecated.  Use zed_interfaces-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'mesh-val :lambda-list '(m))
(cl:defmethod mesh-val ((m <PlaneStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-msg:mesh-val is deprecated.  Use zed_interfaces-msg:mesh instead.")
  (mesh m))

(cl:ensure-generic-function 'coefficients-val :lambda-list '(m))
(cl:defmethod coefficients-val ((m <PlaneStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-msg:coefficients-val is deprecated.  Use zed_interfaces-msg:coefficients instead.")
  (coefficients m))

(cl:ensure-generic-function 'normal-val :lambda-list '(m))
(cl:defmethod normal-val ((m <PlaneStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-msg:normal-val is deprecated.  Use zed_interfaces-msg:normal instead.")
  (normal m))

(cl:ensure-generic-function 'center-val :lambda-list '(m))
(cl:defmethod center-val ((m <PlaneStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-msg:center-val is deprecated.  Use zed_interfaces-msg:center instead.")
  (center m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <PlaneStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-msg:pose-val is deprecated.  Use zed_interfaces-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'extents-val :lambda-list '(m))
(cl:defmethod extents-val ((m <PlaneStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-msg:extents-val is deprecated.  Use zed_interfaces-msg:extents instead.")
  (extents m))

(cl:ensure-generic-function 'bounds-val :lambda-list '(m))
(cl:defmethod bounds-val ((m <PlaneStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-msg:bounds-val is deprecated.  Use zed_interfaces-msg:bounds instead.")
  (bounds m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlaneStamped>) ostream)
  "Serializes a message object of type '<PlaneStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mesh) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'coefficients) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'normal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'center) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'extents))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bounds) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlaneStamped>) istream)
  "Deserializes a message object of type '<PlaneStamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mesh) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'coefficients) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'normal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'center) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (cl:setf (cl:slot-value msg 'extents) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'extents)))
    (cl:dotimes (i 2)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bounds) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlaneStamped>)))
  "Returns string type for a message object of type '<PlaneStamped>"
  "zed_interfaces/PlaneStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlaneStamped)))
  "Returns string type for a message object of type 'PlaneStamped"
  "zed_interfaces/PlaneStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlaneStamped>)))
  "Returns md5sum for a message object of type '<PlaneStamped>"
  "1ae4cda68097919aea83add5dc8f86c1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlaneStamped)))
  "Returns md5sum for a message object of type 'PlaneStamped"
  "1ae4cda68097919aea83add5dc8f86c1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlaneStamped>)))
  "Returns full string definition for message of type '<PlaneStamped>"
  (cl:format cl:nil "# Standard Header~%std_msgs/Header header~%~%# Mesh of the place~%shape_msgs/Mesh mesh~%~%# Representation of a plane, using the plane equation ax + by + cz + d = 0~%shape_msgs/Plane coefficients~%~%# Normal vector~%geometry_msgs/Point32 normal~%~%# Center point ~%geometry_msgs/Point32 center~%~%# Plane pose relative to the global reference frame~%geometry_msgs/Transform pose~%~%# Width and height of the bounding rectangle around the plane contours~%float32[2] extents~%~%# The polygon bounds of the plane~%geometry_msgs/Polygon bounds~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: shape_msgs/Mesh~%# Definition of a mesh~%~%# list of triangles; the index values refer to positions in vertices[]~%MeshTriangle[] triangles~%~%# the actual vertices that make up the mesh~%geometry_msgs/Point[] vertices~%~%================================================================================~%MSG: shape_msgs/MeshTriangle~%# Definition of a triangle's vertices~%uint32[3] vertex_indices~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: shape_msgs/Plane~%# Representation of a plane, using the plane equation ax + by + cz + d = 0~%~%# a := coef[0]~%# b := coef[1]~%# c := coef[2]~%# d := coef[3]~%~%float64[4] coef~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlaneStamped)))
  "Returns full string definition for message of type 'PlaneStamped"
  (cl:format cl:nil "# Standard Header~%std_msgs/Header header~%~%# Mesh of the place~%shape_msgs/Mesh mesh~%~%# Representation of a plane, using the plane equation ax + by + cz + d = 0~%shape_msgs/Plane coefficients~%~%# Normal vector~%geometry_msgs/Point32 normal~%~%# Center point ~%geometry_msgs/Point32 center~%~%# Plane pose relative to the global reference frame~%geometry_msgs/Transform pose~%~%# Width and height of the bounding rectangle around the plane contours~%float32[2] extents~%~%# The polygon bounds of the plane~%geometry_msgs/Polygon bounds~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: shape_msgs/Mesh~%# Definition of a mesh~%~%# list of triangles; the index values refer to positions in vertices[]~%MeshTriangle[] triangles~%~%# the actual vertices that make up the mesh~%geometry_msgs/Point[] vertices~%~%================================================================================~%MSG: shape_msgs/MeshTriangle~%# Definition of a triangle's vertices~%uint32[3] vertex_indices~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: shape_msgs/Plane~%# Representation of a plane, using the plane equation ax + by + cz + d = 0~%~%# a := coef[0]~%# b := coef[1]~%# c := coef[2]~%# d := coef[3]~%~%float64[4] coef~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlaneStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mesh))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'coefficients))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'normal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'center))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'extents) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bounds))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlaneStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'PlaneStamped
    (cl:cons ':header (header msg))
    (cl:cons ':mesh (mesh msg))
    (cl:cons ':coefficients (coefficients msg))
    (cl:cons ':normal (normal msg))
    (cl:cons ':center (center msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':extents (extents msg))
    (cl:cons ':bounds (bounds msg))
))
