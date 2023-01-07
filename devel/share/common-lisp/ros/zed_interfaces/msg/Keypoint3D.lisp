; Auto-generated. Do not edit!


(cl:in-package zed_interfaces-msg)


;//! \htmlinclude Keypoint3D.msg.html

(cl:defclass <Keypoint3D> (roslisp-msg-protocol:ros-message)
  ((kp
    :reader kp
    :initarg :kp
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass Keypoint3D (<Keypoint3D>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Keypoint3D>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Keypoint3D)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zed_interfaces-msg:<Keypoint3D> is deprecated: use zed_interfaces-msg:Keypoint3D instead.")))

(cl:ensure-generic-function 'kp-val :lambda-list '(m))
(cl:defmethod kp-val ((m <Keypoint3D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-msg:kp-val is deprecated.  Use zed_interfaces-msg:kp instead.")
  (kp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Keypoint3D>) ostream)
  "Serializes a message object of type '<Keypoint3D>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'kp))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Keypoint3D>) istream)
  "Deserializes a message object of type '<Keypoint3D>"
  (cl:setf (cl:slot-value msg 'kp) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'kp)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Keypoint3D>)))
  "Returns string type for a message object of type '<Keypoint3D>"
  "zed_interfaces/Keypoint3D")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Keypoint3D)))
  "Returns string type for a message object of type 'Keypoint3D"
  "zed_interfaces/Keypoint3D")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Keypoint3D>)))
  "Returns md5sum for a message object of type '<Keypoint3D>"
  "f8f017135a763e4b81273453c9d8ef62")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Keypoint3D)))
  "Returns md5sum for a message object of type 'Keypoint3D"
  "f8f017135a763e4b81273453c9d8ef62")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Keypoint3D>)))
  "Returns full string definition for message of type '<Keypoint3D>"
  (cl:format cl:nil "float32[3] kp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Keypoint3D)))
  "Returns full string definition for message of type 'Keypoint3D"
  (cl:format cl:nil "float32[3] kp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Keypoint3D>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'kp) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Keypoint3D>))
  "Converts a ROS message object to a list"
  (cl:list 'Keypoint3D
    (cl:cons ':kp (kp msg))
))
