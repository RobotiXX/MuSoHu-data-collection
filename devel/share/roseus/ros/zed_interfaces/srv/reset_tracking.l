;; Auto-generated. Do not edit!


(when (boundp 'zed_interfaces::reset_tracking)
  (if (not (find-package "ZED_INTERFACES"))
    (make-package "ZED_INTERFACES"))
  (shadow 'reset_tracking (find-package "ZED_INTERFACES")))
(unless (find-package "ZED_INTERFACES::RESET_TRACKING")
  (make-package "ZED_INTERFACES::RESET_TRACKING"))
(unless (find-package "ZED_INTERFACES::RESET_TRACKINGREQUEST")
  (make-package "ZED_INTERFACES::RESET_TRACKINGREQUEST"))
(unless (find-package "ZED_INTERFACES::RESET_TRACKINGRESPONSE")
  (make-package "ZED_INTERFACES::RESET_TRACKINGRESPONSE"))

(in-package "ROS")





(defclass zed_interfaces::reset_trackingRequest
  :super ros::object
  :slots ())

(defmethod zed_interfaces::reset_trackingRequest
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

(defclass zed_interfaces::reset_trackingResponse
  :super ros::object
  :slots (_reset_done ))

(defmethod zed_interfaces::reset_trackingResponse
  (:init
   (&key
    ((:reset_done __reset_done) nil)
    )
   (send-super :init)
   (setq _reset_done __reset_done)
   self)
  (:reset_done
   (&optional (__reset_done :null))
   (if (not (eq __reset_done :null)) (setq _reset_done __reset_done)) _reset_done)
  (:serialization-length
   ()
   (+
    ;; bool _reset_done
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _reset_done
       (if _reset_done (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _reset_done
     (setq _reset_done (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass zed_interfaces::reset_tracking
  :super ros::object
  :slots ())

(setf (get zed_interfaces::reset_tracking :md5sum-) "e1e87fc9e9e6c154eca93b9fa292cc05")
(setf (get zed_interfaces::reset_tracking :datatype-) "zed_interfaces/reset_tracking")
(setf (get zed_interfaces::reset_tracking :request) zed_interfaces::reset_trackingRequest)
(setf (get zed_interfaces::reset_tracking :response) zed_interfaces::reset_trackingResponse)

(defmethod zed_interfaces::reset_trackingRequest
  (:response () (instance zed_interfaces::reset_trackingResponse :init)))

(setf (get zed_interfaces::reset_trackingRequest :md5sum-) "e1e87fc9e9e6c154eca93b9fa292cc05")
(setf (get zed_interfaces::reset_trackingRequest :datatype-) "zed_interfaces/reset_trackingRequest")
(setf (get zed_interfaces::reset_trackingRequest :definition-)
      "---
bool reset_done
")

(setf (get zed_interfaces::reset_trackingResponse :md5sum-) "e1e87fc9e9e6c154eca93b9fa292cc05")
(setf (get zed_interfaces::reset_trackingResponse :datatype-) "zed_interfaces/reset_trackingResponse")
(setf (get zed_interfaces::reset_trackingResponse :definition-)
      "---
bool reset_done
")



(provide :zed_interfaces/reset_tracking "e1e87fc9e9e6c154eca93b9fa292cc05")


