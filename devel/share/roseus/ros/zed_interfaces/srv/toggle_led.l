;; Auto-generated. Do not edit!


(when (boundp 'zed_interfaces::toggle_led)
  (if (not (find-package "ZED_INTERFACES"))
    (make-package "ZED_INTERFACES"))
  (shadow 'toggle_led (find-package "ZED_INTERFACES")))
(unless (find-package "ZED_INTERFACES::TOGGLE_LED")
  (make-package "ZED_INTERFACES::TOGGLE_LED"))
(unless (find-package "ZED_INTERFACES::TOGGLE_LEDREQUEST")
  (make-package "ZED_INTERFACES::TOGGLE_LEDREQUEST"))
(unless (find-package "ZED_INTERFACES::TOGGLE_LEDRESPONSE")
  (make-package "ZED_INTERFACES::TOGGLE_LEDRESPONSE"))

(in-package "ROS")





(defclass zed_interfaces::toggle_ledRequest
  :super ros::object
  :slots ())

(defmethod zed_interfaces::toggle_ledRequest
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

(defclass zed_interfaces::toggle_ledResponse
  :super ros::object
  :slots (_new_led_status ))

(defmethod zed_interfaces::toggle_ledResponse
  (:init
   (&key
    ((:new_led_status __new_led_status) nil)
    )
   (send-super :init)
   (setq _new_led_status __new_led_status)
   self)
  (:new_led_status
   (&optional (__new_led_status :null))
   (if (not (eq __new_led_status :null)) (setq _new_led_status __new_led_status)) _new_led_status)
  (:serialization-length
   ()
   (+
    ;; bool _new_led_status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _new_led_status
       (if _new_led_status (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _new_led_status
     (setq _new_led_status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass zed_interfaces::toggle_led
  :super ros::object
  :slots ())

(setf (get zed_interfaces::toggle_led :md5sum-) "866beb482157f32341c9f0eac54a1e38")
(setf (get zed_interfaces::toggle_led :datatype-) "zed_interfaces/toggle_led")
(setf (get zed_interfaces::toggle_led :request) zed_interfaces::toggle_ledRequest)
(setf (get zed_interfaces::toggle_led :response) zed_interfaces::toggle_ledResponse)

(defmethod zed_interfaces::toggle_ledRequest
  (:response () (instance zed_interfaces::toggle_ledResponse :init)))

(setf (get zed_interfaces::toggle_ledRequest :md5sum-) "866beb482157f32341c9f0eac54a1e38")
(setf (get zed_interfaces::toggle_ledRequest :datatype-) "zed_interfaces/toggle_ledRequest")
(setf (get zed_interfaces::toggle_ledRequest :definition-)
      "---
bool new_led_status

")

(setf (get zed_interfaces::toggle_ledResponse :md5sum-) "866beb482157f32341c9f0eac54a1e38")
(setf (get zed_interfaces::toggle_ledResponse :datatype-) "zed_interfaces/toggle_ledResponse")
(setf (get zed_interfaces::toggle_ledResponse :definition-)
      "---
bool new_led_status

")



(provide :zed_interfaces/toggle_led "866beb482157f32341c9f0eac54a1e38")


