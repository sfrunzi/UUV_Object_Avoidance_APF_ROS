#! /usr/bin/env python 

import rospy
from sensor_msgs.msg import Image, PointCloud2, PointField, NavSatFix
from geometry_msgs.msg import Twist
import numpy as np
import geopy.distance

class apfAlgorithmNode:
    def __init__(self):
        rospy.init_node('apf_algorithm_node', anonymous=True)
        
        self.velocity_pub = rospy.Publisher('/cmd_vel', Twist, queue_size=10)
        self.point_cloud_sub = rospy.Subscriber('/underwater_camera/point_cloud', PointCloud2, self.point_cloud_callback)
        self.gps_sub = rospy.Subscriber('/gps/fix', NavSatFix, self.gps_callback)
        
        self.rate = rospy.Rate(10)  # 10 Hz

        self.current_position = None
        self.goal_position = (37.7749, -122.4194)  # Example goal position (latitude, longitude)

    def gps_callback(self, msg):
        self.current_position = (msg.latitude, msg.longitude)

    def point_cloud_callback(self, msg):
        # Convert PointCloud2 message to PCL data
        cloud = pcl.PointCloud()
        cloud.from_msg(msg)

        # Get obstacle locations from the point cloud
        obstacles = self.get_obstacle_locations(cloud)

        # Process the point cloud to calculate potential fields
        self.calculate_potential_fields(cloud, obstacles)

    def get_obstacle_locations(self, cloud):
        obstacles = []
        for point in cloud:
            x, y, z = point
            if np.isfinite(x) and np.isfinite(y) and np.isfinite(z):
                obstacles.append((x, y, z))
        return obstacles

    def calculate_potential_fields(self, cloud, obstacles):
    if self.current_position is None:
        return

    kO = 0.1
    kG = 5

    qR = 1
    qO = 1
    qG = -1

    # Calculate distance to goal
    distance_to_goal = geopy.distance.distance(self.current_position, self.goal_position).meters

    # Calculate direction to goal
    direction_to_goal = np.arctan2(self.goal_position[1] - self.current_position[1], self.goal_position[0] - self.current_position[0])

    # Calculate distance to obstacles
    obstacle_distances = []
    for obstacle in obstacles:
        distance_to_obstacle = np.sqrt((self.current_position[0] - obstacle[0])**2 + (self.current_position[1] - obstacle[1])**2)
        obstacle_distances.append(distance_to_obstacle)

    # Calculate attractive force
    att = np.array([kG * (self.goal_position[0] - self.current_position[0]), kG * (self.goal_position[1] - self.current_position[1])])

    # Calculate repulsive forces
    rep = np.zeros(2)
    for obstacle, distance_to_obstacle in zip(obstacles, obstacle_distances):
        if distance_to_obstacle < 1.0:  # Consider obstacles within 1 meter
            rep += kO * (np.array([self.current_position[0] - obstacle[0], self.current_position[1] - obstacle[1]]) / distance_to_obstacle**2)

    # Calculate resultant force
    F = att + rep

    # Calculate direction of the resultant force
    direction_of_force = np.arctan2(F[1], F[0])

    # Calculate velocity command
    velocity_cmd = Twist()
    velocity_cmd.linear.x = np.linalg.norm(F)  # Set linear velocity proportional to the magnitude of the force
    velocity_cmd.angular.z = direction_of_force - direction_to_goal  # Set angular velocity based on the direction of the force

    # Publish the velocity command
    self.velocity_pub.publish(velocity_cmd)

    def run(self):
        while not rospy.is_shutdown():
            self.rate.sleep()

if __name__ == '__main__':
    node = apfAlgorithmNode()
    node.run()