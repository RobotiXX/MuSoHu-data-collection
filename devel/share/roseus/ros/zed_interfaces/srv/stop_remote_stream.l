;; Auto-generated. Do not edit!


(when (boundp 'zed_interfaces::stop_remote_stream)
  (if (not (find-package "ZED_INTERFACES"))
    (make-package "ZED_INTERFACES"))
  (shadow 'stop_remote_stream (find-package "ZED_INTERFACES")))
(unless (find-package "ZED_INTERFACES::STOP_REMOTE_STREAM")
  (make-package "ZED_INTERFACES::STOP_REMOTE_STREAM"))
(unless (find-package "ZED_INTERFACES::STOP_REMOTE_STREAMREQUEST")
  (make-package "ZED_INTERFACES::STOP_REMOTE_STREAMREQUEST"))
(unless (find-package "ZED_INTERFACES::STOP_REMOTE_STREAMRESPONSE")
  (make-package "ZED_INTERFACES::STOP_REMOTE_STREAMRESPONSE"))

(in-package "ROS")





(defclass zed_interfaces::stop_remote_streamRequest
  :super ros::object
  :slots ())

(defmethod zed_interfaces::stop_remote_streamRequest
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

(defclass zed_interfaces::stop_remote_streamResponse
  :super ros::object
  :slots (_done ))

(defmethod zed_interfaces::stop_remote_streamResponse
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

(defclass zed_interfaces::stop_remote_stream
  :super ros::object
  :slots ())

(setf (get zed_interfaces::stop_remote_stream :md5sum-) "89bb254424e4cffedbf494e7b0ddbfea")
(setf (get zed_interfaces::stop_remote_stream :datatype-) "zed_interfaces/stop_remote_stream")
(setf (get zed_interfaces::stop_remote_stream :request) zed_interfaces::stop_remote_streamRequest)
(setf (get zed_interfaces::stop_remote_stream :response) zed_interfaces::stop_remote_streamResponse)

(defmethod zed_interfaces::stop_remote_streamRequest
  (:response () (instance zed_interfaces::stop_remote_streamResponse :init)))

(setf (get zed_interfaces::stop_remote_streamRequest :md5sum-) "89bb254424e4cffedbf494e7b0ddbfea")
(setf (get zed_interfaces::stop_remote_streamRequest :datatype-) "zed_interfaces/stop_remote_streamRequest")
(setf (get zed_interfaces::stop_remote_streamRequest :definition-)
      "---
bool done

")

(setf (get zed_interfaces::stop_remote_streamResponse :md5sum-) "89bb254424e4cffedbf494e7b0ddbfea")
(setf (get zed_interfaces::stop_remote_streamResponse :datatype-) "zed_interfaces/stop_remote_streamResponse")
(setf (get zed_interfaces::stop_remote_streamResponse :definition-)
      "---
bool done

")



(provide :zed_interfaces/stop_remote_stream "89bb254424e4cffedbf494e7b0ddbfea")


