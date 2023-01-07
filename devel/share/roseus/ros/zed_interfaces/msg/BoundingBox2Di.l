;; Auto-generated. Do not edit!


(when (boundp 'zed_interfaces::BoundingBox2Di)
  (if (not (find-package "ZED_INTERFACES"))
    (make-package "ZED_INTERFACES"))
  (shadow 'BoundingBox2Di (find-package "ZED_INTERFACES")))
(unless (find-package "ZED_INTERFACES::BOUNDINGBOX2DI")
  (make-package "ZED_INTERFACES::BOUNDINGBOX2DI"))

(in-package "ROS")
;;//! \htmlinclude BoundingBox2Di.msg.html


(defclass zed_interfaces::BoundingBox2Di
  :super ros::object
  :slots (_corners ))

(defmethod zed_interfaces::BoundingBox2Di
  (:init
   (&key
    ((:corners __corners) (let (r) (dotimes (i 4) (push (instance zed_interfaces::Keypoint2Di :init) r)) r))
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
    ;; zed_interfaces/Keypoint2Di[4] _corners
    (apply #'+ (send-all _corners :serialization-length))
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; zed_interfaces/Keypoint2Di[4] _corners
     (dolist (elem _corners)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; zed_interfaces/Keypoint2Di[4] _corners
   (dotimes (i 4)
     (send (elt _corners i) :deserialize buf ptr-) (incf ptr- (send (elt _corners i) :serialization-length))
     )
   ;;
   self)
  )

(setf (get zed_interfaces::BoundingBox2Di :md5sum-) "48f8f53e85eafba49fb9648f6258d114")
(setf (get zed_interfaces::BoundingBox2Di :datatype-) "zed_interfaces/BoundingBox2Di")
(setf (get zed_interfaces::BoundingBox2Di :definition-)
      "#      0 ------- 1
#      |         |
#      |         |
#      |         |
#      3 ------- 2
zed_interfaces/Keypoint2Di[4] corners

================================================================================
MSG: zed_interfaces/Keypoint2Di
uint32[2] kp

")



(provide :zed_interfaces/BoundingBox2Di "48f8f53e85eafba49fb9648f6258d114")


