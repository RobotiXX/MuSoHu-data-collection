; Auto-generated. Do not edit!


(cl:in-package zed_interfaces-srv)


;//! \htmlinclude start_object_detection-request.msg.html

(cl:defclass <start_object_detection-request> (roslisp-msg-protocol:ros-message)
  ((model
    :reader model
    :initarg :model
    :type cl:fixnum
    :initform 0)
   (confidence
    :reader confidence
    :initarg :confidence
    :type cl:float
    :initform 0.0)
   (max_range
    :reader max_range
    :initarg :max_range
    :type cl:float
    :initform 0.0)
   (tracking
    :reader tracking
    :initarg :tracking
    :type cl:boolean
    :initform cl:nil)
   (sk_body_fitting
    :reader sk_body_fitting
    :initarg :sk_body_fitting
    :type cl:boolean
    :initform cl:nil)
   (mc_people
    :reader mc_people
    :initarg :mc_people
    :type cl:boolean
    :initform cl:nil)
   (mc_vehicles
    :reader mc_vehicles
    :initarg :mc_vehicles
    :type cl:boolean
    :initform cl:nil)
   (mc_bag
    :reader mc_bag
    :initarg :mc_bag
    :type cl:boolean
    :initform cl:nil)
   (mc_animal
    :reader mc_animal
    :initarg :mc_animal
    :type cl:boolean
    :initform cl:nil)
   (mc_electronics
    :reader mc_electronics
    :initarg :mc_electronics
    :type cl:boolean
    :initform cl:nil)
   (mc_fruit_vegetable
    :reader mc_fruit_vegetable
    :initarg :mc_fruit_vegetable
    :type cl:boolean
    :initform cl:nil)
   (mc_sport
    :reader mc_sport
    :initarg :mc_sport
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass start_object_detection-request (<start_object_detection-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <start_object_detection-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'start_object_detection-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zed_interfaces-srv:<start_object_detection-request> is deprecated: use zed_interfaces-srv:start_object_detection-request instead.")))

(cl:ensure-generic-function 'model-val :lambda-list '(m))
(cl:defmethod model-val ((m <start_object_detection-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-srv:model-val is deprecated.  Use zed_interfaces-srv:model instead.")
  (model m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <start_object_detection-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-srv:confidence-val is deprecated.  Use zed_interfaces-srv:confidence instead.")
  (confidence m))

(cl:ensure-generic-function 'max_range-val :lambda-list '(m))
(cl:defmethod max_range-val ((m <start_object_detection-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-srv:max_range-val is deprecated.  Use zed_interfaces-srv:max_range instead.")
  (max_range m))

(cl:ensure-generic-function 'tracking-val :lambda-list '(m))
(cl:defmethod tracking-val ((m <start_object_detection-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-srv:tracking-val is deprecated.  Use zed_interfaces-srv:tracking instead.")
  (tracking m))

(cl:ensure-generic-function 'sk_body_fitting-val :lambda-list '(m))
(cl:defmethod sk_body_fitting-val ((m <start_object_detection-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-srv:sk_body_fitting-val is deprecated.  Use zed_interfaces-srv:sk_body_fitting instead.")
  (sk_body_fitting m))

(cl:ensure-generic-function 'mc_people-val :lambda-list '(m))
(cl:defmethod mc_people-val ((m <start_object_detection-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-srv:mc_people-val is deprecated.  Use zed_interfaces-srv:mc_people instead.")
  (mc_people m))

(cl:ensure-generic-function 'mc_vehicles-val :lambda-list '(m))
(cl:defmethod mc_vehicles-val ((m <start_object_detection-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-srv:mc_vehicles-val is deprecated.  Use zed_interfaces-srv:mc_vehicles instead.")
  (mc_vehicles m))

(cl:ensure-generic-function 'mc_bag-val :lambda-list '(m))
(cl:defmethod mc_bag-val ((m <start_object_detection-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-srv:mc_bag-val is deprecated.  Use zed_interfaces-srv:mc_bag instead.")
  (mc_bag m))

(cl:ensure-generic-function 'mc_animal-val :lambda-list '(m))
(cl:defmethod mc_animal-val ((m <start_object_detection-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-srv:mc_animal-val is deprecated.  Use zed_interfaces-srv:mc_animal instead.")
  (mc_animal m))

(cl:ensure-generic-function 'mc_electronics-val :lambda-list '(m))
(cl:defmethod mc_electronics-val ((m <start_object_detection-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-srv:mc_electronics-val is deprecated.  Use zed_interfaces-srv:mc_electronics instead.")
  (mc_electronics m))

(cl:ensure-generic-function 'mc_fruit_vegetable-val :lambda-list '(m))
(cl:defmethod mc_fruit_vegetable-val ((m <start_object_detection-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-srv:mc_fruit_vegetable-val is deprecated.  Use zed_interfaces-srv:mc_fruit_vegetable instead.")
  (mc_fruit_vegetable m))

(cl:ensure-generic-function 'mc_sport-val :lambda-list '(m))
(cl:defmethod mc_sport-val ((m <start_object_detection-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-srv:mc_sport-val is deprecated.  Use zed_interfaces-srv:mc_sport instead.")
  (mc_sport m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <start_object_detection-request>) ostream)
  "Serializes a message object of type '<start_object_detection-request>"
  (cl:let* ((signed (cl:slot-value msg 'model)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_range))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'tracking) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'sk_body_fitting) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'mc_people) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'mc_vehicles) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'mc_bag) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'mc_animal) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'mc_electronics) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'mc_fruit_vegetable) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'mc_sport) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <start_object_detection-request>) istream)
  "Deserializes a message object of type '<start_object_detection-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'model) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confidence) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_range) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'tracking) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'sk_body_fitting) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'mc_people) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'mc_vehicles) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'mc_bag) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'mc_animal) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'mc_electronics) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'mc_fruit_vegetable) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'mc_sport) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<start_object_detection-request>)))
  "Returns string type for a service object of type '<start_object_detection-request>"
  "zed_interfaces/start_object_detectionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'start_object_detection-request)))
  "Returns string type for a service object of type 'start_object_detection-request"
  "zed_interfaces/start_object_detectionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<start_object_detection-request>)))
  "Returns md5sum for a message object of type '<start_object_detection-request>"
  "9756600455daaeb06ade1a46c6073504")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'start_object_detection-request)))
  "Returns md5sum for a message object of type 'start_object_detection-request"
  "9756600455daaeb06ade1a46c6073504")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<start_object_detection-request>)))
  "Returns full string definition for message of type '<start_object_detection-request>"
  (cl:format cl:nil "# Starts object detection, if not automatically enabled with the parameter `object_detection/od_enabled`~%~%# OD Model~%# '0': MULTI_CLASS_BOX - '1': MULTI_CLASS_BOX_ACCURATE - '2': HUMAN_BODY_FAST - '3': HUMAN_BODY_ACCURATE~%int8 model~%~%# Minimum Confidence level~%float32 confidence~%~%# MAx detection range~%float32 max_range~%~%# Object tracking~%bool tracking~%~%# Body Fitting~%bool sk_body_fitting~%~%# Detect people (valid for Multi-class model)~%bool mc_people~%~%# Detect vehicles~%bool mc_vehicles~%~%# Detect bags~%bool mc_bag~%~%# Detect animals~%bool mc_animal~%~%# Detect electronic devices~%bool mc_electronics~%~%# Detect fruits and vegetables~%bool mc_fruit_vegetable~%~%# Detect sport objects~%bool mc_sport~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'start_object_detection-request)))
  "Returns full string definition for message of type 'start_object_detection-request"
  (cl:format cl:nil "# Starts object detection, if not automatically enabled with the parameter `object_detection/od_enabled`~%~%# OD Model~%# '0': MULTI_CLASS_BOX - '1': MULTI_CLASS_BOX_ACCURATE - '2': HUMAN_BODY_FAST - '3': HUMAN_BODY_ACCURATE~%int8 model~%~%# Minimum Confidence level~%float32 confidence~%~%# MAx detection range~%float32 max_range~%~%# Object tracking~%bool tracking~%~%# Body Fitting~%bool sk_body_fitting~%~%# Detect people (valid for Multi-class model)~%bool mc_people~%~%# Detect vehicles~%bool mc_vehicles~%~%# Detect bags~%bool mc_bag~%~%# Detect animals~%bool mc_animal~%~%# Detect electronic devices~%bool mc_electronics~%~%# Detect fruits and vegetables~%bool mc_fruit_vegetable~%~%# Detect sport objects~%bool mc_sport~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <start_object_detection-request>))
  (cl:+ 0
     1
     4
     4
     1
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <start_object_detection-request>))
  "Converts a ROS message object to a list"
  (cl:list 'start_object_detection-request
    (cl:cons ':model (model msg))
    (cl:cons ':confidence (confidence msg))
    (cl:cons ':max_range (max_range msg))
    (cl:cons ':tracking (tracking msg))
    (cl:cons ':sk_body_fitting (sk_body_fitting msg))
    (cl:cons ':mc_people (mc_people msg))
    (cl:cons ':mc_vehicles (mc_vehicles msg))
    (cl:cons ':mc_bag (mc_bag msg))
    (cl:cons ':mc_animal (mc_animal msg))
    (cl:cons ':mc_electronics (mc_electronics msg))
    (cl:cons ':mc_fruit_vegetable (mc_fruit_vegetable msg))
    (cl:cons ':mc_sport (mc_sport msg))
))
;//! \htmlinclude start_object_detection-response.msg.html

(cl:defclass <start_object_detection-response> (roslisp-msg-protocol:ros-message)
  ((done
    :reader done
    :initarg :done
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass start_object_detection-response (<start_object_detection-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <start_object_detection-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'start_object_detection-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zed_interfaces-srv:<start_object_detection-response> is deprecated: use zed_interfaces-srv:start_object_detection-response instead.")))

(cl:ensure-generic-function 'done-val :lambda-list '(m))
(cl:defmethod done-val ((m <start_object_detection-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_interfaces-srv:done-val is deprecated.  Use zed_interfaces-srv:done instead.")
  (done m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <start_object_detection-response>) ostream)
  "Serializes a message object of type '<start_object_detection-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'done) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <start_object_detection-response>) istream)
  "Deserializes a message object of type '<start_object_detection-response>"
    (cl:setf (cl:slot-value msg 'done) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<start_object_detection-response>)))
  "Returns string type for a service object of type '<start_object_detection-response>"
  "zed_interfaces/start_object_detectionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'start_object_detection-response)))
  "Returns string type for a service object of type 'start_object_detection-response"
  "zed_interfaces/start_object_detectionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<start_object_detection-response>)))
  "Returns md5sum for a message object of type '<start_object_detection-response>"
  "9756600455daaeb06ade1a46c6073504")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'start_object_detection-response)))
  "Returns md5sum for a message object of type 'start_object_detection-response"
  "9756600455daaeb06ade1a46c6073504")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<start_object_detection-response>)))
  "Returns full string definition for message of type '<start_object_detection-response>"
  (cl:format cl:nil "bool done~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'start_object_detection-response)))
  "Returns full string definition for message of type 'start_object_detection-response"
  (cl:format cl:nil "bool done~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <start_object_detection-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <start_object_detection-response>))
  "Converts a ROS message object to a list"
  (cl:list 'start_object_detection-response
    (cl:cons ':done (done msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'start_object_detection)))
  'start_object_detection-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'start_object_detection)))
  'start_object_detection-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'start_object_detection)))
  "Returns string type for a service object of type '<start_object_detection>"
  "zed_interfaces/start_object_detection")