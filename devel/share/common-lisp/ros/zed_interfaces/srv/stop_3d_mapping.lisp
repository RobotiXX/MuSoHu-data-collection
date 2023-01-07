; Auto-generated. Do not edit!


(cl:in-package zed_interfaces-srv)


;//! \htmlinclude stop_3d_mapping-request.msg.html

(cl:defclass <stop_3d_mapping-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass stop_3d_mapping-request (<stop_3d_mapping-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <stop_3d_mapping-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'stop_3d_mapping-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zed_interfaces-srv:<stop_3d_mapping-request> is deprecated: use zed_interfaces-srv:stop_3d_mapping-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <stop_3d_mapping-request>) ostream)
  "Serializes a message object of type '<stop_3d_mapping-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <stop_3d_mapping-request>) istream)
  "Deserializes a message object of type '<stop_3d_mapping-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<stop_3d_mapping-request>)))
  "Returns string type for a service object of type '<stop_3d_mapping-request>"
  "zed_interfaces/stop_3d_mappingRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'stop_3d_mapping-request)))
  "Returns string type for a service object of type 'stop_3d_mapping-request"
  "zed_interfaces/stop_3d_mappingRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<stop_3d_mapping-request>)))
  "Returns md5sum for a message object of type '<stop_3d_mapping-request>"
  "89bb254424e4cffedbf494e7b0ddbfea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'stop_3d_mapping-request)))
  "Returns md5sum for a message object of type 'stop_3d_mapping-request"
  "89bb254424e4cffedbf494e7b0ddbfea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<stop_3d_mapping-request>)))
  "Returns full string definition for message of type '<stop_3d_mapping-request>"
  (cl:format cl:nil "# Stops 3D fused pointcloud generation, if  automatically enabled with the parameter `mapping/mapping_enabled` or with~%# the `start_object_detection` service~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'stop_3d_mapping-request)))
  "Returns full string definition for message of type 'stop_3d_mapping-request"
  (cl:format cl:nil "# Stops 3D fused pointcloud generation, if  automatically enabled with the parameter `mapping/mapping_enabled` or with~%# the `start_object_detection` service~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <stop_3d_mapping-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <stop_3d_mapping-request>))
  "Converts a ROS message object to a list"
  (cl:list 'stop_3d_mapping-request
))
;//! \htmlinclude stop_3d_mapping-response.msg.html

(cl:defclass <stop_3d_mapping-response> (roslisp-msg-protocol:ros-message)
  ((done
    :reader done
    :initarg :done
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass stop_3d_mapping-response (<stop_3d_mapping-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <stop_3d_mapping-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'stop_3d_mapping-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zed_interfaces-srv:<stop_3d_mapping-response> is deprecated: use zed_interfaces-srv:stop_3d_mapping-response instead.")))

(cl:ensure-generic-function 'done-val :lambda-list '(m))
(cl:defmethod done-val ((m <stop_3d_mapping-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-srv:done-val is deprecated.  Use zed_interfaces-srv:done instead.")
  (done m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <stop_3d_mapping-response>) ostream)
  "Serializes a message object of type '<stop_3d_mapping-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'done) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <stop_3d_mapping-response>) istream)
  "Deserializes a message object of type '<stop_3d_mapping-response>"
    (cl:setf (cl:slot-value msg 'done) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<stop_3d_mapping-response>)))
  "Returns string type for a service object of type '<stop_3d_mapping-response>"
  "zed_interfaces/stop_3d_mappingResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'stop_3d_mapping-response)))
  "Returns string type for a service object of type 'stop_3d_mapping-response"
  "zed_interfaces/stop_3d_mappingResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<stop_3d_mapping-response>)))
  "Returns md5sum for a message object of type '<stop_3d_mapping-response>"
  "89bb254424e4cffedbf494e7b0ddbfea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'stop_3d_mapping-response)))
  "Returns md5sum for a message object of type 'stop_3d_mapping-response"
  "89bb254424e4cffedbf494e7b0ddbfea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<stop_3d_mapping-response>)))
  "Returns full string definition for message of type '<stop_3d_mapping-response>"
  (cl:format cl:nil "bool done~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'stop_3d_mapping-response)))
  "Returns full string definition for message of type 'stop_3d_mapping-response"
  (cl:format cl:nil "bool done~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <stop_3d_mapping-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <stop_3d_mapping-response>))
  "Converts a ROS message object to a list"
  (cl:list 'stop_3d_mapping-response
    (cl:cons ':done (done msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'stop_3d_mapping)))
  'stop_3d_mapping-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'stop_3d_mapping)))
  'stop_3d_mapping-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'stop_3d_mapping)))
  "Returns string type for a service object of type '<stop_3d_mapping>"
  "zed_interfaces/stop_3d_mapping")