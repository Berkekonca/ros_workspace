execute_process(COMMAND "/home/saykay/ros_workspace/build/rosbot_bath/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/saykay/ros_workspace/build/rosbot_bath/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
