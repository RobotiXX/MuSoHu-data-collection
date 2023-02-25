import pyquaternion as q
import tf2_py
from scipy.spatial.transform import Rotation 
import tf.transformations as tft
from tf.transformations import euler_from_quaternion, rotation_matrix
import math

def euler_from_quaternion2(x, y, z, w):
    t0 = +2.0 * (w * x + y * z)
    t1 = +1.0 - 2.0 * (x * x + y * y)
    roll_x = math.atan2(t0, t1)
     
    t2 = +2.0 * (w * y - z * x)
    t2 = +1.0 if t2 > +1.0 else t2
    t2 = -1.0 if t2 < -1.0 else t2
    pitch_y = math.asin(t2)
     
    t3 = +2.0 * (w * z + x * y)
    t4 = +1.0 - 2.0 * (y * y + z * z)
    yaw_z = math.atan2(t3, t4)
     
    
    return roll_x, pitch_y, yaw_z # in radians



x = Rotation.from_quat([-0.03699325417618785, 0.1287791029840824, -0.46747812193695815, 0.8737915353735222])

y = euler_from_quaternion2(-0.03699325417618785, 0.1287791029840824, -0.46747812193695815, 0.8737915353735222)

euler_x = x.as_euler('xyz', degrees=False)

print(euler_x)

print(y)
