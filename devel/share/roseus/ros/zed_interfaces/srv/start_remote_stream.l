;; Auto-generated. Do not edit!


(when (boundp 'zed_interfaces::start_remote_stream)
  (if (not (find-package "ZED_INTERFACES"))
    (make-package "ZED_INTERFACES"))
  (shadow 'start_remote_stream (find-package "ZED_INTERFACES")))
(unless (find-package "ZED_INTERFACES::START_REMOTE_STREAM")
  (make-package "ZED_INTERFACES::START_REMOTE_STREAM"))
(unless (find-package "ZED_INTERFACES::START_REMOTE_STREAMREQUEST")
  (make-package "ZED_INTERFACES::START_REMOTE_STREAMREQUEST"))
(unless (find-package "ZED_INTERFACES::START_REMOTE_STREAMRESPONSE")
  (make-package "ZED_INTERFACES::START_REMOTE_STREAMRESPONSE"))

(in-package "ROS")





(intern "*CODEC*" (find-package "ZED_INTERFACES::START_REMOTE_STREAMREQUEST"))
(shadow '*CODEC* (find-package "ZED_INTERFACES::START_REMOTE_STREAMREQUEST"))
(defconstant zed_interfaces::start_remote_streamRequest::*CODEC* 0)
(intern "*PORT*" (find-package "ZED_INTERFACES::START_REMOTE_STREAMREQUEST"))
(shadow '*PORT* (find-package "ZED_INTERFACES::START_REMOTE_STREAMREQUEST"))
(defconstant zed_interfaces::start_remote_streamRequest::*PORT* 30000)
(intern "*BITRATE*" (find-package "ZED_INTERFACES::START_REMOTE_STREAMREQUEST"))
(shadow '*BITRATE* (find-package "ZED_INTERFACES::START_REMOTE_STREAMREQUEST"))
(defconstant zed_interfaces::start_remote_streamRequest::*BITRATE* 2000)
(intern "*GOP_SIZE*" (find-package "ZED_INTERFACES::START_REMOTE_STREAMREQUEST"))
(shadow '*GOP_SIZE* (find-package "ZED_INTERFACES::START_REMOTE_STREAMREQUEST"))
(defconstant zed_interfaces::start_remote_streamRequest::*GOP_SIZE* -1)
(intern "*ADAPTATIVE_BITRATE*" (find-package "ZED_INTERFACES::START_REMOTE_STREAMREQUEST"))
(shadow '*ADAPTATIVE_BITRATE* (find-package "ZED_INTERFACES::START_REMOTE_STREAMREQUEST"))
(defconstant zed_interfaces::start_remote_streamRequest::*ADAPTATIVE_BITRATE* nil)

(defun zed_interfaces::start_remote_streamRequest-to-symbol (const)
  (cond
        ((= const 0) 'zed_interfaces::start_remote_streamRequest::*codec*)
        ((= const 30000) 'zed_interfaces::start_remote_streamRequest::*port*)
        ((= const 2000) 'zed_interfaces::start_remote_streamRequest::*bitrate*)
        ((= const -1) 'zed_interfaces::start_remote_streamRequest::*gop_size*)
        (t nil)))

(defclass zed_interfaces::start_remote_streamRequest
  :super ros::object
  :slots ())

(defmethod zed_interfaces::start_remote_streamRequest
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

(defclass zed_interfaces::start_remote_streamResponse
  :super ros::object
  :slots (_result _info ))

(defmethod zed_interfaces::start_remote_streamResponse
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

(defclass zed_interfaces::start_remote_stream
  :super ros::object
  :slots ())

(setf (get zed_interfaces::start_remote_stream :md5sum-) "c9f6f4c6411b7a0c79a7a7357650993c")
(setf (get zed_interfaces::start_remote_stream :datatype-) "zed_interfaces/start_remote_stream")
(setf (get zed_interfaces::start_remote_stream :request) zed_interfaces::start_remote_streamRequest)
(setf (get zed_interfaces::start_remote_stream :response) zed_interfaces::start_remote_streamResponse)

(defmethod zed_interfaces::start_remote_streamRequest
  (:response () (instance zed_interfaces::start_remote_streamResponse :init)))

(setf (get zed_interfaces::start_remote_streamRequest :md5sum-) "c9f6f4c6411b7a0c79a7a7357650993c")
(setf (get zed_interfaces::start_remote_streamRequest :datatype-) "zed_interfaces/start_remote_streamRequest")
(setf (get zed_interfaces::start_remote_streamRequest :definition-)
      "# Defines the codec used for streaming (`0`: AVCHD [H264], `1`: HEVC [H265])
# Note: If HEVC (H265) is used, make sure the recieving host is compatible with HEVC decoding (basically a pascal NVIDIA card). If not, prefer to use AVCHD (H264) since every compatible NVIDIA card supports AVCHD decoding
uint8 codec=0

# Defines the PORT the data will be streamed on. 
# Note: port must be an even number. Any odd number will be rejected. 
uint16 port=30000

# Defines the streaming BITRATE in Kbits/s
uint32 bitrate=2000

# Defines the GOP SIZE in frame unit.
# Note: if value is set to -1, the gop size will match 2 seconds, depending on camera fps.
# Note: The gop size determines the maximum distance between IDR/I-frames. Very high GOP size will result in slightly more efficient compression, especially on static scene. But it can result in more latency if IDR/I-frame packet are lost during streaming.
# Note: Default value is -1. Maximum allowed value is 256 (frames).
int32 gop_size=-1

# Enable/Disable adaptive bitrate
# Note: Bitrate will be adjusted regarding the number of packet loss during streaming.
# Note_ if activated, bitrate can vary between [bitrate/4, bitrate]
# Warning: Currently, the adaptive bitrate only works when \"sending\" device is a NVIDIA jetson (X1,X2,Xavier,Nano)
bool adaptative_bitrate=False
---
bool result
string info

")

(setf (get zed_interfaces::start_remote_streamResponse :md5sum-) "c9f6f4c6411b7a0c79a7a7357650993c")
(setf (get zed_interfaces::start_remote_streamResponse :datatype-) "zed_interfaces/start_remote_streamResponse")
(setf (get zed_interfaces::start_remote_streamResponse :definition-)
      "# Defines the codec used for streaming (`0`: AVCHD [H264], `1`: HEVC [H265])
# Note: If HEVC (H265) is used, make sure the recieving host is compatible with HEVC decoding (basically a pascal NVIDIA card). If not, prefer to use AVCHD (H264) since every compatible NVIDIA card supports AVCHD decoding
uint8 codec=0

# Defines the PORT the data will be streamed on. 
# Note: port must be an even number. Any odd number will be rejected. 
uint16 port=30000

# Defines the streaming BITRATE in Kbits/s
uint32 bitrate=2000

# Defines the GOP SIZE in frame unit.
# Note: if value is set to -1, the gop size will match 2 seconds, depending on camera fps.
# Note: The gop size determines the maximum distance between IDR/I-frames. Very high GOP size will result in slightly more efficient compression, especially on static scene. But it can result in more latency if IDR/I-frame packet are lost during streaming.
# Note: Default value is -1. Maximum allowed value is 256 (frames).
int32 gop_size=-1

# Enable/Disable adaptive bitrate
# Note: Bitrate will be adjusted regarding the number of packet loss during streaming.
# Note_ if activated, bitrate can vary between [bitrate/4, bitrate]
# Warning: Currently, the adaptive bitrate only works when \"sending\" device is a NVIDIA jetson (X1,X2,Xavier,Nano)
bool adaptative_bitrate=False
---
bool result
string info

")



(provide :zed_interfaces/start_remote_stream "c9f6f4c6411b7a0c79a7a7357650993c")


