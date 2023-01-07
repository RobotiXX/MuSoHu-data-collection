; Auto-generated. Do not edit!


(cl:in-package zed_interfaces-srv)


;//! \htmlinclude stop_object_detection-request.msg.html

(cl:defclass <stop_object_detection-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass stop_object_detection-request (<stop_object_detection-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <stop_object_detection-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'stop_object_detection-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zed_interfaces-srv:<stop_object_detection-request> is deprecated: use zed_interfaces-srv:stop_object_detection-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <stop_object_detection-request>) ostream)
  "Serializes a message object of type '<stop_object_detection-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <stop_object_detection-request>) istream)
  "Deserializes a message object of type '<stop_object_detection-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<stop_object_detection-request>)))
  "Returns string type for a service object of type '<stop_object_detection-request>"
  "zed_interfaces/stop_object_detectionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'stop_object_detection-request)))
  "Returns string type for a service object of type 'stop_object_detection-request"
  "zed_interfaces/stop_object_detectionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<stop_object_detection-request>)))
  "Returns md5sum for a message object of type '<stop_object_detection-request>"
  "89bb254424e4cffedbf494e7b0ddbfea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'stop_object_detection-request)))
  "Returns md5sum for a message object of type 'stop_object_detection-request"
  "89bb254424e4cffedbf494e7b0ddbfea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<stop_object_detection-request>)))
  "Returns full string definition for message of type '<stop_object_detection-request>"
  (cl:format cl:nil "# Stops object detection, if  automatically enabled with the parameter `object_detection/od_enabled` or with~%# the `start_mapping` service~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'stop_object_detection-request)))
  "Returns full string definition for message of type 'stop_object_detection-request"
  (cl:format cl:nil "# Stops object detection, if  automatically enabled with the parameter `object_detection/od_enabled` or with~%# the `start_mapping` service~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <stop_object_detection-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <stop_object_detection-request>))
  "Converts a ROS message object to a list"
  (cl:list 'stop_object_detection-request
))
;//! \htmlinclude stop_object_detection-response.msg.html

(cl:defclass <stop_object_detection-response> (roslisp-msg-protocol:ros-message)
  ((done
    :reader done
    :initarg :done
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass stop_object_detection-response (<stop_object_detection-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <stop_object_detection-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'stop_object_detection-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zed_interfaces-srv:<stop_object_detection-response> is deprecated: use zed_interfaces-srv:stop_object_detection-response instead.")))

(cl:ensure-generic-function 'done-val :lambda-list '(m))
(cl:defmethod done-val ((m <stop_object_detection-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-srv:done-val is deprecated.  Use zed_interfaces-srv:done instead.")
  (done m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <stop_object_detection-response>) ostream)
  "Serializes a message object of type '<stop_object_detection-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'done) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <stop_object_detection-response>) istream)
  "Deserializes a message object of type '<stop_object_detection-response>"
    (cl:setf (cl:slot-value msg 'done) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<stop_object_detection-response>)))
  "Returns string type for a service object of type '<stop_object_detection-response>"
  "zed_interfaces/stop_object_detectionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'stop_object_detection-response)))
  "Returns string type for a service object of type 'stop_object_detection-response"
  "zed_interfaces/stop_object_detectionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<stop_object_detection-response>)))
  "Returns md5sum for a message object of type '<stop_object_detection-response>"
  "89bb254424e4cffedbf494e7b0ddbfea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'stop_object_detection-response)))
  "Returns md5sum for a message object of type 'stop_object_detection-response"
  "89bb254424e4cffedbf494e7b0ddbfea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<stop_object_detection-response>)))
  "Returns full string definition for message of type '<stop_object_detection-response>"
  (cl:format cl:nil "bool done~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'stop_object_detection-response)))
  "Returns full string definition for message of type 'stop_object_detection-response"
  (cl:format cl:nil "bool done~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <stop_object_detection-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <stop_object_detection-response>))
  "Converts a ROS message object to a list"
  (cl:list 'stop_object_detection-response
    (cl:cons ':done (done msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'stop_object_detection)))
  'stop_object_detection-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'stop_object_detection)))
  'stop_object_detection-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'stop_object_detection)))
  "Returns string type for a service object of type '<stop_object_detection>"
  "zed_interfaces/stop_object_detection")