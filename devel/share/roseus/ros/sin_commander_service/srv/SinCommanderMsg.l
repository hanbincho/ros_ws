;; Auto-generated. Do not edit!


(when (boundp 'sin_commander_service::SinCommanderMsg)
  (if (not (find-package "SIN_COMMANDER_SERVICE"))
    (make-package "SIN_COMMANDER_SERVICE"))
  (shadow 'SinCommanderMsg (find-package "SIN_COMMANDER_SERVICE")))
(unless (find-package "SIN_COMMANDER_SERVICE::SINCOMMANDERMSG")
  (make-package "SIN_COMMANDER_SERVICE::SINCOMMANDERMSG"))
(unless (find-package "SIN_COMMANDER_SERVICE::SINCOMMANDERMSGREQUEST")
  (make-package "SIN_COMMANDER_SERVICE::SINCOMMANDERMSGREQUEST"))
(unless (find-package "SIN_COMMANDER_SERVICE::SINCOMMANDERMSGRESPONSE")
  (make-package "SIN_COMMANDER_SERVICE::SINCOMMANDERMSGRESPONSE"))

(in-package "ROS")





(defclass sin_commander_service::SinCommanderMsgRequest
  :super ros::object
  :slots (_amp _freq ))

(defmethod sin_commander_service::SinCommanderMsgRequest
  (:init
   (&key
    ((:amp __amp) 0.0)
    ((:freq __freq) 0.0)
    )
   (send-super :init)
   (setq _amp (float __amp))
   (setq _freq (float __freq))
   self)
  (:amp
   (&optional __amp)
   (if __amp (setq _amp __amp)) _amp)
  (:freq
   (&optional __freq)
   (if __freq (setq _freq __freq)) _freq)
  (:serialization-length
   ()
   (+
    ;; float32 _amp
    4
    ;; float32 _freq
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _amp
       (sys::poke _amp (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _freq
       (sys::poke _freq (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _amp
     (setq _amp (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _freq
     (setq _freq (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass sin_commander_service::SinCommanderMsgResponse
  :super ros::object
  :slots (_sin_velocity ))

(defmethod sin_commander_service::SinCommanderMsgResponse
  (:init
   (&key
    ((:sin_velocity __sin_velocity) 0.0)
    )
   (send-super :init)
   (setq _sin_velocity (float __sin_velocity))
   self)
  (:sin_velocity
   (&optional __sin_velocity)
   (if __sin_velocity (setq _sin_velocity __sin_velocity)) _sin_velocity)
  (:serialization-length
   ()
   (+
    ;; float32 _sin_velocity
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _sin_velocity
       (sys::poke _sin_velocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _sin_velocity
     (setq _sin_velocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass sin_commander_service::SinCommanderMsg
  :super ros::object
  :slots ())

(setf (get sin_commander_service::SinCommanderMsg :md5sum-) "1934939e811673ac6de96fd9859814cf")
(setf (get sin_commander_service::SinCommanderMsg :datatype-) "sin_commander_service/SinCommanderMsg")
(setf (get sin_commander_service::SinCommanderMsg :request) sin_commander_service::SinCommanderMsgRequest)
(setf (get sin_commander_service::SinCommanderMsg :response) sin_commander_service::SinCommanderMsgResponse)

(defmethod sin_commander_service::SinCommanderMsgRequest
  (:response () (instance sin_commander_service::SinCommanderMsgResponse :init)))

(setf (get sin_commander_service::SinCommanderMsgRequest :md5sum-) "1934939e811673ac6de96fd9859814cf")
(setf (get sin_commander_service::SinCommanderMsgRequest :datatype-) "sin_commander_service/SinCommanderMsgRequest")
(setf (get sin_commander_service::SinCommanderMsgRequest :definition-)
      "float32 amp
float32 freq
---
float32 sin_velocity

")

(setf (get sin_commander_service::SinCommanderMsgResponse :md5sum-) "1934939e811673ac6de96fd9859814cf")
(setf (get sin_commander_service::SinCommanderMsgResponse :datatype-) "sin_commander_service/SinCommanderMsgResponse")
(setf (get sin_commander_service::SinCommanderMsgResponse :definition-)
      "float32 amp
float32 freq
---
float32 sin_velocity

")



(provide :sin_commander_service/SinCommanderMsg "1934939e811673ac6de96fd9859814cf")


