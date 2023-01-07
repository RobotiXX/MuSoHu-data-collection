; Auto-generated. Do not edit!


(cl:in-package zed_interfaces-srv)


;//! \htmlinclude stop_remote_stream-request.msg.html

(cl:defclass <stop_remote_stream-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass stop_remote_stream-request (<stop_remote_stream-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <stop_remote_stream-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'stop_remote_stream-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zed_interfaces-srv:<stop_remote_stream-request> is deprecated: use zed_interfaces-srv:stop_remote_stream-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <stop_remote_stream-request>) ostream)
  "Serializes a message object of type '<stop_remote_stream-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <stop_remote_stream-request>) istream)
  "Deserializes a message object of type '<stop_remote_stream-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<stop_remote_stream-request>)))
  "Returns string type for a service object of type '<stop_remote_stream-request>"
  "zed_interfaces/stop_remote_streamRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'stop_remote_stream-request)))
  "Returns string type for a service object of type 'stop_remote_stream-request"
  "zed_interfaces/stop_remote_streamRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<stop_remote_stream-request>)))
  "Returns md5sum for a message object of type '<stop_remote_stream-request>"
  "89bb254424e4cffedbf494e7b0ddbfea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'stop_remote_stream-request)))
  "Returns md5sum for a message object of type 'stop_remote_stream-request"
  "89bb254424e4cffedbf494e7b0ddbfea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<stop_remote_stream-request>)))
  "Returns full string definition for message of type '<stop_remote_stream-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'stop_remote_stream-request)))
  "Returns full string definition for message of type 'stop_remote_stream-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <stop_remote_stream-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <stop_remote_stream-request>))
  "Converts a ROS message object to a list"
  (cl:list 'stop_remote_stream-request
))
;//! \htmlinclude stop_remote_stream-response.msg.html

(cl:defclass <stop_remote_stream-response> (roslisp-msg-protocol:ros-message)
  ((done
    :reader done
    :initarg :done
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass stop_remote_stream-response (<stop_remote_stream-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <stop_remote_stream-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'stop_remote_stream-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zed_interfaces-srv:<stop_remote_stream-response> is deprecated: use zed_interfaces-srv:stop_remote_stream-response instead.")))

(cl:ensure-generic-function 'done-val :lambda-list '(m))
(cl:defmethod done-val ((m <stop_remote_stream-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-srv:done-val is deprecated.  Use zed_interfaces-srv:done instead.")
  (done m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <stop_remote_stream-response>) ostream)
  "Serializes a message object of type '<stop_remote_stream-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'done) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <stop_remote_stream-response>) istream)
  "Deserializes a message object of type '<stop_remote_stream-response>"
    (cl:setf (cl:slot-value msg 'done) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<stop_remote_stream-response>)))
  "Returns string type for a service object of type '<stop_remote_stream-response>"
  "zed_interfaces/stop_remote_streamResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'stop_remote_stream-response)))
  "Returns string type for a service object of type 'stop_remote_stream-response"
  "zed_interfaces/stop_remote_streamResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<stop_remote_stream-response>)))
  "Returns md5sum for a message object of type '<stop_remote_stream-response>"
  "89bb254424e4cffedbf494e7b0ddbfea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'stop_remote_stream-response)))
  "Returns md5sum for a message object of type 'stop_remote_stream-response"
  "89bb254424e4cffedbf494e7b0ddbfea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<stop_remote_stream-response>)))
  "Returns full string definition for message of type '<stop_remote_stream-response>"
  (cl:format cl:nil "bool done~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'stop_remote_stream-response)))
  "Returns full string definition for message of type 'stop_remote_stream-response"
  (cl:format cl:nil "bool done~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <stop_remote_stream-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <stop_remote_stream-response>))
  "Converts a ROS message object to a list"
  (cl:list 'stop_remote_stream-response
    (cl:cons ':done (done msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'stop_remote_stream)))
  'stop_remote_stream-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'stop_remote_stream)))
  'stop_remote_stream-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'stop_remote_stream)))
  "Returns string type for a service object of type '<stop_remote_stream>"
  "zed_interfaces/stop_remote_stream")