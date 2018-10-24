
(cl:in-package :asdf)

(defsystem "sin_commander_action_server-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "sinAction" :depends-on ("_package_sinAction"))
    (:file "_package_sinAction" :depends-on ("_package"))
    (:file "sinActionFeedback" :depends-on ("_package_sinActionFeedback"))
    (:file "_package_sinActionFeedback" :depends-on ("_package"))
    (:file "sinActionGoal" :depends-on ("_package_sinActionGoal"))
    (:file "_package_sinActionGoal" :depends-on ("_package"))
    (:file "sinActionResult" :depends-on ("_package_sinActionResult"))
    (:file "_package_sinActionResult" :depends-on ("_package"))
    (:file "sinFeedback" :depends-on ("_package_sinFeedback"))
    (:file "_package_sinFeedback" :depends-on ("_package"))
    (:file "sinGoal" :depends-on ("_package_sinGoal"))
    (:file "_package_sinGoal" :depends-on ("_package"))
    (:file "sinResult" :depends-on ("_package_sinResult"))
    (:file "_package_sinResult" :depends-on ("_package"))
  ))