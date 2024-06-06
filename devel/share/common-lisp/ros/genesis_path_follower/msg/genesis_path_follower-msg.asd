
(cl:in-package :asdf)

(defsystem "genesis_path_follower-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "mpc_path" :depends-on ("_package_mpc_path"))
    (:file "_package_mpc_path" :depends-on ("_package"))
    (:file "state_est" :depends-on ("_package_state_est"))
    (:file "_package_state_est" :depends-on ("_package"))
  ))