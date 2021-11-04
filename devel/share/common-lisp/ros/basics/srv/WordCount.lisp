; Auto-generated. Do not edit!


(cl:in-package basics-srv)


;//! \htmlinclude WordCount-request.msg.html

(cl:defclass <WordCount-request> (roslisp-msg-protocol:ros-message)
  ((words
    :reader words
    :initarg :words
    :type cl:string
    :initform "")
   (letters
    :reader letters
    :initarg :letters
    :type cl:string
    :initform ""))
)

(cl:defclass WordCount-request (<WordCount-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WordCount-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WordCount-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name basics-srv:<WordCount-request> is deprecated: use basics-srv:WordCount-request instead.")))

(cl:ensure-generic-function 'words-val :lambda-list '(m))
(cl:defmethod words-val ((m <WordCount-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader basics-srv:words-val is deprecated.  Use basics-srv:words instead.")
  (words m))

(cl:ensure-generic-function 'letters-val :lambda-list '(m))
(cl:defmethod letters-val ((m <WordCount-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader basics-srv:letters-val is deprecated.  Use basics-srv:letters instead.")
  (letters m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WordCount-request>) ostream)
  "Serializes a message object of type '<WordCount-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'words))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'words))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'letters))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'letters))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WordCount-request>) istream)
  "Deserializes a message object of type '<WordCount-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'words) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'words) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'letters) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'letters) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WordCount-request>)))
  "Returns string type for a service object of type '<WordCount-request>"
  "basics/WordCountRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WordCount-request)))
  "Returns string type for a service object of type 'WordCount-request"
  "basics/WordCountRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WordCount-request>)))
  "Returns md5sum for a message object of type '<WordCount-request>"
  "41e2d0858b9ff4e641d23473ea11310c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WordCount-request)))
  "Returns md5sum for a message object of type 'WordCount-request"
  "41e2d0858b9ff4e641d23473ea11310c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WordCount-request>)))
  "Returns full string definition for message of type '<WordCount-request>"
  (cl:format cl:nil "string words~%string letters~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WordCount-request)))
  "Returns full string definition for message of type 'WordCount-request"
  (cl:format cl:nil "string words~%string letters~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WordCount-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'words))
     4 (cl:length (cl:slot-value msg 'letters))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WordCount-request>))
  "Converts a ROS message object to a list"
  (cl:list 'WordCount-request
    (cl:cons ':words (words msg))
    (cl:cons ':letters (letters msg))
))
;//! \htmlinclude WordCount-response.msg.html

(cl:defclass <WordCount-response> (roslisp-msg-protocol:ros-message)
  ((count
    :reader count
    :initarg :count
    :type cl:integer
    :initform 0)
   (letter_count
    :reader letter_count
    :initarg :letter_count
    :type cl:integer
    :initform 0))
)

(cl:defclass WordCount-response (<WordCount-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WordCount-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WordCount-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name basics-srv:<WordCount-response> is deprecated: use basics-srv:WordCount-response instead.")))

(cl:ensure-generic-function 'count-val :lambda-list '(m))
(cl:defmethod count-val ((m <WordCount-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader basics-srv:count-val is deprecated.  Use basics-srv:count instead.")
  (count m))

(cl:ensure-generic-function 'letter_count-val :lambda-list '(m))
(cl:defmethod letter_count-val ((m <WordCount-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader basics-srv:letter_count-val is deprecated.  Use basics-srv:letter_count instead.")
  (letter_count m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WordCount-response>) ostream)
  "Serializes a message object of type '<WordCount-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'letter_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'letter_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'letter_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'letter_count)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WordCount-response>) istream)
  "Deserializes a message object of type '<WordCount-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'letter_count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'letter_count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'letter_count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'letter_count)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WordCount-response>)))
  "Returns string type for a service object of type '<WordCount-response>"
  "basics/WordCountResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WordCount-response)))
  "Returns string type for a service object of type 'WordCount-response"
  "basics/WordCountResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WordCount-response>)))
  "Returns md5sum for a message object of type '<WordCount-response>"
  "41e2d0858b9ff4e641d23473ea11310c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WordCount-response)))
  "Returns md5sum for a message object of type 'WordCount-response"
  "41e2d0858b9ff4e641d23473ea11310c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WordCount-response>)))
  "Returns full string definition for message of type '<WordCount-response>"
  (cl:format cl:nil "uint32 count~%uint32 letter_count~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WordCount-response)))
  "Returns full string definition for message of type 'WordCount-response"
  (cl:format cl:nil "uint32 count~%uint32 letter_count~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WordCount-response>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WordCount-response>))
  "Converts a ROS message object to a list"
  (cl:list 'WordCount-response
    (cl:cons ':count (count msg))
    (cl:cons ':letter_count (letter_count msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'WordCount)))
  'WordCount-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'WordCount)))
  'WordCount-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WordCount)))
  "Returns string type for a service object of type '<WordCount>"
  "basics/WordCount")