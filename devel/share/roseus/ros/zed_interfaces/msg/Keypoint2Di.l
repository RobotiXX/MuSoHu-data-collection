;; Auto-generated. Do not edit!


(when (boundp 'zed_interfaces::Keypoint2Di)
  (if (not (find-package "ZED_INTERFACES"))
    (make-package "ZED_INTERFACES"))
  (shadow 'Keypoint2Di (find-package "ZED_INTERFACES")))
(unless (find-package "ZED_INTERFACES::KEYPOINT2DI")
  (make-package "ZED_INTERFACES::KEYPOINT2DI"))

(in-package "ROS")
;;//! \htmlinclude Keypoint2Di.msg.html


(defclass zed_interfaces::Keypoint2Di
  :super ros::object
  :slots (_kp ))

(defmethod zed_interfaces::Keypoint2Di
  (:init
   (&key
    ((:kp __kp) (make-array 2 :initial-element 0 :element-type :integer))
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
    ;; uint32[2] _kp
    (* 4    2)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32[2] _kp
     (dotimes (i 2)
       (write-long (elt _kp i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32[2] _kp
   (dotimes (i (length _kp))
     (setf (elt _kp i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get zed_interfaces::Keypoint2Di :md5sum-) "5d23739e59e90009d64f8e07a5e96e2b")
(setf (get zed_interfaces::Keypoint2Di :datatype-) "zed_interfaces/Keypoint2Di")
(setf (get zed_interfaces::Keypoint2Di :definition-)
      "uint32[2] kp

")



(provide :zed_interfaces/Keypoint2Di "5d23739e59e90009d64f8e07a5e96e2b")


