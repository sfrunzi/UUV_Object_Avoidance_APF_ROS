cmake_minimum_required(VERSION 3.0.2)
project(apf_algorithm)

find_package(catkin REQUIRED COMPONENTS
  rospy
  sensor_msgs
  std_msgs
)

catkin_package()

include_directories(
  ${catkin_INCLUDE_DIRS}
)

install(PROGRAMS
  src/apf.py
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)