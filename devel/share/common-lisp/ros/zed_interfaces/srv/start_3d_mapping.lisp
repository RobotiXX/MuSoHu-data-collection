; Auto-generated. Do not edit!


(cl:in-package zed_interfaces-srv)


;//! \htmlinclude start_3d_mapping-request.msg.html

(cl:defclass <start_3d_mapping-request> (roslisp-msg-protocol:ros-message)
  ((resolution
    :reader resolution
    :initarg :resolution
    :type cl:float
    :initform 0.0)
   (max_mapping_range
    :reader max_mapping_range
    :initarg :max_mapping_range
    :type cl:float
    :initform 0.0)
   (fused_pointcloud_freq
    :reader fused_pointcloud_freq
    :initarg :fused_pointcloud_freq
    :type cl:float
    :initform 0.0))
)

(cl:defclass start_3d_mapping-request (<start_3d_mapping-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <start_3d_mapping-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'start_3d_mapping-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zed_interfaces-srv:<start_3d_mapping-request> is deprecated: use zed_interfaces-srv:start_3d_mapping-request instead.")))

(cl:ensure-generic-function 'resolution-val :lambda-list '(m))
(cl:defmethod resolution-val ((m <start_3d_mapping-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-srv:resolution-val is deprecated.  Use zed_interfaces-srv:resolution instead.")
  (resolution m))

(cl:ensure-generic-function 'max_mapping_range-val :lambda-list '(m))
(cl:defmethod max_mapping_range-val ((m <start_3d_mapping-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-srv:max_mapping_range-val is deprecated.  Use zed_interfaces-srv:max_mapping_range instead.")
  (max_mapping_range m))

(cl:ensure-generic-function 'fused_pointcloud_freq-val :lambda-list '(m))
(cl:defmethod fused_pointcloud_freq-val ((m <start_3d_mapping-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-srv:fused_pointcloud_freq-val is deprecated.  Use zed_interfaces-srv:fused_pointcloud_freq instead.")
  (fused_pointcloud_freq m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <start_3d_mapping-request>) ostream)
  "Serializes a message object of type '<start_3d_mapping-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'resolution))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_mapping_range))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'fused_pointcloud_freq))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <start_3d_mapping-request>) istream)
  "Deserializes a message object of type '<start_3d_mapping-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'resolution) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_mapping_range) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fused_pointcloud_freq) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<start_3d_mapping-request>)))
  "Returns string type for a service object of type '<start_3d_mapping-request>"
  "zed_interfaces/start_3d_mappingRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'start_3d_mapping-request)))
  "Returns string type for a service object of type 'start_3d_mapping-request"
  "zed_interfaces/start_3d_mappingRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<start_3d_mapping-request>)))
  "Returns md5sum for a message object of type '<start_3d_mapping-request>"
  "3196af5ec088c6cf035e36ce85c17da0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'start_3d_mapping-request)))
  "Returns md5sum for a message object of type 'start_3d_mapping-request"
  "3196af5ec088c6cf035e36ce85c17da0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<start_3d_mapping-request>)))
  "Returns full string definition for message of type '<start_3d_mapping-request>"
  (cl:format cl:nil "# Starts 3D fused pointcloud generation, if not automatically enabled with the parameter `mapping/mapping_enabled`~%~%# Resolution of the fused pointcloud in meters [0.01, 0.2]~%float32 resolution~%~%# Max mapping range in meters [0.2, 20.0]~%float32 max_mapping_range~%~%# Frequency of the publishing of the fused colored point cloud~%float32 fused_pointcloud_freq~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'start_3d_mapping-request)))
  "Returns full string definition for message of type 'start_3d_mapping-request"
  (cl:format cl:nil "# Starts 3D fused pointcloud generation, if not automatically enabled with the parameter `mapping/mapping_enabled`~%~%# Resolution of the fused pointcloud in meters [0.01, 0.2]~%float32 resolution~%~%# Max mapping range in meters [0.2, 20.0]~%float32 max_mapping_range~%~%# Frequency of the publishing of the fused colored point cloud~%float32 fused_pointcloud_freq~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <start_3d_mapping-request>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <start_3d_mapping-request>))
  "Converts a ROS message object to a list"
  (cl:list 'start_3d_mapping-request
    (cl:cons ':resolution (resolution msg))
    (cl:cons ':max_mapping_range (max_mapping_range msg))
    (cl:cons ':fused_pointcloud_freq (fused_pointcloud_freq msg))
))
;//! \htmlinclude start_3d_mapping-response.msg.html

(cl:defclass <start_3d_mapping-response> (roslisp-msg-protocol:ros-message)
  ((done
    :reader done
    :initarg :done
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass start_3d_mapping-response (<start_3d_mapping-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <start_3d_mapping-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'start_3d_mapping-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zed_interfaces-srv:<start_3d_mapping-response> is deprecated: use zed_interfaces-srv:start_3d_mapping-response instead.")))

(cl:ensure-generic-function 'done-val :lambda-list '(m))
(cl:defmethod done-val ((m <start_3d_mapping-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-srv:done-val is deprecated.  Use zed_interfaces-srv:done instead.")
  (done m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <start_3d_mapping-response>) ostream)
  "Serializes a message object of type '<start_3d_mapping-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'done) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <start_3d_mapping-response>) istream)
  "Deserializes a message object of type '<start_3d_mapping-response>"
    (cl:setf (cl:slot-value msg 'done) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<start_3d_mapping-response>)))
  "Returns string type for a service object of type '<start_3d_mapping-response>"
  "zed_interfaces/start_3d_mappingResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'start_3d_mapping-response)))
  "Returns string type for a service object of type 'start_3d_mapping-response"
  "zed_interfaces/start_3d_mappingResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<start_3d_mapping-response>)))
  "Returns md5sum for a message object of type '<start_3d_mapping-response>"
  "3196af5ec088c6cf035e36ce85c17da0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'start_3d_mapping-response)))
  "Returns md5sum for a message object of type 'start_3d_mapping-response"
  "3196af5ec088c6cf035e36ce85c17da0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<start_3d_mapping-response>)))
  "Returns full string definition for message of type '<start_3d_mapping-response>"
  (cl:format cl:nil "bool done~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'start_3d_mapping-response)))
  "Returns full string definition for message of type 'start_3d_mapping-response"
  (cl:format cl:nil "bool done~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <start_3d_mapping-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <start_3d_mapping-response>))
  "Converts a ROS message object to a list"
  (cl:list 'start_3d_mapping-response
    (cl:cons ':done (done msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'start_3d_mapping)))
  'start_3d_mapping-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'start_3d_mapping)))
  'start_3d_mapping-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'start_3d_mapping)))
  "Returns string type for a service object of type '<start_3d_mapping>"
  "zed_interfaces/start_3d_mapping")