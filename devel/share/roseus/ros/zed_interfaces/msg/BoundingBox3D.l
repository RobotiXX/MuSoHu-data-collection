;; Auto-generated. Do not edit!


(when (boundp 'zed_interfaces::BoundingBox3D)
  (if (not (find-package "ZED_INTERFACES"))
    (make-package "ZED_INTERFACES"))
  (shadow 'BoundingBox3D (find-package "ZED_INTERFACES")))
(unless (find-package "ZED_INTERFACES::BOUNDINGBOX3D")
  (make-package "ZED_INTERFACES::BOUNDINGBOX3D"))

(in-package "ROS")
;;//! \htmlinclude BoundingBox3D.msg.html


(defclass zed_interfaces::BoundingBox3D
  :super ros::object
  :slots (_corners ))

(defmethod zed_interfaces::BoundingBox3D
  (:init
   (&key
    ((:corners __corners) (let (r) (dotimes (i 8) (push (instance zed_interfaces::Keypoint3D :init) r)) r))
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
    ;; zed_interfaces/Keypoint3D[8] _corners
    (apply #'+ (send-all _corners :serialization-length))
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; zed_interfaces/Keypoint3D[8] _corners
     (dolist (elem _corners)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; zed_interfaces/Keypoint3D[8] _corners
   (dotimes (i 8)
     (send (elt _corners i) :deserialize buf ptr-) (incf ptr- (send (elt _corners i) :serialization-length))
     )
   ;;
   self)
  )

(setf (get zed_interfaces::BoundingBox3D :md5sum-) "3750b81144ba1b26f88ce23eeb4efd34")
(setf (get zed_interfaces::BoundingBox3D :datatype-) "zed_interfaces/BoundingBox3D")
(setf (get zed_interfaces::BoundingBox3D :definition-)
      "#      1 ------- 2
#     /.        /|
#    0 ------- 3 |
#    | .       | |
#    | 5.......| 6
#    |.        |/
#    4 ------- 7
zed_interfaces/Keypoint3D[8] corners

================================================================================
MSG: zed_interfaces/Keypoint3D
float32[3] kp

")



(provide :zed_interfaces/BoundingBox3D "3750b81144ba1b26f88ce23eeb4efd34")


