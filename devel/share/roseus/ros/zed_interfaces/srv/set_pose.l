;; Auto-generated. Do not edit!


(when (boundp 'zed_interfaces::set_pose)
  (if (not (find-package "ZED_INTERFACES"))
    (make-package "ZED_INTERFACES"))
  (shadow 'set_pose (find-package "ZED_INTERFACES")))
(unless (find-package "ZED_INTERFACES::SET_POSE")
  (make-package "ZED_INTERFACES::SET_POSE"))
(unless (find-package "ZED_INTERFACES::SET_POSEREQUEST")
  (make-package "ZED_INTERFACES::SET_POSEREQUEST"))
(unless (find-package "ZED_INTERFACES::SET_POSERESPONSE")
  (make-package "ZED_INTERFACES::SET_POSERESPONSE"))

(in-package "ROS")





(defclass zed_interfaces::set_poseRequest
  :super ros::object
  :slots (_x _y _z _R _P _Y ))

(defmethod zed_interfaces::set_poseRequest
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:R __R) 0.0)
    ((:P __P) 0.0)
    ((:Y __Y) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _R (float __R))
   (setq _P (float __P))
   (setq _Y (float __Y))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:R
   (&optional __R)
   (if __R (setq _R __R)) _R)
  (:P
   (&optional __P)
   (if __P (setq _P __P)) _P)
  (:Y
   (&optional __Y)
   (if __Y (setq _Y __Y)) _Y)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _z
    4
    ;; float32 _R
    4
    ;; float32 _P
    4
    ;; float32 _Y
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z
       (sys::poke _z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _R
       (sys::poke _R (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _P
       (sys::poke _P (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Y
       (sys::poke _Y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z
     (setq _z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _R
     (setq _R (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _P
     (setq _P (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Y
     (setq _Y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass zed_interfaces::set_poseResponse
  :super ros::object
  :slots (_done ))

(defmethod zed_interfaces::set_poseResponse
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

(defclass zed_interfaces::set_pose
  :super ros::object
  :slots ())

(setf (get zed_interfaces::set_pose :md5sum-) "b82a88bbcbaf998bb1f0cc2bc141c4bf")
(setf (get zed_interfaces::set_pose :datatype-) "zed_interfaces/set_pose")
(setf (get zed_interfaces::set_pose :request) zed_interfaces::set_poseRequest)
(setf (get zed_interfaces::set_pose :response) zed_interfaces::set_poseResponse)

(defmethod zed_interfaces::set_poseRequest
  (:response () (instance zed_interfaces::set_poseResponse :init)))

(setf (get zed_interfaces::set_poseRequest :md5sum-) "b82a88bbcbaf998bb1f0cc2bc141c4bf")
(setf (get zed_interfaces::set_poseRequest :datatype-) "zed_interfaces/set_poseRequest")
(setf (get zed_interfaces::set_poseRequest :definition-)
      "# Translation XYZ [meters]
float32 x
float32 y
float32 z
# Orientation RPY [radians]
float32 R
float32 P
float32 Y
---
bool done

")

(setf (get zed_interfaces::set_poseResponse :md5sum-) "b82a88bbcbaf998bb1f0cc2bc141c4bf")
(setf (get zed_interfaces::set_poseResponse :datatype-) "zed_interfaces/set_poseResponse")
(setf (get zed_interfaces::set_poseResponse :definition-)
      "# Translation XYZ [meters]
float32 x
float32 y
float32 z
# Orientation RPY [radians]
float32 R
float32 P
float32 Y
---
bool done

")



(provide :zed_interfaces/set_pose "b82a88bbcbaf998bb1f0cc2bc141c4bf")


