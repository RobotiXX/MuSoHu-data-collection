;; Auto-generated. Do not edit!


(when (boundp 'zed_interfaces::stop_3d_mapping)
  (if (not (find-package "ZED_INTERFACES"))
    (make-package "ZED_INTERFACES"))
  (shadow 'stop_3d_mapping (find-package "ZED_INTERFACES")))
(unless (find-package "ZED_INTERFACES::STOP_3D_MAPPING")
  (make-package "ZED_INTERFACES::STOP_3D_MAPPING"))
(unless (find-package "ZED_INTERFACES::STOP_3D_MAPPINGREQUEST")
  (make-package "ZED_INTERFACES::STOP_3D_MAPPINGREQUEST"))
(unless (find-package "ZED_INTERFACES::STOP_3D_MAPPINGRESPONSE")
  (make-package "ZED_INTERFACES::STOP_3D_MAPPINGRESPONSE"))

(in-package "ROS")





(defclass zed_interfaces::stop_3d_mappingRequest
  :super ros::object
  :slots ())

(defmethod zed_interfaces::stop_3d_mappingRequest
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

(defclass zed_interfaces::stop_3d_mappingResponse
  :super ros::object
  :slots (_done ))

(defmethod zed_interfaces::stop_3d_mappingResponse
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

(defclass zed_interfaces::stop_3d_mapping
  :super ros::object
  :slots ())

(setf (get zed_interfaces::stop_3d_mapping :md5sum-) "89bb254424e4cffedbf494e7b0ddbfea")
(setf (get zed_interfaces::stop_3d_mapping :datatype-) "zed_interfaces/stop_3d_mapping")
(setf (get zed_interfaces::stop_3d_mapping :request) zed_interfaces::stop_3d_mappingRequest)
(setf (get zed_interfaces::stop_3d_mapping :response) zed_interfaces::stop_3d_mappingResponse)

(defmethod zed_interfaces::stop_3d_mappingRequest
  (:response () (instance zed_interfaces::stop_3d_mappingResponse :init)))

(setf (get zed_interfaces::stop_3d_mappingRequest :md5sum-) "89bb254424e4cffedbf494e7b0ddbfea")
(setf (get zed_interfaces::stop_3d_mappingRequest :datatype-) "zed_interfaces/stop_3d_mappingRequest")
(setf (get zed_interfaces::stop_3d_mappingRequest :definition-)
      "# Stops 3D fused pointcloud generation, if  automatically enabled with the parameter `mapping/mapping_enabled` or with
# the `start_object_detection` service

---
bool done

")

(setf (get zed_interfaces::stop_3d_mappingResponse :md5sum-) "89bb254424e4cffedbf494e7b0ddbfea")
(setf (get zed_interfaces::stop_3d_mappingResponse :datatype-) "zed_interfaces/stop_3d_mappingResponse")
(setf (get zed_interfaces::stop_3d_mappingResponse :definition-)
      "# Stops 3D fused pointcloud generation, if  automatically enabled with the parameter `mapping/mapping_enabled` or with
# the `start_object_detection` service

---
bool done

")



(provide :zed_interfaces/stop_3d_mapping "89bb254424e4cffedbf494e7b0ddbfea")


