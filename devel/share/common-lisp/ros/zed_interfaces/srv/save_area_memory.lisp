; Auto-generated. Do not edit!


(cl:in-package zed_interfaces-srv)


;//! \htmlinclude save_area_memory-request.msg.html

(cl:defclass <save_area_memory-request> (roslisp-msg-protocol:ros-message)
  ((area_memory_filename
    :reader area_memory_filename
    :initarg :area_memory_filename
    :type cl:string
    :initform ""))
)

(cl:defclass save_area_memory-request (<save_area_memory-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <save_area_memory-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'save_area_memory-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zed_interfaces-srv:<save_area_memory-request> is deprecated: use zed_interfaces-srv:save_area_memory-request instead.")))

(cl:ensure-generic-function 'area_memory_filename-val :lambda-list '(m))
(cl:defmethod area_memory_filename-val ((m <save_area_memory-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-srv:area_memory_filename-val is deprecated.  Use zed_interfaces-srv:area_memory_filename instead.")
  (area_memory_filename m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <save_area_memory-request>) ostream)
  "Serializes a message object of type '<save_area_memory-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'area_memory_filename))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'area_memory_filename))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <save_area_memory-request>) istream)
  "Deserializes a message object of type '<save_area_memory-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'area_memory_filename) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'area_memory_filename) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<save_area_memory-request>)))
  "Returns string type for a service object of type '<save_area_memory-request>"
  "zed_interfaces/save_area_memoryRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'save_area_memory-request)))
  "Returns string type for a service object of type 'save_area_memory-request"
  "zed_interfaces/save_area_memoryRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<save_area_memory-request>)))
  "Returns md5sum for a message object of type '<save_area_memory-request>"
  "c8b71483aabdfc117f6a0d5ed8a98ab9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'save_area_memory-request)))
  "Returns md5sum for a message object of type 'save_area_memory-request"
  "c8b71483aabdfc117f6a0d5ed8a98ab9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<save_area_memory-request>)))
  "Returns full string definition for message of type '<save_area_memory-request>"
  (cl:format cl:nil "# Filename (with path and externsion) of the area memory file. Existing files will be updated~%string area_memory_filename ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'save_area_memory-request)))
  "Returns full string definition for message of type 'save_area_memory-request"
  (cl:format cl:nil "# Filename (with path and externsion) of the area memory file. Existing files will be updated~%string area_memory_filename ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <save_area_memory-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'area_memory_filename))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <save_area_memory-request>))
  "Converts a ROS message object to a list"
  (cl:list 'save_area_memory-request
    (cl:cons ':area_memory_filename (area_memory_filename msg))
))
;//! \htmlinclude save_area_memory-response.msg.html

(cl:defclass <save_area_memory-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass save_area_memory-response (<save_area_memory-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <save_area_memory-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'save_area_memory-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zed_interfaces-srv:<save_area_memory-response> is deprecated: use zed_interfaces-srv:save_area_memory-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <save_area_memory-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-srv:result-val is deprecated.  Use zed_interfaces-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'info-val :lambda-list '(m))
(cl:defmethod info-val ((m <save_area_memory-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-srv:info-val is deprecated.  Use zed_interfaces-srv:info instead.")
  (info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <save_area_memory-response>) ostream)
  "Serializes a message object of type '<save_area_memory-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <save_area_memory-response>) istream)
  "Deserializes a message object of type '<save_area_memory-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<save_area_memory-response>)))
  "Returns string type for a service object of type '<save_area_memory-response>"
  "zed_interfaces/save_area_memoryResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'save_area_memory-response)))
  "Returns string type for a service object of type 'save_area_memory-response"
  "zed_interfaces/save_area_memoryResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<save_area_memory-response>)))
  "Returns md5sum for a message object of type '<save_area_memory-response>"
  "c8b71483aabdfc117f6a0d5ed8a98ab9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'save_area_memory-response)))
  "Returns md5sum for a message object of type 'save_area_memory-response"
  "c8b71483aabdfc117f6a0d5ed8a98ab9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<save_area_memory-response>)))
  "Returns full string definition for message of type '<save_area_memory-response>"
  (cl:format cl:nil "bool result~%string info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'save_area_memory-response)))
  "Returns full string definition for message of type 'save_area_memory-response"
  (cl:format cl:nil "bool result~%string info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <save_area_memory-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <save_area_memory-response>))
  "Converts a ROS message object to a list"
  (cl:list 'save_area_memory-response
    (cl:cons ':result (result msg))
    (cl:cons ':info (info msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'save_area_memory)))
  'save_area_memory-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'save_area_memory)))
  'save_area_memory-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'save_area_memory)))
  "Returns string type for a service object of type '<save_area_memory>"
  "zed_interfaces/save_area_memory")