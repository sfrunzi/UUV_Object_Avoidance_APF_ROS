# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include;/usr/include/eigen3".split(';') if "${prefix}/include;/usr/include/eigen3" != "" else []
PROJECT_CATKIN_DEPENDS = "roscpp;std_msgs;std_srvs;gazebo_msgs;geometry_msgs;sensor_msgs;control_toolbox;rostime;nav_msgs;message_runtime".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lfreefloating_gazebo;-lffg_pid".split(';') if "-lfreefloating_gazebo;-lffg_pid" != "" else []
PROJECT_NAME = "freefloating_gazebo"
PROJECT_SPACE_DIR = "/home/saf359/catkin_ws/install"
PROJECT_VERSION = "1.1.0"
