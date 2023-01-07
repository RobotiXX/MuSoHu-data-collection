;; Auto-generated. Do not edit!


(when (boundp 'zed_interfaces::save_area_memory)
  (if (not (find-package "ZED_INTERFACES"))
    (make-package "ZED_INTERFACES"))
  (shadow 'save_area_memory (find-package "ZED_INTERFACES")))
(unless (find-package "ZED_INTERFACES::SAVE_AREA_MEMORY")
  (make-package "ZED_INTERFACES::SAVE_AREA_MEMORY"))
(unless (find-package "ZED_INTERFACES::SAVE_AREA_MEMORYREQUEST")
  (make-package "ZED_INTERFACES::SAVE_AREA_MEMORYREQUEST"))
(unless (find-package "ZED_INTERFACES::SAVE_AREA_MEMORYRESPONSE")
  (make-package "ZED_INTERFACES::SAVE_AREA_MEMORYRESPONSE"))

(in-package "ROS")





(defclass zed_interfaces::save_area_memoryRequest
  :super ros::object
  :slots (_area_memory_filename ))

(defmethod zed_interfaces::save_area_memoryRequest
  (:init
   (&key
    ((:area_memory_filename __area_memory_filename) "")
    )
   (send-super :init)
   (setq _area_memory_filename (string __area_memory_filename))
   self)
  (:area_memory_filename
   (&optional __area_memory_filename)
   (if __area_memory_filename (setq _area_memory_filename __area_memory_filename)) _area_memory_filename)
  (:serialization-length
   ()
   (+
    ;; string _area_memory_filename
    4 (length _area_memory_filename)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _area_memory_filename
       (write-long (length _area_memory_filename) s) (princ _area_memory_filename s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _area_memory_filename
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _area_memory_filename (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass zed_interfaces::save_area_memoryResponse
  :super ros::object
  :slots (_result _info ))

(defmethod zed_interfaces::save_area_memoryResponse
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

(defclass zed_interfaces::save_area_memory
  :super ros::object
  :slots ())

(setf (get zed_interfaces::save_area_memory :md5sum-) "c8b71483aabdfc117f6a0d5ed8a98ab9")
(setf (get zed_interfaces::save_area_memory :datatype-) "zed_interfaces/save_area_memory")
(setf (get zed_interfaces::save_area_memory :request) zed_interfaces::save_area_memoryRequest)
(setf (get zed_interfaces::save_area_memory :response) zed_interfaces::save_area_memoryResponse)

(defmethod zed_interfaces::save_area_memoryRequest
  (:response () (instance zed_interfaces::save_area_memoryResponse :init)))

(setf (get zed_interfaces::save_area_memoryRequest :md5sum-) "c8b71483aabdfc117f6a0d5ed8a98ab9")
(setf (get zed_interfaces::save_area_memoryRequest :datatype-) "zed_interfaces/save_area_memoryRequest")
(setf (get zed_interfaces::save_area_memoryRequest :definition-)
      "# Filename (with path and externsion) of the area memory file. Existing files will be updated
string area_memory_filename 
---
bool result
string info
")

(setf (get zed_interfaces::save_area_memoryResponse :md5sum-) "c8b71483aabdfc117f6a0d5ed8a98ab9")
(setf (get zed_interfaces::save_area_memoryResponse :datatype-) "zed_interfaces/save_area_memoryResponse")
(setf (get zed_interfaces::save_area_memoryResponse :definition-)
      "# Filename (with path and externsion) of the area memory file. Existing files will be updated
string area_memory_filename 
---
bool result
string info
")



(provide :zed_interfaces/save_area_memory "c8b71483aabdfc117f6a0d5ed8a98ab9")


