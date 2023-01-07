; Auto-generated. Do not edit!


(cl:in-package zed_interfaces-msg)


;//! \htmlinclude BoundingBox2Di.msg.html

(cl:defclass <BoundingBox2Di> (roslisp-msg-protocol:ros-message)
  ((corners
    :reader corners
    :initarg :corners
    :type (cl:vector zed_interfaces-msg:Keypoint2Di)
   :initform (cl:make-array 4 :element-type 'zed_interfaces-msg:Keypoint2Di :initial-element (cl:make-instance 'zed_interfaces-msg:Keypoint2Di))))
)

(cl:defclass BoundingBox2Di (<BoundingBox2Di>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BoundingBox2Di>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BoundingBox2Di)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zed_interfaces-msg:<BoundingBox2Di> is deprecated: use zed_interfaces-msg:BoundingBox2Di instead.")))

(cl:ensure-generic-function 'corners-val :lambda-list '(m))
(cl:defmethod corners-val ((m <BoundingBox2Di>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-msg:corners-val is deprecated.  Use zed_interfaces-msg:corners instead.")
  (corners m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BoundingBox2Di>) ostream)
  "Serializes a message object of type '<BoundingBox2Di>"
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'corners))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BoundingBox2Di>) istream)
  "Deserializes a message object of type '<BoundingBox2Di>"
  (cl:setf (cl:slot-value msg 'corners) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'corners)))
    (cl:dotimes (i 4)
    (cl:setf (cl:aref vals i) (cl:make-instance 'zed_interfaces-msg:Keypoint2Di))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BoundingBox2Di>)))
  "Returns string type for a message object of type '<BoundingBox2Di>"
  "zed_interfaces/BoundingBox2Di")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BoundingBox2Di)))
  "Returns string type for a message object of type 'BoundingBox2Di"
  "zed_interfaces/BoundingBox2Di")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BoundingBox2Di>)))
  "Returns md5sum for a message object of type '<BoundingBox2Di>"
  "48f8f53e85eafba49fb9648f6258d114")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BoundingBox2Di)))
  "Returns md5sum for a message object of type 'BoundingBox2Di"
  "48f8f53e85eafba49fb9648f6258d114")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BoundingBox2Di>)))
  "Returns full string definition for message of type '<BoundingBox2Di>"
  (cl:format cl:nil "#      0 ------- 1~%#      |         |~%#      |         |~%#      |         |~%#      3 ------- 2~%zed_interfaces/Keypoint2Di[4] corners~%~%================================================================================~%MSG: zed_interfaces/Keypoint2Di~%uint32[2] kp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BoundingBox2Di)))
  "Returns full string definition for message of type 'BoundingBox2Di"
  (cl:format cl:nil "#      0 ------- 1~%#      |         |~%#      |         |~%#      |         |~%#      3 ------- 2~%zed_interfaces/Keypoint2Di[4] corners~%~%================================================================================~%MSG: zed_interfaces/Keypoint2Di~%uint32[2] kp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BoundingBox2Di>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'corners) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BoundingBox2Di>))
  "Converts a ROS message object to a list"
  (cl:list 'BoundingBox2Di
    (cl:cons ':corners (corners msg))
))
