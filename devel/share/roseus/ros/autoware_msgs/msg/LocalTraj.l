;; Auto-generated. Do not edit!


(when (boundp 'autoware_msgs::LocalTraj)
  (if (not (find-package "AUTOWARE_MSGS"))
    (make-package "AUTOWARE_MSGS"))
  (shadow 'LocalTraj (find-package "AUTOWARE_MSGS")))
(unless (find-package "AUTOWARE_MSGS::LOCALTRAJ")
  (make-package "AUTOWARE_MSGS::LOCALTRAJ"))

(in-package "ROS")
;;//! \htmlinclude LocalTraj.msg.html


(defclass autoware_msgs::LocalTraj
  :super ros::object
  :slots (_x _y _psi _curvature _ref_vel ))

(defmethod autoware_msgs::LocalTraj
  (:init
   (&key
    ((:x __x) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:y __y) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:psi __psi) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:curvature __curvature) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:ref_vel __ref_vel) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _x __x)
   (setq _y __y)
   (setq _psi __psi)
   (setq _curvature __curvature)
   (setq _ref_vel __ref_vel)
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:psi
   (&optional __psi)
   (if __psi (setq _psi __psi)) _psi)
  (:curvature
   (&optional __curvature)
   (if __curvature (setq _curvature __curvature)) _curvature)
  (:ref_vel
   (&optional __ref_vel)
   (if __ref_vel (setq _ref_vel __ref_vel)) _ref_vel)
  (:serialization-length
   ()
   (+
    ;; float64[] _x
    (* 8    (length _x)) 4
    ;; float64[] _y
    (* 8    (length _y)) 4
    ;; float64[] _psi
    (* 8    (length _psi)) 4
    ;; float64[] _curvature
    (* 8    (length _curvature)) 4
    ;; float64[] _ref_vel
    (* 8    (length _ref_vel)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _x
     (write-long (length _x) s)
     (dotimes (i (length _x))
       (sys::poke (elt _x i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _y
     (write-long (length _y) s)
     (dotimes (i (length _y))
       (sys::poke (elt _y i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _psi
     (write-long (length _psi) s)
     (dotimes (i (length _psi))
       (sys::poke (elt _psi i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _curvature
     (write-long (length _curvature) s)
     (dotimes (i (length _curvature))
       (sys::poke (elt _curvature i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _ref_vel
     (write-long (length _ref_vel) s)
     (dotimes (i (length _ref_vel))
       (sys::poke (elt _ref_vel i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _x
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _x (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _x i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _y
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _y (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _y i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _psi
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _psi (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _psi i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _curvature
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _curvature (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _curvature i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _ref_vel
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ref_vel (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _ref_vel i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get autoware_msgs::LocalTraj :md5sum-) "5ace80ff02ea0c77ad6a0d54fec1e4a6")
(setf (get autoware_msgs::LocalTraj :datatype-) "autoware_msgs/LocalTraj")
(setf (get autoware_msgs::LocalTraj :definition-)
      "float64[] x
float64[] y
float64[] psi
float64[] curvature
float64[] ref_vel

")



(provide :autoware_msgs/LocalTraj "5ace80ff02ea0c77ad6a0d54fec1e4a6")


