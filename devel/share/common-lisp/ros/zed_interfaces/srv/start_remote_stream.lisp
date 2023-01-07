; Auto-generated. Do not edit!


(cl:in-package zed_interfaces-srv)


;//! \htmlinclude start_remote_stream-request.msg.html

(cl:defclass <start_remote_stream-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass start_remote_stream-request (<start_remote_stream-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <start_remote_stream-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'start_remote_stream-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zed_interfaces-srv:<start_remote_stream-request> is deprecated: use zed_interfaces-srv:start_remote_stream-request instead.")))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<start_remote_stream-request>)))
    "Constants for message type '<start_remote_stream-request>"
  '((:CODEC . 0)
    (:PORT . 30000)
    (:BITRATE . 2000)
    (:GOP_SIZE . -1)
    (:ADAPTATIVE_BITRATE . False))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'start_remote_stream-request)))
    "Constants for message type 'start_remote_stream-request"
  '((:CODEC . 0)
    (:PORT . 30000)
    (:BITRATE . 2000)
    (:GOP_SIZE . -1)
    (:ADAPTATIVE_BITRATE . False))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <start_remote_stream-request>) ostream)
  "Serializes a message object of type '<start_remote_stream-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <start_remote_stream-request>) istream)
  "Deserializes a message object of type '<start_remote_stream-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<start_remote_stream-request>)))
  "Returns string type for a service object of type '<start_remote_stream-request>"
  "zed_interfaces/start_remote_streamRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'start_remote_stream-request)))
  "Returns string type for a service object of type 'start_remote_stream-request"
  "zed_interfaces/start_remote_streamRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<start_remote_stream-request>)))
  "Returns md5sum for a message object of type '<start_remote_stream-request>"
  "c9f6f4c6411b7a0c79a7a7357650993c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'start_remote_stream-request)))
  "Returns md5sum for a message object of type 'start_remote_stream-request"
  "c9f6f4c6411b7a0c79a7a7357650993c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<start_remote_stream-request>)))
  "Returns full string definition for message of type '<start_remote_stream-request>"
  (cl:format cl:nil "# Defines the codec used for streaming (`0`: AVCHD [H264], `1`: HEVC [H265])~%# Note: If HEVC (H265) is used, make sure the recieving host is compatible with HEVC decoding (basically a pascal NVIDIA card). If not, prefer to use AVCHD (H264) since every compatible NVIDIA card supports AVCHD decoding~%uint8 codec=0~%~%# Defines the PORT the data will be streamed on. ~%# Note: port must be an even number. Any odd number will be rejected. ~%uint16 port=30000~%~%# Defines the streaming BITRATE in Kbits/s~%uint32 bitrate=2000~%~%# Defines the GOP SIZE in frame unit.~%# Note: if value is set to -1, the gop size will match 2 seconds, depending on camera fps.~%# Note: The gop size determines the maximum distance between IDR/I-frames. Very high GOP size will result in slightly more efficient compression, especially on static scene. But it can result in more latency if IDR/I-frame packet are lost during streaming.~%# Note: Default value is -1. Maximum allowed value is 256 (frames).~%int32 gop_size=-1~%~%# Enable/Disable adaptive bitrate~%# Note: Bitrate will be adjusted regarding the number of packet loss during streaming.~%# Note_ if activated, bitrate can vary between [bitrate/4, bitrate]~%# Warning: Currently, the adaptive bitrate only works when \"sending\" device is a NVIDIA jetson (X1,X2,Xavier,Nano)~%bool adaptative_bitrate=False~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'start_remote_stream-request)))
  "Returns full string definition for message of type 'start_remote_stream-request"
  (cl:format cl:nil "# Defines the codec used for streaming (`0`: AVCHD [H264], `1`: HEVC [H265])~%# Note: If HEVC (H265) is used, make sure the recieving host is compatible with HEVC decoding (basically a pascal NVIDIA card). If not, prefer to use AVCHD (H264) since every compatible NVIDIA card supports AVCHD decoding~%uint8 codec=0~%~%# Defines the PORT the data will be streamed on. ~%# Note: port must be an even number. Any odd number will be rejected. ~%uint16 port=30000~%~%# Defines the streaming BITRATE in Kbits/s~%uint32 bitrate=2000~%~%# Defines the GOP SIZE in frame unit.~%# Note: if value is set to -1, the gop size will match 2 seconds, depending on camera fps.~%# Note: The gop size determines the maximum distance between IDR/I-frames. Very high GOP size will result in slightly more efficient compression, especially on static scene. But it can result in more latency if IDR/I-frame packet are lost during streaming.~%# Note: Default value is -1. Maximum allowed value is 256 (frames).~%int32 gop_size=-1~%~%# Enable/Disable adaptive bitrate~%# Note: Bitrate will be adjusted regarding the number of packet loss during streaming.~%# Note_ if activated, bitrate can vary between [bitrate/4, bitrate]~%# Warning: Currently, the adaptive bitrate only works when \"sending\" device is a NVIDIA jetson (X1,X2,Xavier,Nano)~%bool adaptative_bitrate=False~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <start_remote_stream-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <start_remote_stream-request>))
  "Converts a ROS message object to a list"
  (cl:list 'start_remote_stream-request
))
;//! \htmlinclude start_remote_stream-response.msg.html

(cl:defclass <start_remote_stream-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass start_remote_stream-response (<start_remote_stream-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <start_remote_stream-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'start_remote_stream-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zed_interfaces-srv:<start_remote_stream-response> is deprecated: use zed_interfaces-srv:start_remote_stream-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <start_remote_stream-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-srv:result-val is deprecated.  Use zed_interfaces-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'info-val :lambda-list '(m))
(cl:defmethod info-val ((m <start_remote_stream-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-srv:info-val is deprecated.  Use zed_interfaces-srv:info instead.")
  (info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <start_remote_stream-response>) ostream)
  "Serializes a message object of type '<start_remote_stream-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <start_remote_stream-response>) istream)
  "Deserializes a message object of type '<start_remote_stream-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<start_remote_stream-response>)))
  "Returns string type for a service object of type '<start_remote_stream-response>"
  "zed_interfaces/start_remote_streamResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'start_remote_stream-response)))
  "Returns string type for a service object of type 'start_remote_stream-response"
  "zed_interfaces/start_remote_streamResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<start_remote_stream-response>)))
  "Returns md5sum for a message object of type '<start_remote_stream-response>"
  "c9f6f4c6411b7a0c79a7a7357650993c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'start_remote_stream-response)))
  "Returns md5sum for a message object of type 'start_remote_stream-response"
  "c9f6f4c6411b7a0c79a7a7357650993c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<start_remote_stream-response>)))
  "Returns full string definition for message of type '<start_remote_stream-response>"
  (cl:format cl:nil "bool result~%string info~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'start_remote_stream-response)))
  "Returns full string definition for message of type 'start_remote_stream-response"
  (cl:format cl:nil "bool result~%string info~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <start_remote_stream-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <start_remote_stream-response>))
  "Converts a ROS message object to a list"
  (cl:list 'start_remote_stream-response
    (cl:cons ':result (result msg))
    (cl:cons ':info (info msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'start_remote_stream)))
  'start_remote_stream-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'start_remote_stream)))
  'start_remote_stream-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'start_remote_stream)))
  "Returns string type for a service object of type '<start_remote_stream>"
  "zed_interfaces/start_remote_stream")