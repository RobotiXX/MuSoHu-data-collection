;; Auto-generated. Do not edit!


(when (boundp 'zed_interfaces::stop_object_detection)
  (if (not (find-package "ZED_INTERFACES"))
    (make-package "ZED_INTERFACES"))
  (shadow 'stop_object_detection (find-package "ZED_INTERFACES")))
(unless (find-package "ZED_INTERFACES::STOP_OBJECT_DETECTION")
  (make-package "ZED_INTERFACES::STOP_OBJECT_DETECTION"))
(unless (find-package "ZED_INTERFACES::STOP_OBJECT_DETECTIONREQUEST")
  (make-package "ZED_INTERFACES::STOP_OBJECT_DETECTIONREQUEST"))
(unless (find-package "ZED_INTERFACES::STOP_OBJECT_DETECTIONRESPONSE")
  (make-package "ZED_INTERFACES::STOP_OBJECT_DETECTIONRESPONSE"))

(in-package "ROS")





(defclass zed_interfaces::stop_object_detectionRequest
  :super ros::object
  :slots ())

(defmethod zed_interfaces::stop_object_detectionRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass zed_interfaces::stop_object_detectionResponse
  :super ros::object
  :slots (_done ))

(defmethod zed_interfaces::stop_object_detectionResponse
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

(defclass zed_interfaces::stop_object_detection
  :super ros::object
  :slots ())

(setf (get zed_interfaces::stop_object_detection :md5sum-) "89bb254424e4cffedbf494e7b0ddbfea")
(setf (get zed_interfaces::stop_object_detection :datatype-) "zed_interfaces/stop_object_detection")
(setf (get zed_interfaces::stop_object_detection :request) zed_interfaces::stop_object_detectionRequest)
(setf (get zed_interfaces::stop_object_detection :response) zed_interfaces::stop_object_detectionResponse)

(defmethod zed_interfaces::stop_object_detectionRequest
  (:response () (instance zed_interfaces::stop_object_detectionResponse :init)))

(setf (get zed_interfaces::stop_object_detectionRequest :md5sum-) "89bb254424e4cffedbf494e7b0ddbfea")
(setf (get zed_interfaces::stop_object_detectionRequest :datatype-) "zed_interfaces/stop_object_detectionRequest")
(setf (get zed_interfaces::stop_object_detectionRequest :definition-)
      "# Stops object detection, if  automatically enabled with the parameter `object_detection/od_enabled` or with
# the `start_mapping` service

---
bool done

")

(setf (get zed_interfaces::stop_object_detectionResponse :md5sum-) "89bb254424e4cffedbf494e7b0ddbfea")
(setf (get zed_interfaces::stop_object_detectionResponse :datatype-) "zed_interfaces/stop_object_detectionResponse")
(setf (get zed_interfaces::stop_object_detectionResponse :definition-)
      "# Stops object detection, if  automatically enabled with the parameter `object_detection/od_enabled` or with
# the `start_mapping` service

---
bool done

")



(provide :zed_interfaces/stop_object_detection "89bb254424e4cffedbf494e7b0ddbfea")


