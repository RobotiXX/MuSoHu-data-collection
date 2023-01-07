;; Auto-generated. Do not edit!


(when (boundp 'zed_interfaces::start_object_detection)
  (if (not (find-package "ZED_INTERFACES"))
    (make-package "ZED_INTERFACES"))
  (shadow 'start_object_detection (find-package "ZED_INTERFACES")))
(unless (find-package "ZED_INTERFACES::START_OBJECT_DETECTION")
  (make-package "ZED_INTERFACES::START_OBJECT_DETECTION"))
(unless (find-package "ZED_INTERFACES::START_OBJECT_DETECTIONREQUEST")
  (make-package "ZED_INTERFACES::START_OBJECT_DETECTIONREQUEST"))
(unless (find-package "ZED_INTERFACES::START_OBJECT_DETECTIONRESPONSE")
  (make-package "ZED_INTERFACES::START_OBJECT_DETECTIONRESPONSE"))

(in-package "ROS")





(defclass zed_interfaces::start_object_detectionRequest
  :super ros::object
  :slots (_model _confidence _max_range _tracking _sk_body_fitting _mc_people _mc_vehicles _mc_bag _mc_animal _mc_electronics _mc_fruit_vegetable _mc_sport ))

(defmethod zed_interfaces::start_object_detectionRequest
  (:init
   (&key
    ((:model __model) 0)
    ((:confidence __confidence) 0.0)
    ((:max_range __max_range) 0.0)
    ((:tracking __tracking) nil)
    ((:sk_body_fitting __sk_body_fitting) nil)
    ((:mc_people __mc_people) nil)
    ((:mc_vehicles __mc_vehicles) nil)
    ((:mc_bag __mc_bag) nil)
    ((:mc_animal __mc_animal) nil)
    ((:mc_electronics __mc_electronics) nil)
    ((:mc_fruit_vegetable __mc_fruit_vegetable) nil)
    ((:mc_sport __mc_sport) nil)
    )
   (send-super :init)
   (setq _model (round __model))
   (setq _confidence (float __confidence))
   (setq _max_range (float __max_range))
   (setq _tracking __tracking)
   (setq _sk_body_fitting __sk_body_fitting)
   (setq _mc_people __mc_people)
   (setq _mc_vehicles __mc_vehicles)
   (setq _mc_bag __mc_bag)
   (setq _mc_animal __mc_animal)
   (setq _mc_electronics __mc_electronics)
   (setq _mc_fruit_vegetable __mc_fruit_vegetable)
   (setq _mc_sport __mc_sport)
   self)
  (:model
   (&optional __model)
   (if __model (setq _model __model)) _model)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:max_range
   (&optional __max_range)
   (if __max_range (setq _max_range __max_range)) _max_range)
  (:tracking
   (&optional (__tracking :null))
   (if (not (eq __tracking :null)) (setq _tracking __tracking)) _tracking)
  (:sk_body_fitting
   (&optional (__sk_body_fitting :null))
   (if (not (eq __sk_body_fitting :null)) (setq _sk_body_fitting __sk_body_fitting)) _sk_body_fitting)
  (:mc_people
   (&optional (__mc_people :null))
   (if (not (eq __mc_people :null)) (setq _mc_people __mc_people)) _mc_people)
  (:mc_vehicles
   (&optional (__mc_vehicles :null))
   (if (not (eq __mc_vehicles :null)) (setq _mc_vehicles __mc_vehicles)) _mc_vehicles)
  (:mc_bag
   (&optional (__mc_bag :null))
   (if (not (eq __mc_bag :null)) (setq _mc_bag __mc_bag)) _mc_bag)
  (:mc_animal
   (&optional (__mc_animal :null))
   (if (not (eq __mc_animal :null)) (setq _mc_animal __mc_animal)) _mc_animal)
  (:mc_electronics
   (&optional (__mc_electronics :null))
   (if (not (eq __mc_electronics :null)) (setq _mc_electronics __mc_electronics)) _mc_electronics)
  (:mc_fruit_vegetable
   (&optional (__mc_fruit_vegetable :null))
   (if (not (eq __mc_fruit_vegetable :null)) (setq _mc_fruit_vegetable __mc_fruit_vegetable)) _mc_fruit_vegetable)
  (:mc_sport
   (&optional (__mc_sport :null))
   (if (not (eq __mc_sport :null)) (setq _mc_sport __mc_sport)) _mc_sport)
  (:serialization-length
   ()
   (+
    ;; int8 _model
    1
    ;; float32 _confidence
    4
    ;; float32 _max_range
    4
    ;; bool _tracking
    1
    ;; bool _sk_body_fitting
    1
    ;; bool _mc_people
    1
    ;; bool _mc_vehicles
    1
    ;; bool _mc_bag
    1
    ;; bool _mc_animal
    1
    ;; bool _mc_electronics
    1
    ;; bool _mc_fruit_vegetable
    1
    ;; bool _mc_sport
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _model
       (write-byte _model s)
     ;; float32 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max_range
       (sys::poke _max_range (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _tracking
       (if _tracking (write-byte -1 s) (write-byte 0 s))
     ;; bool _sk_body_fitting
       (if _sk_body_fitting (write-byte -1 s) (write-byte 0 s))
     ;; bool _mc_people
       (if _mc_people (write-byte -1 s) (write-byte 0 s))
     ;; bool _mc_vehicles
       (if _mc_vehicles (write-byte -1 s) (write-byte 0 s))
     ;; bool _mc_bag
       (if _mc_bag (write-byte -1 s) (write-byte 0 s))
     ;; bool _mc_animal
       (if _mc_animal (write-byte -1 s) (write-byte 0 s))
     ;; bool _mc_electronics
       (if _mc_electronics (write-byte -1 s) (write-byte 0 s))
     ;; bool _mc_fruit_vegetable
       (if _mc_fruit_vegetable (write-byte -1 s) (write-byte 0 s))
     ;; bool _mc_sport
       (if _mc_sport (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _model
     (setq _model (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _model 127) (setq _model (- _model 256)))
   ;; float32 _confidence
     (setq _confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max_range
     (setq _max_range (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _tracking
     (setq _tracking (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _sk_body_fitting
     (setq _sk_body_fitting (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _mc_people
     (setq _mc_people (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _mc_vehicles
     (setq _mc_vehicles (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _mc_bag
     (setq _mc_bag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _mc_animal
     (setq _mc_animal (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _mc_electronics
     (setq _mc_electronics (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _mc_fruit_vegetable
     (setq _mc_fruit_vegetable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _mc_sport
     (setq _mc_sport (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass zed_interfaces::start_object_detectionResponse
  :super ros::object
  :slots (_done ))

(defmethod zed_interfaces::start_object_detectionResponse
  (:init
   (&key
    ((:done __done) nil)
    )
   (send-super :init)
   (setq _done __done)
   self)
  (:done
   (&optional (__done :null))
   (if (not (eq __done :null)) (setq _done __done)) _done)
  (:serialization-length
   ()
   (+
    ;; bool _done
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _done
       (if _done (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _done
     (setq _done (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass zed_interfaces::start_object_detection
  :super ros::object
  :slots ())

(setf (get zed_interfaces::start_object_detection :md5sum-) "9756600455daaeb06ade1a46c6073504")
(setf (get zed_interfaces::start_object_detection :datatype-) "zed_interfaces/start_object_detection")
(setf (get zed_interfaces::start_object_detection :request) zed_interfaces::start_object_detectionRequest)
(setf (get zed_interfaces::start_object_detection :response) zed_interfaces::start_object_detectionResponse)

(defmethod zed_interfaces::start_object_detectionRequest
  (:response () (instance zed_interfaces::start_object_detectionResponse :init)))

(setf (get zed_interfaces::start_object_detectionRequest :md5sum-) "9756600455daaeb06ade1a46c6073504")
(setf (get zed_interfaces::start_object_detectionRequest :datatype-) "zed_interfaces/start_object_detectionRequest")
(setf (get zed_interfaces::start_object_detectionRequest :definition-)
      "# Starts object detection, if not automatically enabled with the parameter `object_detection/od_enabled`

# OD Model
# '0': MULTI_CLASS_BOX - '1': MULTI_CLASS_BOX_ACCURATE - '2': HUMAN_BODY_FAST - '3': HUMAN_BODY_ACCURATE
int8 model

# Minimum Confidence level
float32 confidence

# MAx detection range
float32 max_range

# Object tracking
bool tracking

# Body Fitting
bool sk_body_fitting

# Detect people (valid for Multi-class model)
bool mc_people

# Detect vehicles
bool mc_vehicles

# Detect bags
bool mc_bag

# Detect animals
bool mc_animal

# Detect electronic devices
bool mc_electronics

# Detect fruits and vegetables
bool mc_fruit_vegetable

# Detect sport objects
bool mc_sport

---
bool done

")

(setf (get zed_interfaces::start_object_detectionResponse :md5sum-) "9756600455daaeb06ade1a46c6073504")
(setf (get zed_interfaces::start_object_detectionResponse :datatype-) "zed_interfaces/start_object_detectionResponse")
(setf (get zed_interfaces::start_object_detectionResponse :definition-)
      "# Starts object detection, if not automatically enabled with the parameter `object_detection/od_enabled`

# OD Model
# '0': MULTI_CLASS_BOX - '1': MULTI_CLASS_BOX_ACCURATE - '2': HUMAN_BODY_FAST - '3': HUMAN_BODY_ACCURATE
int8 model

# Minimum Confidence level
float32 confidence

# MAx detection range
float32 max_range

# Object tracking
bool tracking

# Body Fitting
bool sk_body_fitting

# Detect people (valid for Multi-class model)
bool mc_people

# Detect vehicles
bool mc_vehicles

# Detect bags
bool mc_bag

# Detect animals
bool mc_animal

# Detect electronic devices
bool mc_electronics

# Detect fruits and vegetables
bool mc_fruit_vegetable

# Detect sport objects
bool mc_sport

---
bool done

")



(provide :zed_interfaces/start_object_detection "9756600455daaeb06ade1a46c6073504")


