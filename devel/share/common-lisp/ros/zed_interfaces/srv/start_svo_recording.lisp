; Auto-generated. Do not edit!


(cl:in-package zed_interfaces-srv)


;//! \htmlinclude start_svo_recording-request.msg.html

(cl:defclass <start_svo_recording-request> (roslisp-msg-protocol:ros-message)
  ((svo_filename
    :reader svo_filename
    :initarg :svo_filename
    :type cl:string
    :initform ""))
)

(cl:defclass start_svo_recording-request (<start_svo_recording-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <start_svo_recording-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'start_svo_recording-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zed_interfaces-srv:<start_svo_recording-request> is deprecated: use zed_interfaces-srv:start_svo_recording-request instead.")))

(cl:ensure-generic-function 'svo_filename-val :lambda-list '(m))
(cl:defmethod svo_filename-val ((m <start_svo_recording-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-srv:svo_filename-val is deprecated.  Use zed_interfaces-srv:svo_filename instead.")
  (svo_filename m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <start_svo_recording-request>) ostream)
  "Serializes a message object of type '<start_svo_recording-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'svo_filename))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'svo_filename))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <start_svo_recording-request>) istream)
  "Deserializes a message object of type '<start_svo_recording-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'svo_filename) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'svo_filename) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<start_svo_recording-request>)))
  "Returns string type for a service object of type '<start_svo_recording-request>"
  "zed_interfaces/start_svo_recordingRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'start_svo_recording-request)))
  "Returns string type for a service object of type 'start_svo_recording-request"
  "zed_interfaces/start_svo_recordingRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<start_svo_recording-request>)))
  "Returns md5sum for a message object of type '<start_svo_recording-request>"
  "a0f71014040ca234c6276bc9c76368c6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'start_svo_recording-request)))
  "Returns md5sum for a message object of type 'start_svo_recording-request"
  "a0f71014040ca234c6276bc9c76368c6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<start_svo_recording-request>)))
  "Returns full string definition for message of type '<start_svo_recording-request>"
  (cl:format cl:nil "# Full path is required no relative paths~%string svo_filename ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'start_svo_recording-request)))
  "Returns full string definition for message of type 'start_svo_recording-request"
  (cl:format cl:nil "# Full path is required no relative paths~%string svo_filename ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <start_svo_recording-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'svo_filename))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <start_svo_recording-request>))
  "Converts a ROS message object to a list"
  (cl:list 'start_svo_recording-request
    (cl:cons ':svo_filename (svo_filename msg))
))
;//! \htmlinclude start_svo_recording-response.msg.html

(cl:defclass <start_svo_recording-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil)
   (info
    :reader info
    :initarg :info
    :type cl:string
    :initform ""))
)

(cl:defclass start_svo_recording-response (<start_svo_recording-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <start_svo_recording-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'start_svo_recording-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zed_interfaces-srv:<start_svo_recording-response> is deprecated: use zed_interfaces-srv:start_svo_recording-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <start_svo_recording-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-srv:result-val is deprecated.  Use zed_interfaces-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'info-val :lambda-list '(m))
(cl:defmethod info-val ((m <start_svo_recording-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-srv:info-val is deprecated.  Use zed_interfaces-srv:info instead.")
  (info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <start_svo_recording-response>) ostream)
  "Serializes a message object of type '<start_svo_recording-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <start_svo_recording-response>) istream)
  "Deserializes a message object of type '<start_svo_recording-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<start_svo_recording-response>)))
  "Returns string type for a service object of type '<start_svo_recording-response>"
  "zed_interfaces/start_svo_recordingResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'start_svo_recording-response)))
  "Returns string type for a service object of type 'start_svo_recording-response"
  "zed_interfaces/start_svo_recordingResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<start_svo_recording-response>)))
  "Returns md5sum for a message object of type '<start_svo_recording-response>"
  "a0f71014040ca234c6276bc9c76368c6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'start_svo_recording-response)))
  "Returns md5sum for a message object of type 'start_svo_recording-response"
  "a0f71014040ca234c6276bc9c76368c6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<start_svo_recording-response>)))
  "Returns full string definition for message of type '<start_svo_recording-response>"
  (cl:format cl:nil "bool result~%string info~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'start_svo_recording-response)))
  "Returns full string definition for message of type 'start_svo_recording-response"
  (cl:format cl:nil "bool result~%string info~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <start_svo_recording-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <start_svo_recording-response>))
  "Converts a ROS message object to a list"
  (cl:list 'start_svo_recording-response
    (cl:cons ':result (result msg))
    (cl:cons ':info (info msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'start_svo_recording)))
  'start_svo_recording-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'start_svo_recording)))
  'start_svo_recording-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'start_svo_recording)))
  "Returns string type for a service object of type '<start_svo_recording>"
  "zed_interfaces/start_svo_recording")