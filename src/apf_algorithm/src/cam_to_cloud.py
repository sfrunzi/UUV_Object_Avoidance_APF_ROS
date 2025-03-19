#! /usr/bin/env python

import rospy
import cv2
import numpy as np
from sensor_msgs.msg import Image, PointCloud2, PointField
from cv_bridge import CvBridge, CvBridgeError
import sensor_msgs.point_cloud2 as pc2

class UnderwaterCameraNode:
    def __init__(self):
        rospy.init_node('underwater_camera_node', anonymous=True)
        
        self.bridge = CvBridge()
        
        self.image_sub = rospy.Subscriber('/underwater_camera/image_raw', Image, self.image_callback)
        self.depth_sub = rospy.Subscriber('/underwater_camera/depth', Image, self.depth_callback)
        
        self.point_cloud_pub = rospy.Publisher('/underwater_camera/point_cloud', PointCloud2, queue_size=10)
        
        self.image = None
        self.depth = None

    def image_callback(self, msg):
        try:
            self.image = self.bridge.imgmsg_to_cv2(msg, "bgr8")
        except CvBridgeError as e:
            rospy.logerr(e)

    def depth_callback(self, msg):
        try:
            self.depth = self.bridge.imgmsg_to_cv2(msg, "32FC1")
            self.publish_point_cloud()
        except CvBridgeError as e:
            rospy.logerr(e)

    def publish_point_cloud(self):
        if self.image is None or self.depth is None:
            return
        
        height, width = self.depth.shape
        points = []
        focalLength = 525.0
        
        for v in range(height):
            for u in range(width):
                z = self.depth[v, u]
                if np.isfinite(z):
                    x = (u - width / 2) * z / focalLength
                    y = (v - height / 2) * z / focalLength
                    points.append([x, y, z])
        
        header = rospy.Header()
        header.stamp = rospy.Time.now()
        header.frame_id = "camera_link"
        
        fields = [
            PointField('x', 0, PointField.FLOAT32, 1),
            PointField('y', 4, PointField.FLOAT32, 1),
            PointField('z', 8, PointField.FLOAT32, 1)
        ]
        
        point_cloud = pc2.create_cloud(header, fields, points)
        self.point_cloud_pub.publish(point_cloud)

    def run(self):
        rospy.spin()

if __name__ == '__main__':
    node = UnderwaterCameraNode()
    node.run()