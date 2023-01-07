; Auto-generated. Do not edit!


(cl:in-package zed_interfaces-msg)


;//! \htmlinclude Skeleton2D.msg.html

(cl:defclass <Skeleton2D> (roslisp-msg-protocol:ros-message)
  ((keypoints
    :reader keypoints
    :initarg :keypoints
    :type (cl:vector zed_interfaces-msg:Keypoint2Df)
   :initform (cl:make-array 18 :element-type 'zed_interfaces-msg:Keypoint2Df :initial-element (cl:make-instance 'zed_interfaces-msg:Keypoint2Df))))
)

(cl:defclass Skeleton2D (<Skeleton2D>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Skeleton2D>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Skeleton2D)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zed_interfaces-msg:<Skeleton2D> is deprecated: use zed_interfaces-msg:Skeleton2D instead.")))

(cl:ensure-generic-function 'keypoints-val :lambda-list '(m))
(cl:defmethod keypoints-val ((m <Skeleton2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-msg:keypoints-val is deprecated.  Use zed_interfaces-msg:keypoints instead.")
  (keypoints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Skeleton2D>) ostream)
  "Serializes a message object of type '<Skeleton2D>"
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'keypoints))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Skeleton2D>) istream)
  "Deserializes a message object of type '<Skeleton2D>"
  (cl:setf (cl:slot-value msg 'keypoints) (cl:make-array 18))
  (cl:let ((vals (cl:slot-value msg 'keypoints)))
    (cl:dotimes (i 18)
    (cl:setf (cl:aref vals i) (cl:make-instance 'zed_interfaces-msg:Keypoint2Df))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Skeleton2D>)))
  "Returns string type for a message object of type '<Skeleton2D>"
  "zed_interfaces/Skeleton2D")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Skeleton2D)))
  "Returns string type for a message object of type 'Skeleton2D"
  "zed_interfaces/Skeleton2D")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Skeleton2D>)))
  "Returns md5sum for a message object of type '<Skeleton2D>"
  "1754703e1a6ce338ad28b9ee81fb712a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Skeleton2D)))
  "Returns md5sum for a message object of type 'Skeleton2D"
  "1754703e1a6ce338ad28b9ee81fb712a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Skeleton2D>)))
  "Returns full string definition for message of type '<Skeleton2D>"
  (cl:format cl:nil "# Skeleton joints indices~%#        16-14   15-17~%#             \\ /~%#              0~%#              |~%#       2------1------5~%#       |    |   |    |~%#	    |    |   |    |~%#       3    |   |    6~%#       |    |   |    |~%#       |    |   |    |~%#       4    8   11   7~%#            |   |~%#            |   |~%#            |   |~%#            9   12~%#            |   |~%#            |   |~%#            |   |~%#           10   13~%zed_interfaces/Keypoint2Df[18] keypoints~%~%================================================================================~%MSG: zed_interfaces/Keypoint2Df~%float32[2] kp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Skeleton2D)))
  "Returns full string definition for message of type 'Skeleton2D"
  (cl:format cl:nil "# Skeleton joints indices~%#        16-14   15-17~%#             \\ /~%#              0~%#              |~%#       2------1------5~%#       |    |   |    |~%#	    |    |   |    |~%#       3    |   |    6~%#       |    |   |    |~%#       |    |   |    |~%#       4    8   11   7~%#            |   |~%#            |   |~%#            |   |~%#            9   12~%#            |   |~%#            |   |~%#            |   |~%#           10   13~%zed_interfaces/Keypoint2Df[18] keypoints~%~%================================================================================~%MSG: zed_interfaces/Keypoint2Df~%float32[2] kp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Skeleton2D>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'keypoints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Skeleton2D>))
  "Converts a ROS message object to a list"
  (cl:list 'Skeleton2D
    (cl:cons ':keypoints (keypoints msg))
))
