; Auto-generated. Do not edit!


(cl:in-package zed_interfaces-srv)


;//! \htmlinclude save_3d_map-request.msg.html

(cl:defclass <save_3d_map-request> (roslisp-msg-protocol:ros-message)
  ((map_filename
    :reader map_filename
    :initarg :map_filename
    :type cl:string
    :initform "")
   (file_format
    :reader file_format
    :initarg :file_format
    :type cl:fixnum
    :initform 0))
)

(cl:defclass save_3d_map-request (<save_3d_map-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <save_3d_map-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'save_3d_map-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zed_interfaces-srv:<save_3d_map-request> is deprecated: use zed_interfaces-srv:save_3d_map-request instead.")))

(cl:ensure-generic-function 'map_filename-val :lambda-list '(m))
(cl:defmethod map_filename-val ((m <save_3d_map-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-srv:map_filename-val is deprecated.  Use zed_interfaces-srv:map_filename instead.")
  (map_filename m))

(cl:ensure-generic-function 'file_format-val :lambda-list '(m))
(cl:defmethod file_format-val ((m <save_3d_map-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-srv:file_format-val is deprecated.  Use zed_interfaces-srv:file_format instead.")
  (file_format m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <save_3d_map-request>) ostream)
  "Serializes a message object of type '<save_3d_map-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'map_filename))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'map_filename))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'file_format)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <save_3d_map-request>) istream)
  "Deserializes a message object of type '<save_3d_map-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'map_filename) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'map_filename) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'file_format)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<save_3d_map-request>)))
  "Returns string type for a service object of type '<save_3d_map-request>"
  "zed_interfaces/save_3d_mapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'save_3d_map-request)))
  "Returns string type for a service object of type 'save_3d_map-request"
  "zed_interfaces/save_3d_mapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<save_3d_map-request>)))
  "Returns md5sum for a message object of type '<save_3d_map-request>"
  "6b30b06d24a8a3ccaaea817409144337")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'save_3d_map-request)))
  "Returns md5sum for a message object of type 'save_3d_map-request"
  "6b30b06d24a8a3ccaaea817409144337")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<save_3d_map-request>)))
  "Returns full string definition for message of type '<save_3d_map-request>"
  (cl:format cl:nil "# Filename (with path and externsion) of the map file~%string map_filename ~%~%# File format [0: PLY, 1: PLY_BIN, 2: OBJ]~%uint8 file_format~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'save_3d_map-request)))
  "Returns full string definition for message of type 'save_3d_map-request"
  (cl:format cl:nil "# Filename (with path and externsion) of the map file~%string map_filename ~%~%# File format [0: PLY, 1: PLY_BIN, 2: OBJ]~%uint8 file_format~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <save_3d_map-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'map_filename))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <save_3d_map-request>))
  "Converts a ROS message object to a list"
  (cl:list 'save_3d_map-request
    (cl:cons ':map_filename (map_filename msg))
    (cl:cons ':file_format (file_format msg))
))
;//! \htmlinclude save_3d_map-response.msg.html

(cl:defclass <save_3d_map-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass save_3d_map-response (<save_3d_map-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <save_3d_map-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'save_3d_map-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zed_interfaces-srv:<save_3d_map-response> is deprecated: use zed_interfaces-srv:save_3d_map-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <save_3d_map-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-srv:result-val is deprecated.  Use zed_interfaces-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'info-val :lambda-list '(m))
(cl:defmethod info-val ((m <save_3d_map-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-srv:info-val is deprecated.  Use zed_interfaces-srv:info instead.")
  (info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <save_3d_map-response>) ostream)
  "Serializes a message object of type '<save_3d_map-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <save_3d_map-response>) istream)
  "Deserializes a message object of type '<save_3d_map-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<save_3d_map-response>)))
  "Returns string type for a service object of type '<save_3d_map-response>"
  "zed_interfaces/save_3d_mapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'save_3d_map-response)))
  "Returns string type for a service object of type 'save_3d_map-response"
  "zed_interfaces/save_3d_mapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<save_3d_map-response>)))
  "Returns md5sum for a message object of type '<save_3d_map-response>"
  "6b30b06d24a8a3ccaaea817409144337")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'save_3d_map-response)))
  "Returns md5sum for a message object of type 'save_3d_map-response"
  "6b30b06d24a8a3ccaaea817409144337")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<save_3d_map-response>)))
  "Returns full string definition for message of type '<save_3d_map-response>"
  (cl:format cl:nil "bool result~%string info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'save_3d_map-response)))
  "Returns full string definition for message of type 'save_3d_map-response"
  (cl:format cl:nil "bool result~%string info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <save_3d_map-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <save_3d_map-response>))
  "Converts a ROS message object to a list"
  (cl:list 'save_3d_map-response
    (cl:cons ':result (result msg))
    (cl:cons ':info (info msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'save_3d_map)))
  'save_3d_map-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'save_3d_map)))
  'save_3d_map-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'save_3d_map)))
  "Returns string type for a service object of type '<save_3d_map>"
  "zed_interfaces/save_3d_map")