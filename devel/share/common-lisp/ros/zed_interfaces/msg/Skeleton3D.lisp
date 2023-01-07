; Auto-generated. Do not edit!


(cl:in-package zed_interfaces-msg)


;//! \htmlinclude Skeleton3D.msg.html

(cl:defclass <Skeleton3D> (roslisp-msg-protocol:ros-message)
  ((keypoints
    :reader keypoints
    :initarg :keypoints
    :type (cl:vector zed_interfaces-msg:Keypoint3D)
   :initform (cl:make-array 18 :element-type 'zed_interfaces-msg:Keypoint3D :initial-element (cl:make-instance 'zed_interfaces-msg:Keypoint3D))))
)

(cl:defclass Skeleton3D (<Skeleton3D>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Skeleton3D>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Skeleton3D)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zed_interfaces-msg:<Skeleton3D> is deprecated: use zed_interfaces-msg:Skeleton3D instead.")))

(cl:ensure-generic-function 'keypoints-val :lambda-list '(m))
(cl:defmethod keypoints-val ((m <Skeleton3D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-msg:keypoints-val is deprecated.  Use zed_interfaces-msg:keypoints instead.")
  (keypoints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Skeleton3D>) ostream)
  "Serializes a message object of type '<Skeleton3D>"
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'keypoints))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Skeleton3D>) istream)
  "Deserializes a message object of type '<Skeleton3D>"
  (cl:setf (cl:slot-value msg 'keypoints) (cl:make-array 18))
  (cl:let ((vals (cl:slot-value msg 'keypoints)))
    (cl:dotimes (i 18)
    (cl:setf (cl:aref vals i) (cl:make-instance 'zed_interfaces-msg:Keypoint3D))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Skeleton3D>)))
  "Returns string type for a message object of type '<Skeleton3D>"
  "zed_interfaces/Skeleton3D")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Skeleton3D)))
  "Returns string type for a message object of type 'Skeleton3D"
  "zed_interfaces/Skeleton3D")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Skeleton3D>)))
  "Returns md5sum for a message object of type '<Skeleton3D>"
  "b704d948cb88b776b9f51ee392e13c62")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Skeleton3D)))
  "Returns md5sum for a message object of type 'Skeleton3D"
  "b704d948cb88b776b9f51ee392e13c62")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Skeleton3D>)))
  "Returns full string definition for message of type '<Skeleton3D>"
  (cl:format cl:nil "# Skeleton joints indices~%#        16-14   15-17~%#             \\ /~%#              0~%#              |~%#       2------1------5~%#       |    |   |    |~%#	    |    |   |    |~%#       3    |   |    6~%#       |    |   |    |~%#       |    |   |    |~%#       4    8   11   7~%#            |   |~%#            |   |~%#            |   |~%#            9   12~%#            |   |~%#            |   |~%#            |   |~%#           10   13~%zed_interfaces/Keypoint3D[18] keypoints~%~%================================================================================~%MSG: zed_interfaces/Keypoint3D~%float32[3] kp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Skeleton3D)))
  "Returns full string definition for message of type 'Skeleton3D"
  (cl:format cl:nil "# Skeleton joints indices~%#        16-14   15-17~%#             \\ /~%#              0~%#              |~%#       2------1------5~%#       |    |   |    |~%#	    |    |   |    |~%#       3    |   |    6~%#       |    |   |    |~%#       |    |   |    |~%#       4    8   11   7~%#            |   |~%#            |   |~%#            |   |~%#            9   12~%#            |   |~%#            |   |~%#            |   |~%#           10   13~%zed_interfaces/Keypoint3D[18] keypoints~%~%================================================================================~%MSG: zed_interfaces/Keypoint3D~%float32[3] kp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Skeleton3D>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'keypoints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Skeleton3D>))
  "Converts a ROS message object to a list"
  (cl:list 'Skeleton3D
    (cl:cons ':keypoints (keypoints msg))
))
