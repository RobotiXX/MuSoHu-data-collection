;; Auto-generated. Do not edit!


(when (boundp 'zed_interfaces::start_3d_mapping)
  (if (not (find-package "ZED_INTERFACES"))
    (make-package "ZED_INTERFACES"))
  (shadow 'start_3d_mapping (find-package "ZED_INTERFACES")))
(unless (find-package "ZED_INTERFACES::START_3D_MAPPING")
  (make-package "ZED_INTERFACES::START_3D_MAPPING"))
(unless (find-package "ZED_INTERFACES::START_3D_MAPPINGREQUEST")
  (make-package "ZED_INTERFACES::START_3D_MAPPINGREQUEST"))
(unless (find-package "ZED_INTERFACES::START_3D_MAPPINGRESPONSE")
  (make-package "ZED_INTERFACES::START_3D_MAPPINGRESPONSE"))

(in-package "ROS")





(defclass zed_interfaces::start_3d_mappingRequest
  :super ros::object
  :slots (_resolution _max_mapping_range _fused_pointcloud_freq ))

(defmethod zed_interfaces::start_3d_mappingRequest
  (:init
   (&key
    ((:resolution __resolution) 0.0)
    ((:max_mapping_range __max_mapping_range) 0.0)
    ((:fused_pointcloud_freq __fused_pointcloud_freq) 0.0)
    )
   (send-super :init)
   (setq _resolution (float __resolution))
   (setq _max_mapping_range (float __max_mapping_range))
   (setq _fused_pointcloud_freq (float __fused_pointcloud_freq))
   self)
  (:resolution
   (&optional __resolution)
   (if __resolution (setq _resolution __resolution)) _resolution)
  (:max_mapping_range
   (&optional __max_mapping_range)
   (if __max_mapping_range (setq _max_mapping_range __max_mapping_range)) _max_mapping_range)
  (:fused_pointcloud_freq
   (&optional __fused_pointcloud_freq)
   (if __fused_pointcloud_freq (setq _fused_pointcloud_freq __fused_pointcloud_freq)) _fused_pointcloud_freq)
  (:serialization-length
   ()
   (+
    ;; float32 _resolution
    4
    ;; float32 _max_mapping_range
    4
    ;; float32 _fused_pointcloud_freq
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _resolution
       (sys::poke _resolution (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max_mapping_range
       (sys::poke _max_mapping_range (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _fused_pointcloud_freq
       (sys::poke _fused_pointcloud_freq (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _resolution
     (setq _resolution (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max_mapping_range
     (setq _max_mapping_range (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _fused_pointcloud_freq
     (setq _fused_pointcloud_freq (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass zed_interfaces::start_3d_mappingResponse
  :super ros::object
  :slots (_done ))

(defmethod zed_interfaces::start_3d_mappingResponse
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

(defclass zed_interfaces::start_3d_mapping
  :super ros::object
  :slots ())

(setf (get zed_interfaces::start_3d_mapping :md5sum-) "3196af5ec088c6cf035e36ce85c17da0")
(setf (get zed_interfaces::start_3d_mapping :datatype-) "zed_interfaces/start_3d_mapping")
(setf (get zed_interfaces::start_3d_mapping :request) zed_interfaces::start_3d_mappingRequest)
(setf (get zed_interfaces::start_3d_mapping :response) zed_interfaces::start_3d_mappingResponse)

(defmethod zed_interfaces::start_3d_mappingRequest
  (:response () (instance zed_interfaces::start_3d_mappingResponse :init)))

(setf (get zed_interfaces::start_3d_mappingRequest :md5sum-) "3196af5ec088c6cf035e36ce85c17da0")
(setf (get zed_interfaces::start_3d_mappingRequest :datatype-) "zed_interfaces/start_3d_mappingRequest")
(setf (get zed_interfaces::start_3d_mappingRequest :definition-)
      "# Starts 3D fused pointcloud generation, if not automatically enabled with the parameter `mapping/mapping_enabled`

# Resolution of the fused pointcloud in meters [0.01, 0.2]
float32 resolution

# Max mapping range in meters [0.2, 20.0]
float32 max_mapping_range

# Frequency of the publishing of the fused colored point cloud
float32 fused_pointcloud_freq

---
bool done

")

(setf (get zed_interfaces::start_3d_mappingResponse :md5sum-) "3196af5ec088c6cf035e36ce85c17da0")
(setf (get zed_interfaces::start_3d_mappingResponse :datatype-) "zed_interfaces/start_3d_mappingResponse")
(setf (get zed_interfaces::start_3d_mappingResponse :definition-)
      "# Starts 3D fused pointcloud generation, if not automatically enabled with the parameter `mapping/mapping_enabled`

# Resolution of the fused pointcloud in meters [0.01, 0.2]
float32 resolution

# Max mapping range in meters [0.2, 20.0]
float32 max_mapping_range

# Frequency of the publishing of the fused colored point cloud
float32 fused_pointcloud_freq

---
bool done

")



(provide :zed_interfaces/start_3d_mapping "3196af5ec088c6cf035e36ce85c17da0")


