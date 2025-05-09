# Obstacle Avoidance Node

This ROS package implements an obstacle avoidance algorithm using a potential field approach, utilizing 3D point cloud data from an RGB-D camera. The node processes the point cloud data to calculate potential fields and generates velocity commands to navigate around obstacles.

## Table of Contents
- [Installation](#installation)
- [Usage](#usage)
- [Algorithm Overview](#algorithm-overview)
- [Dependencies](#dependencies)
- [Maintainers](#maintainers)

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

## Usage

To run the obstacle avoidance node, use the provided launch file:
```
roslaunch obstacle_avoidance_node obstacle_avoidance.launch
```

Make sure your RGB-D camera is publishing the 3D point cloud data to the appropriate topic.

## Algorithm Overview

The potential field algorithm works by creating attractive and repulsive forces based on the position of the robot and nearby obstacles. The robot is attracted to its goal while being repelled by obstacles, allowing it to navigate safely in its environment. The approach for this implementation was adapted from: https://ieeexplore.ieee.org/document/9755133

## Dependencies

This package depends on the following ROS packages:
- `sensor_msgs`
- `geometry_msgs`
- `pcl_ros`
- `rospy`

## Maintainer

- Sara Frunzi - saf359@drexel.edu - sfrunzi
