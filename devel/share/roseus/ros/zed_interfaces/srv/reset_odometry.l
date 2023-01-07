;; Auto-generated. Do not edit!


(when (boundp 'zed_interfaces::reset_odometry)
  (if (not (find-package "ZED_INTERFACES"))
    (make-package "ZED_INTERFACES"))
  (shadow 'reset_odometry (find-package "ZED_INTERFACES")))
(unless (find-package "ZED_INTERFACES::RESET_ODOMETRY")
  (make-package "ZED_INTERFACES::RESET_ODOMETRY"))
(unless (find-package "ZED_INTERFACES::RESET_ODOMETRYREQUEST")
  (make-package "ZED_INTERFACES::RESET_ODOMETRYREQUEST"))
(unless (find-package "ZED_INTERFACES::RESET_ODOMETRYRESPONSE")
  (make-package "ZED_INTERFACES::RESET_ODOMETRYRESPONSE"))

(in-package "ROS")





(defclass zed_interfaces::reset_odometryRequest
  :super ros::object
  :slots ())

(defmethod zed_interfaces::reset_odometryRequest
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

(defclass zed_interfaces::reset_odometryResponse
  :super ros::object
  :slots (_reset_done ))

(defmethod zed_interfaces::reset_odometryResponse
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

(defclass zed_interfaces::reset_odometry
  :super ros::object
  :slots ())

(setf (get zed_interfaces::reset_odometry :md5sum-) "e1e87fc9e9e6c154eca93b9fa292cc05")
(setf (get zed_interfaces::reset_odometry :datatype-) "zed_interfaces/reset_odometry")
(setf (get zed_interfaces::reset_odometry :request) zed_interfaces::reset_odometryRequest)
(setf (get zed_interfaces::reset_odometry :response) zed_interfaces::reset_odometryResponse)

(defmethod zed_interfaces::reset_odometryRequest
  (:response () (instance zed_interfaces::reset_odometryResponse :init)))

(setf (get zed_interfaces::reset_odometryRequest :md5sum-) "e1e87fc9e9e6c154eca93b9fa292cc05")
(setf (get zed_interfaces::reset_odometryRequest :datatype-) "zed_interfaces/reset_odometryRequest")
(setf (get zed_interfaces::reset_odometryRequest :definition-)
      "---
bool reset_done
")

(setf (get zed_interfaces::reset_odometryResponse :md5sum-) "e1e87fc9e9e6c154eca93b9fa292cc05")
(setf (get zed_interfaces::reset_odometryResponse :datatype-) "zed_interfaces/reset_odometryResponse")
(setf (get zed_interfaces::reset_odometryResponse :definition-)
      "---
bool reset_done
")



(provide :zed_interfaces/reset_odometry "e1e87fc9e9e6c154eca93b9fa292cc05")


