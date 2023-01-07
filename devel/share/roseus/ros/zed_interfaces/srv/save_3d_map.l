;; Auto-generated. Do not edit!


(when (boundp 'zed_interfaces::save_3d_map)
  (if (not (find-package "ZED_INTERFACES"))
    (make-package "ZED_INTERFACES"))
  (shadow 'save_3d_map (find-package "ZED_INTERFACES")))
(unless (find-package "ZED_INTERFACES::SAVE_3D_MAP")
  (make-package "ZED_INTERFACES::SAVE_3D_MAP"))
(unless (find-package "ZED_INTERFACES::SAVE_3D_MAPREQUEST")
  (make-package "ZED_INTERFACES::SAVE_3D_MAPREQUEST"))
(unless (find-package "ZED_INTERFACES::SAVE_3D_MAPRESPONSE")
  (make-package "ZED_INTERFACES::SAVE_3D_MAPRESPONSE"))

(in-package "ROS")





(defclass zed_interfaces::save_3d_mapRequest
  :super ros::object
  :slots (_map_filename _file_format ))

(defmethod zed_interfaces::save_3d_mapRequest
  (:init
   (&key
    ((:map_filename __map_filename) "")
    ((:file_format __file_format) 0)
    )
   (send-super :init)
   (setq _map_filename (string __map_filename))
   (setq _file_format (round __file_format))
   self)
  (:map_filename
   (&optional __map_filename)
   (if __map_filename (setq _map_filename __map_filename)) _map_filename)
  (:file_format
   (&optional __file_format)
   (if __file_format (setq _file_format __file_format)) _file_format)
  (:serialization-length
   ()
   (+
    ;; string _map_filename
    4 (length _map_filename)
    ;; uint8 _file_format
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _map_filename
       (write-long (length _map_filename) s) (princ _map_filename s)
     ;; uint8 _file_format
       (write-byte _file_format s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _map_filename
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_filename (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _file_format
     (setq _file_format (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass zed_interfaces::save_3d_mapResponse
  :super ros::object
  :slots (_result _info ))

(defmethod zed_interfaces::save_3d_mapResponse
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

(defclass zed_interfaces::save_3d_map
  :super ros::object
  :slots ())

(setf (get zed_interfaces::save_3d_map :md5sum-) "6b30b06d24a8a3ccaaea817409144337")
(setf (get zed_interfaces::save_3d_map :datatype-) "zed_interfaces/save_3d_map")
(setf (get zed_interfaces::save_3d_map :request) zed_interfaces::save_3d_mapRequest)
(setf (get zed_interfaces::save_3d_map :response) zed_interfaces::save_3d_mapResponse)

(defmethod zed_interfaces::save_3d_mapRequest
  (:response () (instance zed_interfaces::save_3d_mapResponse :init)))

(setf (get zed_interfaces::save_3d_mapRequest :md5sum-) "6b30b06d24a8a3ccaaea817409144337")
(setf (get zed_interfaces::save_3d_mapRequest :datatype-) "zed_interfaces/save_3d_mapRequest")
(setf (get zed_interfaces::save_3d_mapRequest :definition-)
      "# Filename (with path and externsion) of the map file
string map_filename 

# File format [0: PLY, 1: PLY_BIN, 2: OBJ]
uint8 file_format
---
bool result
string info
")

(setf (get zed_interfaces::save_3d_mapResponse :md5sum-) "6b30b06d24a8a3ccaaea817409144337")
(setf (get zed_interfaces::save_3d_mapResponse :datatype-) "zed_interfaces/save_3d_mapResponse")
(setf (get zed_interfaces::save_3d_mapResponse :definition-)
      "# Filename (with path and externsion) of the map file
string map_filename 

# File format [0: PLY, 1: PLY_BIN, 2: OBJ]
uint8 file_format
---
bool result
string info
")



(provide :zed_interfaces/save_3d_map "6b30b06d24a8a3ccaaea817409144337")


