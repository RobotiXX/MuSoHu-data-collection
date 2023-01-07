; Auto-generated. Do not edit!


(cl:in-package zed_interfaces-msg)


;//! \htmlinclude BoundingBox2Df.msg.html

(cl:defclass <BoundingBox2Df> (roslisp-msg-protocol:ros-message)
  ((corners
    :reader corners
    :initarg :corners
    :type (cl:vector zed_interfaces-msg:Keypoint2Df)
   :initform (cl:make-array 4 :element-type 'zed_interfaces-msg:Keypoint2Df :initial-element (cl:make-instance 'zed_interfaces-msg:Keypoint2Df))))
)

(cl:defclass BoundingBox2Df (<BoundingBox2Df>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BoundingBox2Df>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BoundingBox2Df)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zed_interfaces-msg:<BoundingBox2Df> is deprecated: use zed_interfaces-msg:BoundingBox2Df instead.")))

(cl:ensure-generic-function 'corners-val :lambda-list '(m))
(cl:defmethod corners-val ((m <BoundingBox2Df>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-msg:corners-val is deprecated.  Use zed_interfaces-msg:corners instead.")
  (corners m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BoundingBox2Df>) ostream)
  "Serializes a message object of type '<BoundingBox2Df>"
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'corners))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BoundingBox2Df>) istream)
  "Deserializes a message object of type '<BoundingBox2Df>"
  (cl:setf (cl:slot-value msg 'corners) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'corners)))
    (cl:dotimes (i 4)
    (cl:setf (cl:aref vals i) (cl:make-instance 'zed_interfaces-msg:Keypoint2Df))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BoundingBox2Df>)))
  "Returns string type for a message object of type '<BoundingBox2Df>"
  "zed_interfaces/BoundingBox2Df")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BoundingBox2Df)))
  "Returns string type for a message object of type 'BoundingBox2Df"
  "zed_interfaces/BoundingBox2Df")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BoundingBox2Df>)))
  "Returns md5sum for a message object of type '<BoundingBox2Df>"
  "8ce1e9ea2b267e0dce506c975b1391b0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BoundingBox2Df)))
  "Returns md5sum for a message object of type 'BoundingBox2Df"
  "8ce1e9ea2b267e0dce506c975b1391b0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BoundingBox2Df>)))
  "Returns full string definition for message of type '<BoundingBox2Df>"
  (cl:format cl:nil "#      0 ------- 1~%#      |         |~%#      |         |~%#      |         |~%#      3 ------- 2~%zed_interfaces/Keypoint2Df[4] corners~%~%================================================================================~%MSG: zed_interfaces/Keypoint2Df~%float32[2] kp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BoundingBox2Df)))
  "Returns full string definition for message of type 'BoundingBox2Df"
  (cl:format cl:nil "#      0 ------- 1~%#      |         |~%#      |         |~%#      |         |~%#      3 ------- 2~%zed_interfaces/Keypoint2Df[4] corners~%~%================================================================================~%MSG: zed_interfaces/Keypoint2Df~%float32[2] kp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BoundingBox2Df>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'corners) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BoundingBox2Df>))
  "Converts a ROS message object to a list"
  (cl:list 'BoundingBox2Df
    (cl:cons ':corners (corners msg))
))
