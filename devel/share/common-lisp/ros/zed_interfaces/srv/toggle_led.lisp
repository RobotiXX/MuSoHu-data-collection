; Auto-generated. Do not edit!


(cl:in-package zed_interfaces-srv)


;//! \htmlinclude toggle_led-request.msg.html

(cl:defclass <toggle_led-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass toggle_led-request (<toggle_led-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <toggle_led-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'toggle_led-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zed_interfaces-srv:<toggle_led-request> is deprecated: use zed_interfaces-srv:toggle_led-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <toggle_led-request>) ostream)
  "Serializes a message object of type '<toggle_led-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <toggle_led-request>) istream)
  "Deserializes a message object of type '<toggle_led-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<toggle_led-request>)))
  "Returns string type for a service object of type '<toggle_led-request>"
  "zed_interfaces/toggle_ledRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'toggle_led-request)))
  "Returns string type for a service object of type 'toggle_led-request"
  "zed_interfaces/toggle_ledRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<toggle_led-request>)))
  "Returns md5sum for a message object of type '<toggle_led-request>"
  "866beb482157f32341c9f0eac54a1e38")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'toggle_led-request)))
  "Returns md5sum for a message object of type 'toggle_led-request"
  "866beb482157f32341c9f0eac54a1e38")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<toggle_led-request>)))
  "Returns full string definition for message of type '<toggle_led-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'toggle_led-request)))
  "Returns full string definition for message of type 'toggle_led-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <toggle_led-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <toggle_led-request>))
  "Converts a ROS message object to a list"
  (cl:list 'toggle_led-request
))
;//! \htmlinclude toggle_led-response.msg.html

(cl:defclass <toggle_led-response> (roslisp-msg-protocol:ros-message)
  ((new_led_status
    :reader new_led_status
    :initarg :new_led_status
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass toggle_led-response (<toggle_led-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <toggle_led-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'toggle_led-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zed_interfaces-srv:<toggle_led-response> is deprecated: use zed_interfaces-srv:toggle_led-response instead.")))

(cl:ensure-generic-function 'new_led_status-val :lambda-list '(m))
(cl:defmethod new_led_status-val ((m <toggle_led-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-srv:new_led_status-val is deprecated.  Use zed_interfaces-srv:new_led_status instead.")
  (new_led_status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <toggle_led-response>) ostream)
  "Serializes a message object of type '<toggle_led-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'new_led_status) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <toggle_led-response>) istream)
  "Deserializes a message object of type '<toggle_led-response>"
    (cl:setf (cl:slot-value msg 'new_led_status) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<toggle_led-response>)))
  "Returns string type for a service object of type '<toggle_led-response>"
  "zed_interfaces/toggle_ledResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'toggle_led-response)))
  "Returns string type for a service object of type 'toggle_led-response"
  "zed_interfaces/toggle_ledResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<toggle_led-response>)))
  "Returns md5sum for a message object of type '<toggle_led-response>"
  "866beb482157f32341c9f0eac54a1e38")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'toggle_led-response)))
  "Returns md5sum for a message object of type 'toggle_led-response"
  "866beb482157f32341c9f0eac54a1e38")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<toggle_led-response>)))
  "Returns full string definition for message of type '<toggle_led-response>"
  (cl:format cl:nil "bool new_led_status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'toggle_led-response)))
  "Returns full string definition for message of type 'toggle_led-response"
  (cl:format cl:nil "bool new_led_status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <toggle_led-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <toggle_led-response>))
  "Converts a ROS message object to a list"
  (cl:list 'toggle_led-response
    (cl:cons ':new_led_status (new_led_status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'toggle_led)))
  'toggle_led-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'toggle_led)))
  'toggle_led-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'toggle_led)))
  "Returns string type for a service object of type '<toggle_led>"
  "zed_interfaces/toggle_led")