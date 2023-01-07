; Auto-generated. Do not edit!


(cl:in-package zed_interfaces-msg)


;//! \htmlinclude Object.msg.html

(cl:defclass <Object> (roslisp-msg-protocol:ros-message)
  ((label
    :reader label
    :initarg :label
    :type cl:string
    :initform "")
   (label_id
    :reader label_id
    :initarg :label_id
    :type cl:fixnum
    :initform 0)
   (sublabel
    :reader sublabel
    :initarg :sublabel
    :type cl:string
    :initform "")
   (confidence
    :reader confidence
    :initarg :confidence
    :type cl:float
    :initform 0.0)
   (position
    :reader position
    :initarg :position
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (position_covariance
    :reader position_covariance
    :initarg :position_covariance
    :type (cl:vector cl:float)
   :initform (cl:make-array 6 :element-type 'cl:float :initial-element 0.0))
   (velocity
    :reader velocity
    :initarg :velocity
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (tracking_available
    :reader tracking_available
    :initarg :tracking_available
    :type cl:boolean
    :initform cl:nil)
   (tracking_state
    :reader tracking_state
    :initarg :tracking_state
    :type cl:fixnum
    :initform 0)
   (action_state
    :reader action_state
    :initarg :action_state
    :type cl:fixnum
    :initform 0)
   (bounding_box_2d
    :reader bounding_box_2d
    :initarg :bounding_box_2d
    :type zed_interfaces-msg:BoundingBox2Di
    :initform (cl:make-instance 'zed_interfaces-msg:BoundingBox2Di))
   (bounding_box_3d
    :reader bounding_box_3d
    :initarg :bounding_box_3d
    :type zed_interfaces-msg:BoundingBox3D
    :initform (cl:make-instance 'zed_interfaces-msg:BoundingBox3D))
   (dimensions_3d
    :reader dimensions_3d
    :initarg :dimensions_3d
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (skeleton_available
    :reader skeleton_available
    :initarg :skeleton_available
    :type cl:boolean
    :initform cl:nil)
   (head_bounding_box_2d
    :reader head_bounding_box_2d
    :initarg :head_bounding_box_2d
    :type zed_interfaces-msg:BoundingBox2Df
    :initform (cl:make-instance 'zed_interfaces-msg:BoundingBox2Df))
   (head_bounding_box_3d
    :reader head_bounding_box_3d
    :initarg :head_bounding_box_3d
    :type zed_interfaces-msg:BoundingBox3D
    :initform (cl:make-instance 'zed_interfaces-msg:BoundingBox3D))
   (head_position
    :reader head_position
    :initarg :head_position
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (skeleton_2d
    :reader skeleton_2d
    :initarg :skeleton_2d
    :type zed_interfaces-msg:Skeleton2D
    :initform (cl:make-instance 'zed_interfaces-msg:Skeleton2D))
   (skeleton_3d
    :reader skeleton_3d
    :initarg :skeleton_3d
    :type zed_interfaces-msg:Skeleton3D
    :initform (cl:make-instance 'zed_interfaces-msg:Skeleton3D)))
)

(cl:defclass Object (<Object>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Object>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Object)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zed_interfaces-msg:<Object> is deprecated: use zed_interfaces-msg:Object instead.")))

(cl:ensure-generic-function 'label-val :lambda-list '(m))
(cl:defmethod label-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-msg:label-val is deprecated.  Use zed_interfaces-msg:label instead.")
  (label m))

(cl:ensure-generic-function 'label_id-val :lambda-list '(m))
(cl:defmethod label_id-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-msg:label_id-val is deprecated.  Use zed_interfaces-msg:label_id instead.")
  (label_id m))

(cl:ensure-generic-function 'sublabel-val :lambda-list '(m))
(cl:defmethod sublabel-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-msg:sublabel-val is deprecated.  Use zed_interfaces-msg:sublabel instead.")
  (sublabel m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-msg:confidence-val is deprecated.  Use zed_interfaces-msg:confidence instead.")
  (confidence m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-msg:position-val is deprecated.  Use zed_interfaces-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'position_covariance-val :lambda-list '(m))
(cl:defmethod position_covariance-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-msg:position_covariance-val is deprecated.  Use zed_interfaces-msg:position_covariance instead.")
  (position_covariance m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-msg:velocity-val is deprecated.  Use zed_interfaces-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'tracking_available-val :lambda-list '(m))
(cl:defmethod tracking_available-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-msg:tracking_available-val is deprecated.  Use zed_interfaces-msg:tracking_available instead.")
  (tracking_available m))

(cl:ensure-generic-function 'tracking_state-val :lambda-list '(m))
(cl:defmethod tracking_state-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-msg:tracking_state-val is deprecated.  Use zed_interfaces-msg:tracking_state instead.")
  (tracking_state m))

(cl:ensure-generic-function 'action_state-val :lambda-list '(m))
(cl:defmethod action_state-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-msg:action_state-val is deprecated.  Use zed_interfaces-msg:action_state instead.")
  (action_state m))

(cl:ensure-generic-function 'bounding_box_2d-val :lambda-list '(m))
(cl:defmethod bounding_box_2d-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-msg:bounding_box_2d-val is deprecated.  Use zed_interfaces-msg:bounding_box_2d instead.")
  (bounding_box_2d m))

(cl:ensure-generic-function 'bounding_box_3d-val :lambda-list '(m))
(cl:defmethod bounding_box_3d-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-msg:bounding_box_3d-val is deprecated.  Use zed_interfaces-msg:bounding_box_3d instead.")
  (bounding_box_3d m))

(cl:ensure-generic-function 'dimensions_3d-val :lambda-list '(m))
(cl:defmethod dimensions_3d-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-msg:dimensions_3d-val is deprecated.  Use zed_interfaces-msg:dimensions_3d instead.")
  (dimensions_3d m))

(cl:ensure-generic-function 'skeleton_available-val :lambda-list '(m))
(cl:defmethod skeleton_available-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-msg:skeleton_available-val is deprecated.  Use zed_interfaces-msg:skeleton_available instead.")
  (skeleton_available m))

(cl:ensure-generic-function 'head_bounding_box_2d-val :lambda-list '(m))
(cl:defmethod head_bounding_box_2d-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-msg:head_bounding_box_2d-val is deprecated.  Use zed_interfaces-msg:head_bounding_box_2d instead.")
  (head_bounding_box_2d m))

(cl:ensure-generic-function 'head_bounding_box_3d-val :lambda-list '(m))
(cl:defmethod head_bounding_box_3d-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-msg:head_bounding_box_3d-val is deprecated.  Use zed_interfaces-msg:head_bounding_box_3d instead.")
  (head_bounding_box_3d m))

(cl:ensure-generic-function 'head_position-val :lambda-list '(m))
(cl:defmethod head_position-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-msg:head_position-val is deprecated.  Use zed_interfaces-msg:head_position instead.")
  (head_position m))

(cl:ensure-generic-function 'skeleton_2d-val :lambda-list '(m))
(cl:defmethod skeleton_2d-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-msg:skeleton_2d-val is deprecated.  Use zed_interfaces-msg:skeleton_2d instead.")
  (skeleton_2d m))

(cl:ensure-generic-function 'skeleton_3d-val :lambda-list '(m))
(cl:defmethod skeleton_3d-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-msg:skeleton_3d-val is deprecated.  Use zed_interfaces-msg:skeleton_3d instead.")
  (skeleton_3d m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Object>) ostream)
  "Serializes a message object of type '<Object>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'label))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'label))
  (cl:let* ((signed (cl:slot-value msg 'label_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'sublabel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'sublabel))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'position))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'position_covariance))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'velocity))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'tracking_available) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'tracking_state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'action_state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bounding_box_2d) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bounding_box_3d) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'dimensions_3d))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'skeleton_available) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'head_bounding_box_2d) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'head_bounding_box_3d) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'head_position))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'skeleton_2d) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'skeleton_3d) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Object>) istream)
  "Deserializes a message object of type '<Object>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'label) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'label) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'label_id) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sublabel) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'sublabel) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confidence) (roslisp-utils:decode-single-float-bits bits)))
  (cl:setf (cl:slot-value msg 'position) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'position)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'position_covariance) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'position_covariance)))
    (cl:dotimes (i 6)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'velocity) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'velocity)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
    (cl:setf (cl:slot-value msg 'tracking_available) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tracking_state) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'action_state) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bounding_box_2d) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bounding_box_3d) istream)
  (cl:setf (cl:slot-value msg 'dimensions_3d) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'dimensions_3d)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
    (cl:setf (cl:slot-value msg 'skeleton_available) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'head_bounding_box_2d) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'head_bounding_box_3d) istream)
  (cl:setf (cl:slot-value msg 'head_position) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'head_position)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'skeleton_2d) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'skeleton_3d) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Object>)))
  "Returns string type for a message object of type '<Object>"
  "zed_interfaces/Object")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Object)))
  "Returns string type for a message object of type 'Object"
  "zed_interfaces/Object")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Object>)))
  "Returns md5sum for a message object of type '<Object>"
  "20668bd5819407b0c69c8d1de510a3a2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Object)))
  "Returns md5sum for a message object of type 'Object"
  "20668bd5819407b0c69c8d1de510a3a2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Object>)))
  "Returns full string definition for message of type '<Object>"
  (cl:format cl:nil "# Object label~%string label~%~%# Object label ID~%int16 label_id~%~%# Object sub~%string sublabel~%~%# Object confidence level (1-99)~%float32 confidence~%~%# Object centroid position~%float32[3] position~%~%# Position covariance~%float32[6] position_covariance~%~%# Object velocity~%float32[3] velocity~%~%# Tracking available~%bool tracking_available~%~%# Tracking state~%# 0 -> OFF (object not valid)~%# 1 -> OK~%# 2 -> SEARCHING (occlusion occurred, trajectory is estimated)~%int8 tracking_state~%~%# Action state~%# 0 -> IDLE~%# 2 -> MOVING~%int8 action_state~%~%# 2D Bounding box projected to Camera image~%zed_interfaces/BoundingBox2Di bounding_box_2d~%~%# 3D Bounding box in world frame~%zed_interfaces/BoundingBox3D bounding_box_3d~%~%# 3D dimensions (width, height, lenght)~%float32[3] dimensions_3d~%~%# Is skeleton available?~%bool skeleton_available~%~%# 2D Bounding box projected to Camera image of the person head~%zed_interfaces/BoundingBox2Df head_bounding_box_2d~%~%# 3D Bounding box in world frame of the person head~%zed_interfaces/BoundingBox3D head_bounding_box_3d~%~%# 3D position of the centroid of the person head~%float32[3] head_position~%~%# 2D Person skeleton projected to Camera image~%zed_interfaces/Skeleton2D skeleton_2d~%~%# 3D Person skeleton in world frame~%zed_interfaces/Skeleton3D skeleton_3d~%~%================================================================================~%MSG: zed_interfaces/BoundingBox2Di~%#      0 ------- 1~%#      |         |~%#      |         |~%#      |         |~%#      3 ------- 2~%zed_interfaces/Keypoint2Di[4] corners~%~%================================================================================~%MSG: zed_interfaces/Keypoint2Di~%uint32[2] kp~%~%================================================================================~%MSG: zed_interfaces/BoundingBox3D~%#      1 ------- 2~%#     /.        /|~%#    0 ------- 3 |~%#    | .       | |~%#    | 5.......| 6~%#    |.        |/~%#    4 ------- 7~%zed_interfaces/Keypoint3D[8] corners~%~%================================================================================~%MSG: zed_interfaces/Keypoint3D~%float32[3] kp~%~%================================================================================~%MSG: zed_interfaces/BoundingBox2Df~%#      0 ------- 1~%#      |         |~%#      |         |~%#      |         |~%#      3 ------- 2~%zed_interfaces/Keypoint2Df[4] corners~%~%================================================================================~%MSG: zed_interfaces/Keypoint2Df~%float32[2] kp~%~%================================================================================~%MSG: zed_interfaces/Skeleton2D~%# Skeleton joints indices~%#        16-14   15-17~%#             \\ /~%#              0~%#              |~%#       2------1------5~%#       |    |   |    |~%#	    |    |   |    |~%#       3    |   |    6~%#       |    |   |    |~%#       |    |   |    |~%#       4    8   11   7~%#            |   |~%#            |   |~%#            |   |~%#            9   12~%#            |   |~%#            |   |~%#            |   |~%#           10   13~%zed_interfaces/Keypoint2Df[18] keypoints~%~%================================================================================~%MSG: zed_interfaces/Skeleton3D~%# Skeleton joints indices~%#        16-14   15-17~%#             \\ /~%#              0~%#              |~%#       2------1------5~%#       |    |   |    |~%#	    |    |   |    |~%#       3    |   |    6~%#       |    |   |    |~%#       |    |   |    |~%#       4    8   11   7~%#            |   |~%#            |   |~%#            |   |~%#            9   12~%#            |   |~%#            |   |~%#            |   |~%#           10   13~%zed_interfaces/Keypoint3D[18] keypoints~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Object)))
  "Returns full string definition for message of type 'Object"
  (cl:format cl:nil "# Object label~%string label~%~%# Object label ID~%int16 label_id~%~%# Object sub~%string sublabel~%~%# Object confidence level (1-99)~%float32 confidence~%~%# Object centroid position~%float32[3] position~%~%# Position covariance~%float32[6] position_covariance~%~%# Object velocity~%float32[3] velocity~%~%# Tracking available~%bool tracking_available~%~%# Tracking state~%# 0 -> OFF (object not valid)~%# 1 -> OK~%# 2 -> SEARCHING (occlusion occurred, trajectory is estimated)~%int8 tracking_state~%~%# Action state~%# 0 -> IDLE~%# 2 -> MOVING~%int8 action_state~%~%# 2D Bounding box projected to Camera image~%zed_interfaces/BoundingBox2Di bounding_box_2d~%~%# 3D Bounding box in world frame~%zed_interfaces/BoundingBox3D bounding_box_3d~%~%# 3D dimensions (width, height, lenght)~%float32[3] dimensions_3d~%~%# Is skeleton available?~%bool skeleton_available~%~%# 2D Bounding box projected to Camera image of the person head~%zed_interfaces/BoundingBox2Df head_bounding_box_2d~%~%# 3D Bounding box in world frame of the person head~%zed_interfaces/BoundingBox3D head_bounding_box_3d~%~%# 3D position of the centroid of the person head~%float32[3] head_position~%~%# 2D Person skeleton projected to Camera image~%zed_interfaces/Skeleton2D skeleton_2d~%~%# 3D Person skeleton in world frame~%zed_interfaces/Skeleton3D skeleton_3d~%~%================================================================================~%MSG: zed_interfaces/BoundingBox2Di~%#      0 ------- 1~%#      |         |~%#      |         |~%#      |         |~%#      3 ------- 2~%zed_interfaces/Keypoint2Di[4] corners~%~%================================================================================~%MSG: zed_interfaces/Keypoint2Di~%uint32[2] kp~%~%================================================================================~%MSG: zed_interfaces/BoundingBox3D~%#      1 ------- 2~%#     /.        /|~%#    0 ------- 3 |~%#    | .       | |~%#    | 5.......| 6~%#    |.        |/~%#    4 ------- 7~%zed_interfaces/Keypoint3D[8] corners~%~%================================================================================~%MSG: zed_interfaces/Keypoint3D~%float32[3] kp~%~%================================================================================~%MSG: zed_interfaces/BoundingBox2Df~%#      0 ------- 1~%#      |         |~%#      |         |~%#      |         |~%#      3 ------- 2~%zed_interfaces/Keypoint2Df[4] corners~%~%================================================================================~%MSG: zed_interfaces/Keypoint2Df~%float32[2] kp~%~%================================================================================~%MSG: zed_interfaces/Skeleton2D~%# Skeleton joints indices~%#        16-14   15-17~%#             \\ /~%#              0~%#              |~%#       2------1------5~%#       |    |   |    |~%#	    |    |   |    |~%#       3    |   |    6~%#       |    |   |    |~%#       |    |   |    |~%#       4    8   11   7~%#            |   |~%#            |   |~%#            |   |~%#            9   12~%#            |   |~%#            |   |~%#            |   |~%#           10   13~%zed_interfaces/Keypoint2Df[18] keypoints~%~%================================================================================~%MSG: zed_interfaces/Skeleton3D~%# Skeleton joints indices~%#        16-14   15-17~%#             \\ /~%#              0~%#              |~%#       2------1------5~%#       |    |   |    |~%#	    |    |   |    |~%#       3    |   |    6~%#       |    |   |    |~%#       |    |   |    |~%#       4    8   11   7~%#            |   |~%#            |   |~%#            |   |~%#            9   12~%#            |   |~%#            |   |~%#            |   |~%#           10   13~%zed_interfaces/Keypoint3D[18] keypoints~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Object>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'label))
     2
     4 (cl:length (cl:slot-value msg 'sublabel))
     4
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'position) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'position_covariance) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'velocity) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     1
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bounding_box_2d))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bounding_box_3d))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'dimensions_3d) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'head_bounding_box_2d))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'head_bounding_box_3d))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'head_position) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'skeleton_2d))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'skeleton_3d))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Object>))
  "Converts a ROS message object to a list"
  (cl:list 'Object
    (cl:cons ':label (label msg))
    (cl:cons ':label_id (label_id msg))
    (cl:cons ':sublabel (sublabel msg))
    (cl:cons ':confidence (confidence msg))
    (cl:cons ':position (position msg))
    (cl:cons ':position_covariance (position_covariance msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':tracking_available (tracking_available msg))
    (cl:cons ':tracking_state (tracking_state msg))
    (cl:cons ':action_state (action_state msg))
    (cl:cons ':bounding_box_2d (bounding_box_2d msg))
    (cl:cons ':bounding_box_3d (bounding_box_3d msg))
    (cl:cons ':dimensions_3d (dimensions_3d msg))
    (cl:cons ':skeleton_available (skeleton_available msg))
    (cl:cons ':head_bounding_box_2d (head_bounding_box_2d msg))
    (cl:cons ':head_bounding_box_3d (head_bounding_box_3d msg))
    (cl:cons ':head_position (head_position msg))
    (cl:cons ':skeleton_2d (skeleton_2d msg))
    (cl:cons ':skeleton_3d (skeleton_3d msg))
))
