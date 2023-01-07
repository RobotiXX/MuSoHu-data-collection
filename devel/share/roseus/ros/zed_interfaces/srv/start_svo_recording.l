;; Auto-generated. Do not edit!


(when (boundp 'zed_interfaces::start_svo_recording)
  (if (not (find-package "ZED_INTERFACES"))
    (make-package "ZED_INTERFACES"))
  (shadow 'start_svo_recording (find-package "ZED_INTERFACES")))
(unless (find-package "ZED_INTERFACES::START_SVO_RECORDING")
  (make-package "ZED_INTERFACES::START_SVO_RECORDING"))
(unless (find-package "ZED_INTERFACES::START_SVO_RECORDINGREQUEST")
  (make-package "ZED_INTERFACES::START_SVO_RECORDINGREQUEST"))
(unless (find-package "ZED_INTERFACES::START_SVO_RECORDINGRESPONSE")
  (make-package "ZED_INTERFACES::START_SVO_RECORDINGRESPONSE"))

(in-package "ROS")





(defclass zed_interfaces::start_svo_recordingRequest
  :super ros::object
  :slots (_svo_filename ))

(defmethod zed_interfaces::start_svo_recordingRequest
  (:init
   (&key
    ((:svo_filename __svo_filename) "")
    )
   (send-super :init)
   (setq _svo_filename (string __svo_filename))
   self)
  (:svo_filename
   (&optional __svo_filename)
   (if __svo_filename (setq _svo_filename __svo_filename)) _svo_filename)
  (:serialization-length
   ()
   (+
    ;; string _svo_filename
    4 (length _svo_filename)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _svo_filename
       (write-long (length _svo_filename) s) (princ _svo_filename s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _svo_filename
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _svo_filename (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass zed_interfaces::start_svo_recordingResponse
  :super ros::object
  :slots (_result _info ))

(defmethod zed_interfaces::start_svo_recordingResponse
  (:init
   (&key
    ((:result __result) nil)
    ((:info __info) "")
    )
   (send-super :init)
   (setq _result __result)
   (setq _info (string __info))
   self)
  (:result
   (&optional (__result :null))
   (if (not (eq __result :null)) (setq _result __result)) _result)
  (:info
   (&optional __info)
   (if __info (setq _info __info)) _info)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ;; string _info
    4 (length _info)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;; string _info
       (write-long (length _info) s) (princ _info s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass zed_interfaces::start_svo_recording
  :super ros::object
  :slots ())

(setf (get zed_interfaces::start_svo_recording :md5sum-) "a0f71014040ca234c6276bc9c76368c6")
(setf (get zed_interfaces::start_svo_recording :datatype-) "zed_interfaces/start_svo_recording")
(setf (get zed_interfaces::start_svo_recording :request) zed_interfaces::start_svo_recordingRequest)
(setf (get zed_interfaces::start_svo_recording :response) zed_interfaces::start_svo_recordingResponse)

(defmethod zed_interfaces::start_svo_recordingRequest
  (:response () (instance zed_interfaces::start_svo_recordingResponse :init)))

(setf (get zed_interfaces::start_svo_recordingRequest :md5sum-) "a0f71014040ca234c6276bc9c76368c6")
(setf (get zed_interfaces::start_svo_recordingRequest :datatype-) "zed_interfaces/start_svo_recordingRequest")
(setf (get zed_interfaces::start_svo_recordingRequest :definition-)
      "# Full path is required no relative paths
string svo_filename 
---
bool result
string info

")

(setf (get zed_interfaces::start_svo_recordingResponse :md5sum-) "a0f71014040ca234c6276bc9c76368c6")
(setf (get zed_interfaces::start_svo_recordingResponse :datatype-) "zed_interfaces/start_svo_recordingResponse")
(setf (get zed_interfaces::start_svo_recordingResponse :definition-)
      "# Full path is required no relative paths
string svo_filename 
---
bool result
string info

")



(provide :zed_interfaces/start_svo_recording "a0f71014040ca234c6276bc9c76368c6")


