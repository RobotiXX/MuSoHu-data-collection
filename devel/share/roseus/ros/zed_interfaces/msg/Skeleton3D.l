;; Auto-generated. Do not edit!


(when (boundp 'zed_interfaces::Skeleton3D)
  (if (not (find-package "ZED_INTERFACES"))
    (make-package "ZED_INTERFACES"))
  (shadow 'Skeleton3D (find-package "ZED_INTERFACES")))
(unless (find-package "ZED_INTERFACES::SKELETON3D")
  (make-package "ZED_INTERFACES::SKELETON3D"))

(in-package "ROS")
;;//! \htmlinclude Skeleton3D.msg.html


(defclass zed_interfaces::Skeleton3D
  :super ros::object
  :slots (_keypoints ))

(defmethod zed_interfaces::Skeleton3D
  (:init
   (&key
    ((:keypoints __keypoints) (let (r) (dotimes (i 18) (push (instance zed_interfaces::Keypoint3D :init) r)) r))
    )
   (send-super :init)
   (setq _keypoints __keypoints)
   self)
  (:keypoints
   (&rest __keypoints)
   (if (keywordp (car __keypoints))
       (send* _keypoints __keypoints)
     (progn
       (if __keypoints (setq _keypoints (car __keypoints)))
       _keypoints)))
  (:serialization-length
   ()
   (+
    ;; zed_interfaces/Keypoint3D[18] _keypoints
    (apply #'+ (send-all _keypoints :serialization-length))
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; zed_interfaces/Keypoint3D[18] _keypoints
     (dolist (elem _keypoints)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; zed_interfaces/Keypoint3D[18] _keypoints
   (dotimes (i 18)
     (send (elt _keypoints i) :deserialize buf ptr-) (incf ptr- (send (elt _keypoints i) :serialization-length))
     )
   ;;
   self)
  )

(setf (get zed_interfaces::Skeleton3D :md5sum-) "b704d948cb88b776b9f51ee392e13c62")
(setf (get zed_interfaces::Skeleton3D :datatype-) "zed_interfaces/Skeleton3D")
(setf (get zed_interfaces::Skeleton3D :definition-)
      "# Skeleton joints indices
#        16-14   15-17
#             \\ /
#              0
#              |
#       2------1------5
#       |    |   |    |
#	    |    |   |    |
#       3    |   |    6
#       |    |   |    |
#       |    |   |    |
#       4    8   11   7
#            |   |
#            |   |
#            |   |
#            9   12
#            |   |
#            |   |
#            |   |
#           10   13
zed_interfaces/Keypoint3D[18] keypoints

================================================================================
MSG: zed_interfaces/Keypoint3D
float32[3] kp

")



(provide :zed_interfaces/Skeleton3D "b704d948cb88b776b9f51ee392e13c62")


