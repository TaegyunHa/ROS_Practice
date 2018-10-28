; Auto-generated. Do not edit!


(cl:in-package my_robot_msgs-srv)


;//! \htmlinclude ControlLED-request.msg.html

(cl:defclass <ControlLED-request> (roslisp-msg-protocol:ros-message)
  ((LED_num
    :reader LED_num
    :initarg :LED_num
    :type cl:integer
    :initform 0)
   (state
    :reader state
    :initarg :state
    :type cl:integer
    :initform 0))
)

(cl:defclass ControlLED-request (<ControlLED-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ControlLED-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ControlLED-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_robot_msgs-srv:<ControlLED-request> is deprecated: use my_robot_msgs-srv:ControlLED-request instead.")))

(cl:ensure-generic-function 'LED_num-val :lambda-list '(m))
(cl:defmethod LED_num-val ((m <ControlLED-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_robot_msgs-srv:LED_num-val is deprecated.  Use my_robot_msgs-srv:LED_num instead.")
  (LED_num m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <ControlLED-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_robot_msgs-srv:state-val is deprecated.  Use my_robot_msgs-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ControlLED-request>) ostream)
  "Serializes a message object of type '<ControlLED-request>"
  (cl:let* ((signed (cl:slot-value msg 'LED_num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ControlLED-request>) istream)
  "Deserializes a message object of type '<ControlLED-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'LED_num) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ControlLED-request>)))
  "Returns string type for a service object of type '<ControlLED-request>"
  "my_robot_msgs/ControlLEDRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ControlLED-request)))
  "Returns string type for a service object of type 'ControlLED-request"
  "my_robot_msgs/ControlLEDRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ControlLED-request>)))
  "Returns md5sum for a message object of type '<ControlLED-request>"
  "fdb5fdfa0a71721bfde7e4967ca7bd27")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ControlLED-request)))
  "Returns md5sum for a message object of type 'ControlLED-request"
  "fdb5fdfa0a71721bfde7e4967ca7bd27")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ControlLED-request>)))
  "Returns full string definition for message of type '<ControlLED-request>"
  (cl:format cl:nil "int64 LED_num~%int64 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ControlLED-request)))
  "Returns full string definition for message of type 'ControlLED-request"
  (cl:format cl:nil "int64 LED_num~%int64 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ControlLED-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ControlLED-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ControlLED-request
    (cl:cons ':LED_num (LED_num msg))
    (cl:cons ':state (state msg))
))
;//! \htmlinclude ControlLED-response.msg.html

(cl:defclass <ControlLED-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ControlLED-response (<ControlLED-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ControlLED-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ControlLED-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_robot_msgs-srv:<ControlLED-response> is deprecated: use my_robot_msgs-srv:ControlLED-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ControlLED-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_robot_msgs-srv:success-val is deprecated.  Use my_robot_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ControlLED-response>) ostream)
  "Serializes a message object of type '<ControlLED-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ControlLED-response>) istream)
  "Deserializes a message object of type '<ControlLED-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ControlLED-response>)))
  "Returns string type for a service object of type '<ControlLED-response>"
  "my_robot_msgs/ControlLEDResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ControlLED-response)))
  "Returns string type for a service object of type 'ControlLED-response"
  "my_robot_msgs/ControlLEDResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ControlLED-response>)))
  "Returns md5sum for a message object of type '<ControlLED-response>"
  "fdb5fdfa0a71721bfde7e4967ca7bd27")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ControlLED-response)))
  "Returns md5sum for a message object of type 'ControlLED-response"
  "fdb5fdfa0a71721bfde7e4967ca7bd27")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ControlLED-response>)))
  "Returns full string definition for message of type '<ControlLED-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ControlLED-response)))
  "Returns full string definition for message of type 'ControlLED-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ControlLED-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ControlLED-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ControlLED-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ControlLED)))
  'ControlLED-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ControlLED)))
  'ControlLED-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ControlLED)))
  "Returns string type for a service object of type '<ControlLED>"
  "my_robot_msgs/ControlLED")