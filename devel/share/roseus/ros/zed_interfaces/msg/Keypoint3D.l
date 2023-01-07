;; Auto-generated. Do not edit!


(when (boundp 'zed_interfaces::Keypoint3D)
  (if (not (find-package "ZED_INTERFACES"))
    (make-package "ZED_INTERFACES"))
  (shadow 'Keypoint3D (find-package "ZED_INTERFACES")))
(unless (find-package "ZED_INTERFACES::KEYPOINT3D")
  (make-package "ZED_INTERFACES::KEYPOINT3D"))

(in-package "ROS")
;;//! \htmlinclude Keypoint3D.msg.html


(defclass zed_interfaces::Keypoint3D
  :super ros::object
  :slots (_kp ))

(defmethod zed_interfaces::Keypoint3D
  (:init
   (&key
    ((:kp __kp) (make-array 3 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _kp __kp)
   self)
  (:kp
   (&optional __kp)
   (if __kp (setq _kp __kp)) _kp)
  (:serialization-length
   ()
   (+
    ;; float32[3] _kp
    (* 4    3)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[3] _kp
     (dotimes (i 3)
       (sys::poke (elt _kp i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[3] _kp
   (dotimes (i (length _kp))
     (setf (elt _kp i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get zed_interfaces::Keypoint3D :md5sum-) "f8f017135a763e4b81273453c9d8ef62")
(setf (get zed_interfaces::Keypoint3D :datatype-) "zed_interfaces/Keypoint3D")
(setf (get zed_interfaces::Keypoint3D :definition-)
      "float32[3] kp

")



(provide :zed_interfaces/Keypoint3D "f8f017135a763e4b81273453c9d8ef62")


