;; Auto-generated. Do not edit!


(when (boundp 'zed_interfaces::Keypoint2Df)
  (if (not (find-package "ZED_INTERFACES"))
    (make-package "ZED_INTERFACES"))
  (shadow 'Keypoint2Df (find-package "ZED_INTERFACES")))
(unless (find-package "ZED_INTERFACES::KEYPOINT2DF")
  (make-package "ZED_INTERFACES::KEYPOINT2DF"))

(in-package "ROS")
;;//! \htmlinclude Keypoint2Df.msg.html


(defclass zed_interfaces::Keypoint2Df
  :super ros::object
  :slots (_kp ))

(defmethod zed_interfaces::Keypoint2Df
  (:init
   (&key
    ((:kp __kp) (make-array 2 :initial-element 0.0 :element-type :float))
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
    ;; float32[2] _kp
    (* 4    2)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[2] _kp
     (dotimes (i 2)
       (sys::poke (elt _kp i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[2] _kp
   (dotimes (i (length _kp))
     (setf (elt _kp i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get zed_interfaces::Keypoint2Df :md5sum-) "cf5ebcd50ce370a9811fce73a9095e7b")
(setf (get zed_interfaces::Keypoint2Df :datatype-) "zed_interfaces/Keypoint2Df")
(setf (get zed_interfaces::Keypoint2Df :definition-)
      "float32[2] kp

")



(provide :zed_interfaces/Keypoint2Df "cf5ebcd50ce370a9811fce73a9095e7b")


