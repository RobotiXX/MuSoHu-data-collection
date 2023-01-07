// Auto-generated. Do not edit!

// (in-package zed_interfaces.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Keypoint3D = require('./Keypoint3D.js');

//-----------------------------------------------------------

class Skeleton3D {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.keypoints = null;
    }
    else {
      if (initObj.hasOwnProperty('keypoints')) {
        this.keypoints = initObj.keypoints
      }
      else {
        this.keypoints = new Array(18).fill(new Keypoint3D());
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Skeleton3D
    // Check that the constant length array field [keypoints] has the right length
    if (obj.keypoints.length !== 18) {
      throw new Error('Unable to serialize array field keypoints - length must be 18')
    }
    // Serialize message field [keypoints]
    obj.keypoints.forEach((val) => {
      bufferOffset = Keypoint3D.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Skeleton3D
    let len;
    let data = new Skeleton3D(null);
    // Deserialize message field [keypoints]
    len = 18;
    data.keypoints = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.keypoints[i] = Keypoint3D.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'zed_interfaces/Skeleton3D';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b704d948cb88b776b9f51ee392e13c62';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    ================================================================================
    MSG: zed_interfaces/Keypoint3D
    float32[3] kp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Skeleton3D(null);
    if (msg.keypoints !== undefined) {
      resolved.keypoints = new Array(18)
      for (let i = 0; i < resolved.keypoints.length; ++i) {
        if (msg.keypoints.length > i) {
          resolved.keypoints[i] = Keypoint3D.Resolve(msg.keypoints[i]);
        }
        else {
          resolved.keypoints[i] = new Keypoint3D();
        }
      }
    }
    else {
      resolved.keypoints = new Array(18).fill(new Keypoint3D())
    }

    return resolved;
    }
};

module.exports = Skeleton3D;
