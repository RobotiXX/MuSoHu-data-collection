;; Auto-generated. Do not edit!


(when (boundp 'zed_interfaces::set_led_status)
  (if (not (find-package "ZED_INTERFACES"))
    (make-package "ZED_INTERFACES"))
  (shadow 'set_led_status (find-package "ZED_INTERFACES")))
(unless (find-package "ZED_INTERFACES::SET_LED_STATUS")
  (make-package "ZED_INTERFACES::SET_LED_STATUS"))
(unless (find-package "ZED_INTERFACES::SET_LED_STATUSREQUEST")
  (make-package "ZED_INTERFACES::SET_LED_STATUSREQUEST"))
(unless (find-package "ZED_INTERFACES::SET_LED_STATUSRESPONSE")
  (make-package "ZED_INTERFACES::SET_LED_STATUSRESPONSE"))

(in-package "ROS")





(defclass zed_interfaces::set_led_statusRequest
  :super ros::object
  :slots (_led_enabled ))

(defmethod zed_interfaces::set_led_statusRequest
  (:init
   (&key
    ((:led_enabled __led_enabled) nil)
    )
   (send-super :init)
   (setq _led_enabled __led_enabled)
   self)
  (:led_enabled
   (&optional (__led_enabled :null))
   (if (not (eq __led_enabled :null)) (setq _led_enabled __led_enabled)) _led_enabled)
  (:serialization-length
   ()
   (+
    ;; bool _led_enabled
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _led_enabled
       (if _led_enabled (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _led_enabled
     (setq _led_enabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass zed_interfaces::set_led_statusResponse
  :super ros::object
  :slots (_done ))

(defmethod zed_interfaces::set_led_statusResponse
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

(defclass zed_interfaces::set_led_status
  :super ros::object
  :slots ())

(setf (get zed_interfaces::set_led_status :md5sum-) "bd86bfb1e9db5dfcf2eea2f02bf12142")
(setf (get zed_interfaces::set_led_status :datatype-) "zed_interfaces/set_led_status")
(setf (get zed_interfaces::set_led_status :request) zed_interfaces::set_led_statusRequest)
(setf (get zed_interfaces::set_led_status :response) zed_interfaces::set_led_statusResponse)

(defmethod zed_interfaces::set_led_statusRequest
  (:response () (instance zed_interfaces::set_led_statusResponse :init)))

(setf (get zed_interfaces::set_led_statusRequest :md5sum-) "bd86bfb1e9db5dfcf2eea2f02bf12142")
(setf (get zed_interfaces::set_led_statusRequest :datatype-) "zed_interfaces/set_led_statusRequest")
(setf (get zed_interfaces::set_led_statusRequest :definition-)
      "bool led_enabled
---
bool done

")

(setf (get zed_interfaces::set_led_statusResponse :md5sum-) "bd86bfb1e9db5dfcf2eea2f02bf12142")
(setf (get zed_interfaces::set_led_statusResponse :datatype-) "zed_interfaces/set_led_statusResponse")
(setf (get zed_interfaces::set_led_statusResponse :definition-)
      "bool led_enabled
---
bool done

")



(provide :zed_interfaces/set_led_status "bd86bfb1e9db5dfcf2eea2f02bf12142")


