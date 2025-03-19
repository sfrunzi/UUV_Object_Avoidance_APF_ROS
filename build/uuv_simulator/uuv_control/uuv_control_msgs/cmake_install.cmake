# Install script for directory: /home/saf359/catkin_ws/src/uuv_simulator/uuv_control/uuv_control_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/saf359/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/uuv_control_msgs/msg" TYPE FILE FILES
    "/home/saf359/catkin_ws/src/uuv_simulator/uuv_control/uuv_control_msgs/msg/Trajectory.msg"
    "/home/saf359/catkin_ws/src/uuv_simulator/uuv_control/uuv_control_msgs/msg/TrajectoryPoint.msg"
    "/home/saf359/catkin_ws/src/uuv_simulator/uuv_control/uuv_control_msgs/msg/Waypoint.msg"
    "/home/saf359/catkin_ws/src/uuv_simulator/uuv_control/uuv_control_msgs/msg/WaypointSet.msg"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/uuv_control_msgs/srv" TYPE FILE FILES
    "/home/saf359/catkin_ws/src/uuv_simulator/uuv_control/uuv_control_msgs/srv/AddWaypoint.srv"
    "/home/saf359/catkin_ws/src/uuv_simulator/uuv_control/uuv_control_msgs/srv/ClearWaypoints.srv"
    "/home/saf359/catkin_ws/src/uuv_simulator/uuv_control/uuv_control_msgs/srv/InitCircularTrajectory.srv"
    "/home/saf359/catkin_ws/src/uuv_simulator/uuv_control/uuv_control_msgs/srv/InitHelicalTrajectory.srv"
    "/home/saf359/catkin_ws/src/uuv_simulator/uuv_control/uuv_control_msgs/srv/InitWaypointsFromFile.srv"
    "/home/saf359/catkin_ws/src/uuv_simulator/uuv_control/uuv_control_msgs/srv/GetWaypoints.srv"
    "/home/saf359/catkin_ws/src/uuv_simulator/uuv_control/uuv_control_msgs/srv/GoTo.srv"
    "/home/saf359/catkin_ws/src/uuv_simulator/uuv_control/uuv_control_msgs/srv/GoToIncremental.srv"
    "/home/saf359/catkin_ws/src/uuv_simulator/uuv_control/uuv_control_msgs/srv/Hold.srv"
    "/home/saf359/catkin_ws/src/uuv_simulator/uuv_control/uuv_control_msgs/srv/IsRunningTrajectory.srv"
    "/home/saf359/catkin_ws/src/uuv_simulator/uuv_control/uuv_control_msgs/srv/InitWaypointSet.srv"
    "/home/saf359/catkin_ws/src/uuv_simulator/uuv_control/uuv_control_msgs/srv/InitRectTrajectory.srv"
    "/home/saf359/catkin_ws/src/uuv_simulator/uuv_control/uuv_control_msgs/srv/StartTrajectory.srv"
    "/home/saf359/catkin_ws/src/uuv_simulator/uuv_control/uuv_control_msgs/srv/SwitchToAutomatic.srv"
    "/home/saf359/catkin_ws/src/uuv_simulator/uuv_control/uuv_control_msgs/srv/SwitchToManual.srv"
    "/home/saf359/catkin_ws/src/uuv_simulator/uuv_control/uuv_control_msgs/srv/SetPIDParams.srv"
    "/home/saf359/catkin_ws/src/uuv_simulator/uuv_control/uuv_control_msgs/srv/GetPIDParams.srv"
    "/home/saf359/catkin_ws/src/uuv_simulator/uuv_control/uuv_control_msgs/srv/SetSMControllerParams.srv"
    "/home/saf359/catkin_ws/src/uuv_simulator/uuv_control/uuv_control_msgs/srv/GetSMControllerParams.srv"
    "/home/saf359/catkin_ws/src/uuv_simulator/uuv_control/uuv_control_msgs/srv/SetMBSMControllerParams.srv"
    "/home/saf359/catkin_ws/src/uuv_simulator/uuv_control/uuv_control_msgs/srv/GetMBSMControllerParams.srv"
    "/home/saf359/catkin_ws/src/uuv_simulator/uuv_control/uuv_control_msgs/srv/ResetController.srv"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/uuv_control_msgs/cmake" TYPE FILE FILES "/home/saf359/catkin_ws/build/uuv_simulator/uuv_control/uuv_control_msgs/catkin_generated/installspace/uuv_control_msgs-msg-paths.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/saf359/catkin_ws/devel/include/uuv_control_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/saf359/catkin_ws/devel/share/roseus/ros/uuv_control_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/saf359/catkin_ws/devel/share/common-lisp/ros/uuv_control_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/saf359/catkin_ws/devel/share/gennodejs/ros/uuv_control_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/saf359/catkin_ws/devel/lib/python3/dist-packages/uuv_control_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/saf359/catkin_ws/devel/lib/python3/dist-packages/uuv_control_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/saf359/catkin_ws/build/uuv_simulator/uuv_control/uuv_control_msgs/catkin_generated/installspace/uuv_control_msgs.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/uuv_control_msgs/cmake" TYPE FILE FILES "/home/saf359/catkin_ws/build/uuv_simulator/uuv_control/uuv_control_msgs/catkin_generated/installspace/uuv_control_msgs-msg-extras.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/uuv_control_msgs/cmake" TYPE FILE FILES
    "/home/saf359/catkin_ws/build/uuv_simulator/uuv_control/uuv_control_msgs/catkin_generated/installspace/uuv_control_msgsConfig.cmake"
    "/home/saf359/catkin_ws/build/uuv_simulator/uuv_control/uuv_control_msgs/catkin_generated/installspace/uuv_control_msgsConfig-version.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/uuv_control_msgs" TYPE FILE FILES "/home/saf359/catkin_ws/src/uuv_simulator/uuv_control/uuv_control_msgs/package.xml")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/home/saf359/catkin_ws/build/uuv_simulator/uuv_control/uuv_control_msgs/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
