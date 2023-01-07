; Auto-generated. Do not edit!


(cl:in-package zed_interfaces-msg)


;//! \htmlinclude Keypoint2Di.msg.html

(cl:defclass <Keypoint2Di> (roslisp-msg-protocol:ros-message)
  ((kp
    :reader kp
    :initarg :kp
    :type (cl:vector cl:integer)
   :initform (cl:make-array 2 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass Keypoint2Di (<Keypoint2Di>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Keypoint2Di>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Keypoint2Di)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zed_interfaces-msg:<Keypoint2Di> is deprecated: use zed_interfaces-msg:Keypoint2Di instead.")))

(cl:ensure-generic-function 'kp-val :lambda-list '(m))
(cl:defmethod kp-val ((m <Keypoint2Di>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-msg:kp-val is deprecated.  Use zed_interfaces-msg:kp instead.")
  (kp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Keypoint2Di>) ostream)
  "Serializes a message object of type '<Keypoint2Di>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'kp))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Keypoint2Di>) istream)
  "Deserializes a message object of type '<Keypoint2Di>"
  (cl:setf (cl:slot-value msg 'kp) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'kp)))
    (cl:dotimes (i 2)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Keypoint2Di>)))
  "Returns string type for a message object of type '<Keypoint2Di>"
  "zed_interfaces/Keypoint2Di")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Keypoint2Di)))
  "Returns string type for a message object of type 'Keypoint2Di"
  "zed_interfaces/Keypoint2Di")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Keypoint2Di>)))
  "Returns md5sum for a message object of type '<Keypoint2Di>"
  "5d23739e59e90009d64f8e07a5e96e2b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Keypoint2Di)))
  "Returns md5sum for a message object of type 'Keypoint2Di"
  "5d23739e59e90009d64f8e07a5e96e2b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Keypoint2Di>)))
  "Returns full string definition for message of type '<Keypoint2Di>"
  (cl:format cl:nil "uint32[2] kp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Keypoint2Di)))
  "Returns full string definition for message of type 'Keypoint2Di"
  (cl:format cl:nil "uint32[2] kp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Keypoint2Di>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'kp) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Keypoint2Di>))
  "Converts a ROS message object to a list"
  (cl:list 'Keypoint2Di
    (cl:cons ':kp (kp msg))
))
