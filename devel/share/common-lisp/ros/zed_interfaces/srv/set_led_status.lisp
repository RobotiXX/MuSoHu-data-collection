; Auto-generated. Do not edit!


(cl:in-package zed_interfaces-srv)


;//! \htmlinclude set_led_status-request.msg.html

(cl:defclass <set_led_status-request> (roslisp-msg-protocol:ros-message)
  ((led_enabled
    :reader led_enabled
    :initarg :led_enabled
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass set_led_status-request (<set_led_status-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_led_status-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_led_status-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zed_interfaces-srv:<set_led_status-request> is deprecated: use zed_interfaces-srv:set_led_status-request instead.")))

(cl:ensure-generic-function 'led_enabled-val :lambda-list '(m))
(cl:defmethod led_enabled-val ((m <set_led_status-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-srv:led_enabled-val is deprecated.  Use zed_interfaces-srv:led_enabled instead.")
  (led_enabled m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_led_status-request>) ostream)
  "Serializes a message object of type '<set_led_status-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'led_enabled) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_led_status-request>) istream)
  "Deserializes a message object of type '<set_led_status-request>"
    (cl:setf (cl:slot-value msg 'led_enabled) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_led_status-request>)))
  "Returns string type for a service object of type '<set_led_status-request>"
  "zed_interfaces/set_led_statusRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_led_status-request)))
  "Returns string type for a service object of type 'set_led_status-request"
  "zed_interfaces/set_led_statusRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_led_status-request>)))
  "Returns md5sum for a message object of type '<set_led_status-request>"
  "bd86bfb1e9db5dfcf2eea2f02bf12142")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_led_status-request)))
  "Returns md5sum for a message object of type 'set_led_status-request"
  "bd86bfb1e9db5dfcf2eea2f02bf12142")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_led_status-request>)))
  "Returns full string definition for message of type '<set_led_status-request>"
  (cl:format cl:nil "bool led_enabled~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_led_status-request)))
  "Returns full string definition for message of type 'set_led_status-request"
  (cl:format cl:nil "bool led_enabled~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_led_status-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_led_status-request>))
  "Converts a ROS message object to a list"
  (cl:list 'set_led_status-request
    (cl:cons ':led_enabled (led_enabled msg))
))
;//! \htmlinclude set_led_status-response.msg.html

(cl:defclass <set_led_status-response> (roslisp-msg-protocol:ros-message)
  ((done
    :reader done
    :initarg :done
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass set_led_status-response (<set_led_status-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_led_status-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_led_status-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zed_interfaces-srv:<set_led_status-response> is deprecated: use zed_interfaces-srv:set_led_status-response instead.")))

(cl:ensure-generic-function 'done-val :lambda-list '(m))
(cl:defmethod done-val ((m <set_led_status-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-srv:done-val is deprecated.  Use zed_interfaces-srv:done instead.")
  (done m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_led_status-response>) ostream)
  "Serializes a message object of type '<set_led_status-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'done) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_led_status-response>) istream)
  "Deserializes a message object of type '<set_led_status-response>"
    (cl:setf (cl:slot-value msg 'done) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_led_status-response>)))
  "Returns string type for a service object of type '<set_led_status-response>"
  "zed_interfaces/set_led_statusResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_led_status-response)))
  "Returns string type for a service object of type 'set_led_status-response"
  "zed_interfaces/set_led_statusResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_led_status-response>)))
  "Returns md5sum for a message object of type '<set_led_status-response>"
  "bd86bfb1e9db5dfcf2eea2f02bf12142")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_led_status-response)))
  "Returns md5sum for a message object of type 'set_led_status-response"
  "bd86bfb1e9db5dfcf2eea2f02bf12142")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_led_status-response>)))
  "Returns full string definition for message of type '<set_led_status-response>"
  (cl:format cl:nil "bool done~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_led_status-response)))
  "Returns full string definition for message of type 'set_led_status-response"
  (cl:format cl:nil "bool done~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_led_status-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_led_status-response>))
  "Converts a ROS message object to a list"
  (cl:list 'set_led_status-response
    (cl:cons ':done (done msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'set_led_status)))
  'set_led_status-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'set_led_status)))
  'set_led_status-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_led_status)))
  "Returns string type for a service object of type '<set_led_status>"
  "zed_interfaces/set_led_status")