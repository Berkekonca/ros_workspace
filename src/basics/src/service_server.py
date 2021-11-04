#!/usr/bin/env python

import rospy

from basics.srv import WordCount,WordCountResponse


def count_words(request):
    out1 = (len(request.words.split()))
    out2 = (len(request.words.replace(" ","")))
    return WordCountResponse(out1,out2)


rospy.init_node('service_server')

service = rospy.Service('word_count', WordCount, count_words)

rospy.spin()

