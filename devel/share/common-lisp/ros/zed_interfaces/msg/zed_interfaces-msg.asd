
(cl:in-package :asdf)

(defsystem "zed_interfaces-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :sensor_msgs-msg
               :shape_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "BoundingBox2Df" :depends-on ("_package_BoundingBox2Df"))
    (:file "_package_BoundingBox2Df" :depends-on ("_package"))
    (:file "BoundingBox2Di" :depends-on ("_package_BoundingBox2Di"))
    (:file "_package_BoundingBox2Di" :depends-on ("_package"))
    (:file "BoundingBox3D" :depends-on ("_package_BoundingBox3D"))
    (:file "_package_BoundingBox3D" :depends-on ("_package"))
    (:file "Keypoint2Df" :depends-on ("_package_Keypoint2Df"))
    (:file "_package_Keypoint2Df" :depends-on ("_package"))
    (:file "Keypoint2Di" :depends-on ("_package_Keypoint2Di"))
    (:file "_package_Keypoint2Di" :depends-on ("_package"))
    (:file "Keypoint3D" :depends-on ("_package_Keypoint3D"))
    (:file "_package_Keypoint3D" :depends-on ("_package"))
    (:file "Object" :depends-on ("_package_Object"))
    (:file "_package_Object" :depends-on ("_package"))
    (:file "ObjectsStamped" :depends-on ("_package_ObjectsStamped"))
    (:file "_package_ObjectsStamped" :depends-on ("_package"))
    (:file "PlaneStamped" :depends-on ("_package_PlaneStamped"))
    (:file "_package_PlaneStamped" :depends-on ("_package"))
    (:file "RGBDSensors" :depends-on ("_package_RGBDSensors"))
    (:file "_package_RGBDSensors" :depends-on ("_package"))
    (:file "Skeleton2D" :depends-on ("_package_Skeleton2D"))
    (:file "_package_Skeleton2D" :depends-on ("_package"))
    (:file "Skeleton3D" :depends-on ("_package_Skeleton3D"))
    (:file "_package_Skeleton3D" :depends-on ("_package"))
  ))