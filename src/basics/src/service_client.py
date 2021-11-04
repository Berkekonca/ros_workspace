#!/usr/bin/env python

import rospy

from basics.srv import WordCount

import sys


rospy.init_node('service_client')

rospy.wait_for_service('word_count')

word_counter = rospy.ServiceProxy('word_count', WordCount)

words = ' '.join(sys.argv[1:])

letters = ' '.join(sys.argv[1:])

word_count = word_counter(words,letters)

print words, '|  word count: ->', word_count.count
print letters,'|letter count: ->', word_count.letter_count

