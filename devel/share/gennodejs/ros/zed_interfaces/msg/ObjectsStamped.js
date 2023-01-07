// Auto-generated. Do not edit!

// (in-package zed_interfaces.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Object = require('./Object.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ObjectsStamped {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.objects = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('objects')) {
        this.objects = initObj.objects
      }
      else {
        this.objects = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObjectsStamped
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [objects]
    // Serialize the length for message field [objects]
    bufferOffset = _serializer.uint32(obj.objects.length, buffer, bufferOffset);
    obj.objects.forEach((val) => {
      bufferOffset = Object.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObjectsStamped
    let len;
    let data = new ObjectsStamped(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [objects]
    // Deserialize array length for message field [objects]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.objects = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.objects[i] = Object.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.objects.forEach((val) => {
      length += Object.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'zed_interfaces/ObjectsStamped';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e91047b6614d7847b9669e1a2fe302b2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Standard Header
    std_msgs/Header header
    
    # Array of `object_stamped` topics
    zed_interfaces/Object[] objects
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: zed_interfaces/Object
    # Object label
    string label
    
    # Object label ID
    int16 label_id
    
    # Object sub
    string sublabel
    
    # Object confidence level (1-99)
    float32 confidence
    
    # Object centroid position
    float32[3] position
    
    # Position covariance
    float32[6] position_covariance
    
    # Object velocity
    float32[3] velocity
    
    # Tracking available
    bool tracking_available
    
    # Tracking state
    # 0 -> OFF (object not valid)
    # 1 -> OK
    # 2 -> SEARCHING (occlusion occurred, trajectory is estimated)
    int8 tracking_state
    
    # Action state
    # 0 -> IDLE
    # 2 -> MOVING
    int8 action_state
    
    # 2D Bounding box projected to Camera image
    zed_interfaces/BoundingBox2Di bounding_box_2d
    
    # 3D Bounding box in world frame
    zed_interfaces/BoundingBox3D bounding_box_3d
    
    # 3D dimensions (width, height, lenght)
    float32[3] dimensions_3d
    
    # Is skeleton available?
    bool skeleton_available
    
    # 2D Bounding box projected to Camera image of the person head
    zed_interfaces/BoundingBox2Df head_bounding_box_2d
    
    # 3D Bounding box in world frame of the person head
    zed_interfaces/BoundingBox3D head_bounding_box_3d
    
    # 3D position of the centroid of the person head
    float32[3] head_position
    
    # 2D Person skeleton projected to Camera image
    zed_interfaces/Skeleton2D skeleton_2d
    
    # 3D Person skeleton in world frame
    zed_interfaces/Skeleton3D skeleton_3d
    
    ================================================================================
    MSG: zed_interfaces/BoundingBox2Di
    #      0 ------- 1
    #      |         |
    #      |         |
    #      |         |
    #      3 ------- 2
    zed_interfaces/Keypoint2Di[4] corners
    
    ================================================================================
    MSG: zed_interfaces/Keypoint2Di
    uint32[2] kp
    
    ================================================================================
    MSG: zed_interfaces/BoundingBox3D
    #      1 ------- 2
    #     /.        /|
    #    0 ------- 3 |
    #    | .       | |
    #    | 5.......| 6
    #    |.        |/
    #    4 ------- 7
    zed_interfaces/Keypoint3D[8] corners
    
    ================================================================================
    MSG: zed_interfaces/Keypoint3D
    float32[3] kp
    
    ================================================================================
    MSG: zed_interfaces/BoundingBox2Df
    #      0 ------- 1
    #      |         |
    #      |         |
    #      |         |
    #      3 ------- 2
    zed_interfaces/Keypoint2Df[4] corners
    
    ================================================================================
    MSG: zed_interfaces/Keypoint2Df
    float32[2] kp
    
    ================================================================================
    MSG: zed_interfaces/Skeleton2D
    # Skeleton joints indices
    #        16-14   15-17
    #             \ /
    #              0
    #              |
    #       2------1------5
    #       |    |   |    |
    #	    |    |   |    |
    #       3    |   |    6
    #       |    |   |    |
    #       |    |   |    |
    #       4    8   11   7
    #            |   |
    #            |   |
    #            |   |
    #            9   12
    #            |   |
    #            |   |
    #            |   |
    #           10   13
    zed_interfaces/Keypoint2Df[18] keypoints
    
    ================================================================================
    MSG: zed_interfaces/Skeleton3D
    # Skeleton joints indices
    #        16-14   15-17
    #             \ /
    #              0
    #              |
    #       2------1------5
    #       |    |   |    |
    #	    |    |   |    |
    #       3    |   |    6
    #       |    |   |    |
    #       |    |   |    |
    #       4    8   11   7
    #            |   |
    #            |   |
    #            |   |
    #            9   12
    #            |   |
    #            |   |
    #            |   |
    #           10   13
    zed_interfaces/Keypoint3D[18] keypoints
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ObjectsStamped(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.objects !== undefined) {
      resolved.objects = new Array(msg.objects.length);
      for (let i = 0; i < resolved.objects.length; ++i) {
        resolved.objects[i] = Object.Resolve(msg.objects[i]);
      }
    }
    else {
      resolved.objects = []
    }

    return resolved;
    }
};

module.exports = ObjectsStamped;
