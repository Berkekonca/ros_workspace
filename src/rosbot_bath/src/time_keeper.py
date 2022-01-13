#!/usr/bin/env python

import rospy
from rosgraph_msgs.msg import Clock

def callback(msg):
    clock = msg.clock

rospy.init_node('time_keeper_node')
sub = rospy.Subscriber('/clock', Clock, callback)

r = rospy.Rate(2)
while not rospy.is_shutdown():
  print("Runtime " + str(rospy.get_time()) + " seconds")
  r.sleep()
