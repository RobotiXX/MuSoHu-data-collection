;; Auto-generated. Do not edit!


(when (boundp 'zed_interfaces::stop_svo_recording)
  (if (not (find-package "ZED_INTERFACES"))
    (make-package "ZED_INTERFACES"))
  (shadow 'stop_svo_recording (find-package "ZED_INTERFACES")))
(unless (find-package "ZED_INTERFACES::STOP_SVO_RECORDING")
  (make-package "ZED_INTERFACES::STOP_SVO_RECORDING"))
(unless (find-package "ZED_INTERFACES::STOP_SVO_RECORDINGREQUEST")
  (make-package "ZED_INTERFACES::STOP_SVO_RECORDINGREQUEST"))
(unless (find-package "ZED_INTERFACES::STOP_SVO_RECORDINGRESPONSE")
  (make-package "ZED_INTERFACES::STOP_SVO_RECORDINGRESPONSE"))

(in-package "ROS")





(defclass zed_interfaces::stop_svo_recordingRequest
  :super ros::object
  :slots ())

(defmethod zed_interfaces::stop_svo_recordingRequest
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

(defclass zed_interfaces::stop_svo_recordingResponse
  :super ros::object
  :slots (_done _info ))

(defmethod zed_interfaces::stop_svo_recordingResponse
  (:init
   (&key
    ((:done __done) nil)
    ((:info __info) "")
    )
   (send-super :init)
   (setq _done __done)
   (setq _info (string __info))
   self)
  (:done
   (&optional (__done :null))
   (if (not (eq __done :null)) (setq _done __done)) _done)
  (:info
   (&optional __info)
   (if __info (setq _info __info)) _info)
  (:serialization-length
   ()
   (+
    ;; bool _done
    1
    ;; string _info
    4 (length _info)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _done
       (if _done (write-byte -1 s) (write-byte 0 s))
     ;; string _info
       (write-long (length _info) s) (princ _info s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _done
     (setq _done (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass zed_interfaces::stop_svo_recording
  :super ros::object
  :slots ())

(setf (get zed_interfaces::stop_svo_recording :md5sum-) "784b6c45ec0bd93cee43c7cd15145736")
(setf (get zed_interfaces::stop_svo_recording :datatype-) "zed_interfaces/stop_svo_recording")
(setf (get zed_interfaces::stop_svo_recording :request) zed_interfaces::stop_svo_recordingRequest)
(setf (get zed_interfaces::stop_svo_recording :response) zed_interfaces::stop_svo_recordingResponse)

(defmethod zed_interfaces::stop_svo_recordingRequest
  (:response () (instance zed_interfaces::stop_svo_recordingResponse :init)))

(setf (get zed_interfaces::stop_svo_recordingRequest :md5sum-) "784b6c45ec0bd93cee43c7cd15145736")
(setf (get zed_interfaces::stop_svo_recordingRequest :datatype-) "zed_interfaces/stop_svo_recordingRequest")
(setf (get zed_interfaces::stop_svo_recordingRequest :definition-)
      "---
bool done
string info

")

(setf (get zed_interfaces::stop_svo_recordingResponse :md5sum-) "784b6c45ec0bd93cee43c7cd15145736")
(setf (get zed_interfaces::stop_svo_recordingResponse :datatype-) "zed_interfaces/stop_svo_recordingResponse")
(setf (get zed_interfaces::stop_svo_recordingResponse :definition-)
      "---
bool done
string info

")



(provide :zed_interfaces/stop_svo_recording "784b6c45ec0bd93cee43c7cd15145736")


