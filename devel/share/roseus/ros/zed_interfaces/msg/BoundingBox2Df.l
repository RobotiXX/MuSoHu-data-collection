;; Auto-generated. Do not edit!


(when (boundp 'zed_interfaces::BoundingBox2Df)
  (if (not (find-package "ZED_INTERFACES"))
    (make-package "ZED_INTERFACES"))
  (shadow 'BoundingBox2Df (find-package "ZED_INTERFACES")))
(unless (find-package "ZED_INTERFACES::BOUNDINGBOX2DF")
  (make-package "ZED_INTERFACES::BOUNDINGBOX2DF"))

(in-package "ROS")
;;//! \htmlinclude BoundingBox2Df.msg.html


(defclass zed_interfaces::BoundingBox2Df
  :super ros::object
  :slots (_corners ))

(defmethod zed_interfaces::BoundingBox2Df
  (:init
   (&key
    ((:corners __corners) (let (r) (dotimes (i 4) (push (instance zed_interfaces::Keypoint2Df :init) r)) r))
    )
   (send-super :init)
   (setq _corners __corners)
   self)
  (:corners
   (&rest __corners)
   (if (keywordp (car __corners))
       (send* _corners __corners)
     (progn
       (if __corners (setq _corners (car __corners)))
       _corners)))
  (:serialization-length
   ()
   (+
    ;; zed_interfaces/Keypoint2Df[4] _corners
    (apply #'+ (send-all _corners :serialization-length))
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; zed_interfaces/Keypoint2Df[4] _corners
     (dolist (elem _corners)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; zed_interfaces/Keypoint2Df[4] _corners
   (dotimes (i 4)
     (send (elt _corners i) :deserialize buf ptr-) (incf ptr- (send (elt _corners i) :serialization-length))
     )
   ;;
   self)
  )

(setf (get zed_interfaces::BoundingBox2Df :md5sum-) "8ce1e9ea2b267e0dce506c975b1391b0")
(setf (get zed_interfaces::BoundingBox2Df :datatype-) "zed_interfaces/BoundingBox2Df")
(setf (get zed_interfaces::BoundingBox2Df :definition-)
      "#      0 ------- 1
#      |         |
#      |         |
#      |         |
#      3 ------- 2
zed_interfaces/Keypoint2Df[4] corners

================================================================================
MSG: zed_interfaces/Keypoint2Df
float32[2] kp

")



(provide :zed_interfaces/BoundingBox2Df "8ce1e9ea2b267e0dce506c975b1391b0")


