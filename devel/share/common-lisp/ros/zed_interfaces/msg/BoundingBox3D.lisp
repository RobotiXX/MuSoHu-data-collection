; Auto-generated. Do not edit!


(cl:in-package zed_interfaces-msg)


;//! \htmlinclude BoundingBox3D.msg.html

(cl:defclass <BoundingBox3D> (roslisp-msg-protocol:ros-message)
  ((corners
    :reader corners
    :initarg :corners
    :type (cl:vector zed_interfaces-msg:Keypoint3D)
   :initform (cl:make-array 8 :element-type 'zed_interfaces-msg:Keypoint3D :initial-element (cl:make-instance 'zed_interfaces-msg:Keypoint3D))))
)

(cl:defclass BoundingBox3D (<BoundingBox3D>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BoundingBox3D>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BoundingBox3D)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zed_interfaces-msg:<BoundingBox3D> is deprecated: use zed_interfaces-msg:BoundingBox3D instead.")))

(cl:ensure-generic-function 'corners-val :lambda-list '(m))
(cl:defmethod corners-val ((m <BoundingBox3D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-msg:corners-val is deprecated.  Use zed_interfaces-msg:corners instead.")
  (corners m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BoundingBox3D>) ostream)
  "Serializes a message object of type '<BoundingBox3D>"
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'corners))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BoundingBox3D>) istream)
  "Deserializes a message object of type '<BoundingBox3D>"
  (cl:setf (cl:slot-value msg 'corners) (cl:make-array 8))
  (cl:let ((vals (cl:slot-value msg 'corners)))
    (cl:dotimes (i 8)
    (cl:setf (cl:aref vals i) (cl:make-instance 'zed_interfaces-msg:Keypoint3D))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BoundingBox3D>)))
  "Returns string type for a message object of type '<BoundingBox3D>"
  "zed_interfaces/BoundingBox3D")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BoundingBox3D)))
  "Returns string type for a message object of type 'BoundingBox3D"
  "zed_interfaces/BoundingBox3D")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BoundingBox3D>)))
  "Returns md5sum for a message object of type '<BoundingBox3D>"
  "3750b81144ba1b26f88ce23eeb4efd34")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BoundingBox3D)))
  "Returns md5sum for a message object of type 'BoundingBox3D"
  "3750b81144ba1b26f88ce23eeb4efd34")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BoundingBox3D>)))
  "Returns full string definition for message of type '<BoundingBox3D>"
  (cl:format cl:nil "#      1 ------- 2~%#     /.        /|~%#    0 ------- 3 |~%#    | .       | |~%#    | 5.......| 6~%#    |.        |/~%#    4 ------- 7~%zed_interfaces/Keypoint3D[8] corners~%~%================================================================================~%MSG: zed_interfaces/Keypoint3D~%float32[3] kp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BoundingBox3D)))
  "Returns full string definition for message of type 'BoundingBox3D"
  (cl:format cl:nil "#      1 ------- 2~%#     /.        /|~%#    0 ------- 3 |~%#    | .       | |~%#    | 5.......| 6~%#    |.        |/~%#    4 ------- 7~%zed_interfaces/Keypoint3D[8] corners~%~%================================================================================~%MSG: zed_interfaces/Keypoint3D~%float32[3] kp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BoundingBox3D>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'corners) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BoundingBox3D>))
  "Converts a ROS message object to a list"
  (cl:list 'BoundingBox3D
    (cl:cons ':corners (corners msg))
))
