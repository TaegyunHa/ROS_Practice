
(cl:in-package :asdf)

(defsystem "my_robot_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ComputeDiskArea" :depends-on ("_package_ComputeDiskArea"))
    (:file "_package_ComputeDiskArea" :depends-on ("_package"))
    (:file "ControlLED" :depends-on ("_package_ControlLED"))
    (:file "_package_ControlLED" :depends-on ("_package"))
  ))