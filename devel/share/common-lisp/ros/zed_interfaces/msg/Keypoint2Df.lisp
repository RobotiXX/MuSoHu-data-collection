; Auto-generated. Do not edit!


(cl:in-package zed_interfaces-msg)


;//! \htmlinclude Keypoint2Df.msg.html

(cl:defclass <Keypoint2Df> (roslisp-msg-protocol:ros-message)
  ((kp
    :reader kp
    :initarg :kp
    :type (cl:vector cl:float)
   :initform (cl:make-array 2 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass Keypoint2Df (<Keypoint2Df>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Keypoint2Df>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Keypoint2Df)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zed_interfaces-msg:<Keypoint2Df> is deprecated: use zed_interfaces-msg:Keypoint2Df instead.")))

(cl:ensure-generic-function 'kp-val :lambda-list '(m))
(cl:defmethod kp-val ((m <Keypoint2Df>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-msg:kp-val is deprecated.  Use zed_interfaces-msg:kp instead.")
  (kp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Keypoint2Df>) ostream)
  "Serializes a message object of type '<Keypoint2Df>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'kp))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Keypoint2Df>) istream)
  "Deserializes a message object of type '<Keypoint2Df>"
  (cl:setf (cl:slot-value msg 'kp) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'kp)))
    (cl:dotimes (i 2)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Keypoint2Df>)))
  "Returns string type for a message object of type '<Keypoint2Df>"
  "zed_interfaces/Keypoint2Df")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Keypoint2Df)))
  "Returns string type for a message object of type 'Keypoint2Df"
  "zed_interfaces/Keypoint2Df")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Keypoint2Df>)))
  "Returns md5sum for a message object of type '<Keypoint2Df>"
  "cf5ebcd50ce370a9811fce73a9095e7b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Keypoint2Df)))
  "Returns md5sum for a message object of type 'Keypoint2Df"
  "cf5ebcd50ce370a9811fce73a9095e7b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Keypoint2Df>)))
  "Returns full string definition for message of type '<Keypoint2Df>"
  (cl:format cl:nil "float32[2] kp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Keypoint2Df)))
  "Returns full string definition for message of type 'Keypoint2Df"
  (cl:format cl:nil "float32[2] kp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Keypoint2Df>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'kp) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Keypoint2Df>))
  "Converts a ROS message object to a list"
  (cl:list 'Keypoint2Df
    (cl:cons ':kp (kp msg))
))
