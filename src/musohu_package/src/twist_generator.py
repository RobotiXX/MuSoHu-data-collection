#!/usr/bin python3
import math
from math import pi
import rospy
import numpy as np
import tf
from tf.transformations import euler_from_quaternion
from nav_msgs.msg import Odometry
from std_msgs.msg import String
from geometry_msgs.msg import Point, Pose, Quaternion, Twist, Vector3
from scipy.spatial.transform import Rotation 

class TwistManager:
    def __init__(self):
        rospy.init_node('twist_manager')
        self.action_pub = rospy.Publisher("/action", Odometry, queue_size=1) # queue_size = 50
        self.last_odom = None
        self.last_angle_z = 0
        self.prev_time = rospy.get_rostime().nsecs + (rospy.get_rostime().secs * 1000000000)
        self.vx = 0
        self.vy = 0
        self.wz = 0
        rospy.Subscriber("/zed2/zed_node/odom", Odometry, self.listen)

    def listen(self, data):
        if self.last_odom == None:
            self.last_odom = data

        curr_time = data.header.stamp.secs * 1000000000 + data.header.stamp.nsecs # or rospy.Time.now()

        dt = (curr_time - self.prev_time ) / 1000000000 # turn nsec to sec

        current_euler_xyz = euler_from_quaternion([data.pose.pose.orientation.x, data.pose.pose.orientation.y, data.pose.pose.orientation.z, data.pose.pose.orientation.w])
        current_angle_z = current_euler_xyz[2]

        rotation_last_to_world = np.array([
                              [np.cos(self.last_angle_z), -np.sin(self.last_angle_z), self.last_odom.pose.pose.position.x],
                              [np.sin(self.last_angle_z), np.cos(self.last_angle_z), self.last_odom.pose.pose.position.y],
                              [0, 0, 1]])
        rotation_world_to_last = np.linalg.inv(rotation_last_to_world)
        current_pos_in_world_frame = np.matrix([[data.pose.pose.position.x], [data.pose.pose.position.y], [1]])
        current_pos_in_last_frame = rotation_world_to_last @ current_pos_in_world_frame

        delta_z = current_angle_z - self.last_angle_z
        
        if (delta_z < -pi):
            delta_z = delta_z + 2*pi
        if delta_z > pi:
            delta_z = delta_z - 2*pi
        
        if (dt != 0):
            self.vx = current_pos_in_last_frame[0] / dt
            self.vy = current_pos_in_last_frame[1] / dt
            self.wz = delta_z / dt

        self.update(current_angle_z, curr_time, data)
        self.publish(data)

    def update(self, z, t, data):
        self.prev_time = t
        self.last_odom = data
        self.last_angle_z = z

    def publish(self, curr_odom):
        odom = Odometry()
        odom.header.stamp = curr_odom.header.stamp
        odom.header.frame_id = "action"

        odom.twist.twist = Twist(Vector3(self.vx, self.vy, 0), Vector3(0, 0, self.wz))

        # publish the message
        self.action_pub.publish(odom)

### Main ###
if __name__ == '__main__':
    try:
        manager = TwistManager()
        # manager.execute()
        rospy.spin()
    except KeyboardInterrupt:
        rospy.loginfo('Shutting down')

