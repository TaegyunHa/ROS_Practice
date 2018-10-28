;; Auto-generated. Do not edit!


(when (boundp 'my_robot_msgs::ControlLED)
  (if (not (find-package "MY_ROBOT_MSGS"))
    (make-package "MY_ROBOT_MSGS"))
  (shadow 'ControlLED (find-package "MY_ROBOT_MSGS")))
(unless (find-package "MY_ROBOT_MSGS::CONTROLLED")
  (make-package "MY_ROBOT_MSGS::CONTROLLED"))
(unless (find-package "MY_ROBOT_MSGS::CONTROLLEDREQUEST")
  (make-package "MY_ROBOT_MSGS::CONTROLLEDREQUEST"))
(unless (find-package "MY_ROBOT_MSGS::CONTROLLEDRESPONSE")
  (make-package "MY_ROBOT_MSGS::CONTROLLEDRESPONSE"))

(in-package "ROS")





(defclass my_robot_msgs::ControlLEDRequest
  :super ros::object
  :slots (_LED_num _state ))

(defmethod my_robot_msgs::ControlLEDRequest
  (:init
   (&key
    ((:LED_num __LED_num) 0)
    ((:state __state) 0)
    )
   (send-super :init)
   (setq _LED_num (round __LED_num))
   (setq _state (round __state))
   self)
  (:LED_num
   (&optional __LED_num)
   (if __LED_num (setq _LED_num __LED_num)) _LED_num)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; int64 _LED_num
    8
    ;; int64 _state
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _LED_num
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _LED_num (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _LED_num) (= (length (_LED_num . bv)) 2)) ;; bignum
              (write-long (ash (elt (_LED_num . bv) 0) 0) s)
              (write-long (ash (elt (_LED_num . bv) 1) -1) s))
             ((and (class _LED_num) (= (length (_LED_num . bv)) 1)) ;; big1
              (write-long (elt (_LED_num . bv) 0) s)
              (write-long (if (>= _LED_num 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _LED_num s)(write-long (if (>= _LED_num 0) 0 #xffffffff) s)))
     ;; int64 _state
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _state (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _state) (= (length (_state . bv)) 2)) ;; bignum
              (write-long (ash (elt (_state . bv) 0) 0) s)
              (write-long (ash (elt (_state . bv) 1) -1) s))
             ((and (class _state) (= (length (_state . bv)) 1)) ;; big1
              (write-long (elt (_state . bv) 0) s)
              (write-long (if (>= _state 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _state s)(write-long (if (>= _state 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _LED_num
#+(or :alpha :irix6 :x86_64)
      (setf _LED_num (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _LED_num (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _state
#+(or :alpha :irix6 :x86_64)
      (setf _state (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _state (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass my_robot_msgs::ControlLEDResponse
  :super ros::object
  :slots (_success ))

(defmethod my_robot_msgs::ControlLEDResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass my_robot_msgs::ControlLED
  :super ros::object
  :slots ())

(setf (get my_robot_msgs::ControlLED :md5sum-) "fdb5fdfa0a71721bfde7e4967ca7bd27")
(setf (get my_robot_msgs::ControlLED :datatype-) "my_robot_msgs/ControlLED")
(setf (get my_robot_msgs::ControlLED :request) my_robot_msgs::ControlLEDRequest)
(setf (get my_robot_msgs::ControlLED :response) my_robot_msgs::ControlLEDResponse)

(defmethod my_robot_msgs::ControlLEDRequest
  (:response () (instance my_robot_msgs::ControlLEDResponse :init)))

(setf (get my_robot_msgs::ControlLEDRequest :md5sum-) "fdb5fdfa0a71721bfde7e4967ca7bd27")
(setf (get my_robot_msgs::ControlLEDRequest :datatype-) "my_robot_msgs/ControlLEDRequest")
(setf (get my_robot_msgs::ControlLEDRequest :definition-)
      "int64 LED_num
int64 state
---
bool success

")

(setf (get my_robot_msgs::ControlLEDResponse :md5sum-) "fdb5fdfa0a71721bfde7e4967ca7bd27")
(setf (get my_robot_msgs::ControlLEDResponse :datatype-) "my_robot_msgs/ControlLEDResponse")
(setf (get my_robot_msgs::ControlLEDResponse :definition-)
      "int64 LED_num
int64 state
---
bool success

")



(provide :my_robot_msgs/ControlLED "fdb5fdfa0a71721bfde7e4967ca7bd27")


