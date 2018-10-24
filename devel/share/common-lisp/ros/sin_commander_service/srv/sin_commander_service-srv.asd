
(cl:in-package :asdf)

(defsystem "sin_commander_service-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "SinCommanderMsg" :depends-on ("_package_SinCommanderMsg"))
    (:file "_package_SinCommanderMsg" :depends-on ("_package"))
  ))