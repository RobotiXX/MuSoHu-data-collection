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

class BoundingBox3D {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.corners = null;
    }
    else {
      if (initObj.hasOwnProperty('corners')) {
        this.corners = initObj.corners
      }
      else {
        this.corners = new Array(8).fill(new Keypoint3D());
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BoundingBox3D
    // Check that the constant length array field [corners] has the right length
    if (obj.corners.length !== 8) {
      throw new Error('Unable to serialize array field corners - length must be 8')
    }
    // Serialize message field [corners]
    obj.corners.forEach((val) => {
      bufferOffset = Keypoint3D.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BoundingBox3D
    let len;
    let data = new BoundingBox3D(null);
    // Deserialize message field [corners]
    len = 8;
    data.corners = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.corners[i] = Keypoint3D.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'zed_interfaces/BoundingBox3D';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3750b81144ba1b26f88ce23eeb4efd34';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BoundingBox3D(null);
    if (msg.corners !== undefined) {
      resolved.corners = new Array(8)
      for (let i = 0; i < resolved.corners.length; ++i) {
        if (msg.corners.length > i) {
          resolved.corners[i] = Keypoint3D.Resolve(msg.corners[i]);
        }
        else {
          resolved.corners[i] = new Keypoint3D();
        }
      }
    }
    else {
      resolved.corners = new Array(8).fill(new Keypoint3D())
    }

    return resolved;
    }
};

module.exports = BoundingBox3D;
