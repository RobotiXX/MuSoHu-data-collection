; Auto-generated. Do not edit!


(cl:in-package zed_interfaces-srv)


;//! \htmlinclude reset_tracking-request.msg.html

(cl:defclass <reset_tracking-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass reset_tracking-request (<reset_tracking-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <reset_tracking-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'reset_tracking-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zed_interfaces-srv:<reset_tracking-request> is deprecated: use zed_interfaces-srv:reset_tracking-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <reset_tracking-request>) ostream)
  "Serializes a message object of type '<reset_tracking-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <reset_tracking-request>) istream)
  "Deserializes a message object of type '<reset_tracking-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<reset_tracking-request>)))
  "Returns string type for a service object of type '<reset_tracking-request>"
  "zed_interfaces/reset_trackingRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'reset_tracking-request)))
  "Returns string type for a service object of type 'reset_tracking-request"
  "zed_interfaces/reset_trackingRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<reset_tracking-request>)))
  "Returns md5sum for a message object of type '<reset_tracking-request>"
  "e1e87fc9e9e6c154eca93b9fa292cc05")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'reset_tracking-request)))
  "Returns md5sum for a message object of type 'reset_tracking-request"
  "e1e87fc9e9e6c154eca93b9fa292cc05")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<reset_tracking-request>)))
  "Returns full string definition for message of type '<reset_tracking-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'reset_tracking-request)))
  "Returns full string definition for message of type 'reset_tracking-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <reset_tracking-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <reset_tracking-request>))
  "Converts a ROS message object to a list"
  (cl:list 'reset_tracking-request
))
;//! \htmlinclude reset_tracking-response.msg.html

(cl:defclass <reset_tracking-response> (roslisp-msg-protocol:ros-message)
  ((reset_done
    :reader reset_done
    :initarg :reset_done
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass reset_tracking-response (<reset_tracking-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <reset_tracking-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'reset_tracking-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zed_interfaces-srv:<reset_tracking-response> is deprecated: use zed_interfaces-srv:reset_tracking-response instead.")))

(cl:ensure-generic-function 'reset_done-val :lambda-list '(m))
(cl:defmethod reset_done-val ((m <reset_tracking-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-srv:reset_done-val is deprecated.  Use zed_interfaces-srv:reset_done instead.")
  (reset_done m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <reset_tracking-response>) ostream)
  "Serializes a message object of type '<reset_tracking-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'reset_done) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <reset_tracking-response>) istream)
  "Deserializes a message object of type '<reset_tracking-response>"
    (cl:setf (cl:slot-value msg 'reset_done) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<reset_tracking-response>)))
  "Returns string type for a service object of type '<reset_tracking-response>"
  "zed_interfaces/reset_trackingResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'reset_tracking-response)))
  "Returns string type for a service object of type 'reset_tracking-response"
  "zed_interfaces/reset_trackingResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<reset_tracking-response>)))
  "Returns md5sum for a message object of type '<reset_tracking-response>"
  "e1e87fc9e9e6c154eca93b9fa292cc05")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'reset_tracking-response)))
  "Returns md5sum for a message object of type 'reset_tracking-response"
  "e1e87fc9e9e6c154eca93b9fa292cc05")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<reset_tracking-response>)))
  "Returns full string definition for message of type '<reset_tracking-response>"
  (cl:format cl:nil "bool reset_done~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'reset_tracking-response)))
  "Returns full string definition for message of type 'reset_tracking-response"
  (cl:format cl:nil "bool reset_done~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <reset_tracking-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <reset_tracking-response>))
  "Converts a ROS message object to a list"
  (cl:list 'reset_tracking-response
    (cl:cons ':reset_done (reset_done msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'reset_tracking)))
  'reset_tracking-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'reset_tracking)))
  'reset_tracking-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'reset_tracking)))
  "Returns string type for a service object of type '<reset_tracking>"
  "zed_interfaces/reset_tracking")