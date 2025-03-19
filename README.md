# UUV Obstacle Avoidance via Artificial Potential Field (APF) Algorithm in ROS

This repository was made as part of a course project by graduate student Sara Frunzi at Drexel University in Philadelphia, PA, for the Electrical and Computer Engineering course "Mobile Sensing and Motion Planning". This repository contains a ROS package for navigation of an unmanned underwater vehicle, the BlueROV2 by Blue Robotics, in a Gazebo laken environment via the Artificial Potential Field Algorithm.

## Requirements
- git
- ROS Noetic [ros-noetic-desktop-full](http://wiki.ros.org/ROS/Installation)
- [mavros](http://wiki.ros.org/mavros)
- python
  - opencv_python
  - numpy
  - PyYAML  
- [BlueROV2 ROS Simulation](https://github.com/UUVControl/bluerov2)
- [UUV Simulator](https://uuvsimulator.github.io/)
- [uw_image_sim](https://github.com/olayasturias/uw_img_sim)
- [freefloating_gazebo](https://github.com/freefloating-gazebo/freefloating_gazebo)

## Installation
1. Ensure you have ROS Noetic installed on your system.
2. Clone this repository into your ROS workspace:
   ```
   cd ~/catkin_ws/src
   git clone <repository-url>
   ```
3. Build the package:
   ```
   cd ~/catkin_ws
   catkin_make
   ```

## Maintainer

- Sara Frunzi - saf359@drexel.edu - sfrunzi
