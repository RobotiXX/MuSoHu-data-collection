; Auto-generated. Do not edit!


(cl:in-package zed_interfaces-srv)


;//! \htmlinclude stop_svo_recording-request.msg.html

(cl:defclass <stop_svo_recording-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass stop_svo_recording-request (<stop_svo_recording-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <stop_svo_recording-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'stop_svo_recording-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zed_interfaces-srv:<stop_svo_recording-request> is deprecated: use zed_interfaces-srv:stop_svo_recording-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <stop_svo_recording-request>) ostream)
  "Serializes a message object of type '<stop_svo_recording-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <stop_svo_recording-request>) istream)
  "Deserializes a message object of type '<stop_svo_recording-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<stop_svo_recording-request>)))
  "Returns string type for a service object of type '<stop_svo_recording-request>"
  "zed_interfaces/stop_svo_recordingRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'stop_svo_recording-request)))
  "Returns string type for a service object of type 'stop_svo_recording-request"
  "zed_interfaces/stop_svo_recordingRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<stop_svo_recording-request>)))
  "Returns md5sum for a message object of type '<stop_svo_recording-request>"
  "784b6c45ec0bd93cee43c7cd15145736")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'stop_svo_recording-request)))
  "Returns md5sum for a message object of type 'stop_svo_recording-request"
  "784b6c45ec0bd93cee43c7cd15145736")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<stop_svo_recording-request>)))
  "Returns full string definition for message of type '<stop_svo_recording-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'stop_svo_recording-request)))
  "Returns full string definition for message of type 'stop_svo_recording-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <stop_svo_recording-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <stop_svo_recording-request>))
  "Converts a ROS message object to a list"
  (cl:list 'stop_svo_recording-request
))
;//! \htmlinclude stop_svo_recording-response.msg.html

(cl:defclass <stop_svo_recording-response> (roslisp-msg-protocol:ros-message)
  ((done
    :reader done
    :initarg :done
    :type cl:boolean
    :initform cl:nil)
   (info
    :reader info
    :initarg :info
    :type cl:string
    :initform ""))
)

(cl:defclass stop_svo_recording-response (<stop_svo_recording-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <stop_svo_recording-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'stop_svo_recording-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zed_interfaces-srv:<stop_svo_recording-response> is deprecated: use zed_interfaces-srv:stop_svo_recording-response instead.")))

(cl:ensure-generic-function 'done-val :lambda-list '(m))
(cl:defmethod done-val ((m <stop_svo_recording-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-srv:done-val is deprecated.  Use zed_interfaces-srv:done instead.")
  (done m))

(cl:ensure-generic-function 'info-val :lambda-list '(m))
(cl:defmethod info-val ((m <stop_svo_recording-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-srv:info-val is deprecated.  Use zed_interfaces-srv:info instead.")
  (info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <stop_svo_recording-response>) ostream)
  "Serializes a message object of type '<stop_svo_recording-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'done) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <stop_svo_recording-response>) istream)
  "Deserializes a message object of type '<stop_svo_recording-response>"
    (cl:setf (cl:slot-value msg 'done) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'info) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'info) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<stop_svo_recording-response>)))
  "Returns string type for a service object of type '<stop_svo_recording-response>"
  "zed_interfaces/stop_svo_recordingResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'stop_svo_recording-response)))
  "Returns string type for a service object of type 'stop_svo_recording-response"
  "zed_interfaces/stop_svo_recordingResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<stop_svo_recording-response>)))
  "Returns md5sum for a message object of type '<stop_svo_recording-response>"
  "784b6c45ec0bd93cee43c7cd15145736")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'stop_svo_recording-response)))
  "Returns md5sum for a message object of type 'stop_svo_recording-response"
  "784b6c45ec0bd93cee43c7cd15145736")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<stop_svo_recording-response>)))
  "Returns full string definition for message of type '<stop_svo_recording-response>"
  (cl:format cl:nil "bool done~%string info~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'stop_svo_recording-response)))
  "Returns full string definition for message of type 'stop_svo_recording-response"
  (cl:format cl:nil "bool done~%string info~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <stop_svo_recording-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <stop_svo_recording-response>))
  "Converts a ROS message object to a list"
  (cl:list 'stop_svo_recording-response
    (cl:cons ':done (done msg))
    (cl:cons ':info (info msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'stop_svo_recording)))
  'stop_svo_recording-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'stop_svo_recording)))
  'stop_svo_recording-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'stop_svo_recording)))
  "Returns string type for a service object of type '<stop_svo_recording>"
  "zed_interfaces/stop_svo_recording")