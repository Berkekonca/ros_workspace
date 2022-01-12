#!/usr/bin/env python

import rospy
from geometry_msgs.msg import Twist
from sensor_msgs.msg import LaserScan
from sensor_msgs.msg import Imu
from sensor_msgs.msg import Range

# Required functions
def avg(arr):
  sum = 0;
  for i in range(0, len(arr)):    
   sum = sum + arr[i];
  return sum/len(arr)

# Initializing global variables
front_left = None
front_right = None
back_left = None
back_right = None
range_fr = None
range_fl = None
range_rr = None
range_rl = None
z_pose = None

# Node Creating
rospy.init_node('controller_node')

# callbacks
def scan_callback(msg):
  global front_left, front_right, back_left, back_right
  front_left = min(msg.ranges[0:66])
  front_right = min(msg.ranges[653:719])
  back_left = min(msg.ranges[293:359])
  back_right = min(msg.ranges[361:427])
  rospy.loginfo("front left: " + str(front_left))
  rospy.loginfo("front right: " + str(front_right))
#  rospy.loginfo(msg.ranges[])

def range_fr_callback(msg):
  global range_fr
  range_fr = msg.range
#  rospy.loginfo("range_fr: %s",str(range_fr))

def range_fl_callback(msg):
  global range_fl
  range_fl = msg.range
#  rospy.loginfo("range_fl: %s",str(range_fl))

def range_rr_callback(msg):
  global range_rr
  range_rr = msg.range
#  rospy.loginfo("range_rr: %s",str(range_rr))

def range_rl_callback(msg):
  global range_rl
  range_rl = msg.range
#  rospy.loginfo("range_rl: %s",str(range_rl))

def imu_callback(msg):
  global z_pose
  z_pose = msg.orientation.z
#  rospy.loginfo("z_pose: %s",str(z_pose))

# Object Detecting
def is_fl_empty():
  if front_left < 0.3 or range_fl < 0.3:
    return False
  else:
    return True

def is_fr_empty():
  if front_right < 0.3 or range_fr < 0.3:
    return False
  else:
    return True

def is_rl_empty():
  if front_left < 0.3 or range_rl < 0.3:
    return False
  else:
    return True

def is_rr_empty():
  if front_left < 0.3 or range_rr < 0.3:
    return False
  else:
    return True

def is_correct_orientation():
  if abs(z_pose) > 0.055:
    return False
  else:
    return True

# Actions
def turn_left(vel_msg):
  vel_msg.linear.x = 0
  vel_msg.angular.z = 0.5

def turn_right(vel_msg):
  vel_msg.linear.x = 0
  vel_msg.angular.z = -0.5

def go_straigt(vel_msg):
  vel_msg.linear.x = 0.25
  vel_msg.angular.z = 0

def go_back(vel_msg):
  vel_msg.linear.x = -0.25
  vel_msg.angular.z = 0


# Object avoidance
def navigate(vel_msg,initial_pose):
  if is_fl_empty() and is_fr_empty():
    go_straigt(vel_msg)
  elif not is_fl_empty():
    turn_right(vel_msg)
  elif not is_fr_empty():
    turn_left(vel_msg)
#  elif not is_correct_orientation():
#    turn_left(vel_msg)


  return vel_msg

# subscribing
scan_sub = rospy.Subscriber('/scan', LaserScan, scan_callback)

range_fr_sub = rospy.Subscriber('/range/fr', Range, range_fr_callback)
range_fl_sub = rospy.Subscriber('/range/fl', Range, range_fl_callback)
range_rr_sub = rospy.Subscriber('/range/rr', Range, range_rr_callback)
range_rl_sub = rospy.Subscriber('/range/rl', Range, range_rl_callback)

imu_sub = rospy.Subscriber('/imu', Imu, imu_callback)

# cmd_vel publisher
vel_pub = rospy.Publisher('cmd_vel', Twist, queue_size = 1)
vel_msg = Twist()

vel_msg.linear.x = 0
vel_msg.linear.y = 0
vel_msg.linear.z = 0
vel_msg.angular.x = 0
vel_msg.angular.y = 0
vel_msg.angular.z = 0.5

# Rate
rate = rospy.Rate(10)
rate2 = rospy.Rate(0.5)

# Storing initial pose
vel_pub.publish(vel_msg)
rate2.sleep()
initial_pose = z_pose

while not rospy.is_shutdown():
	vel_pub.publish(navigate(vel_msg,initial_pose))
#        vel_pub.publish(vel_msg)
# 	print(z_pose)
	rate.sleep()

