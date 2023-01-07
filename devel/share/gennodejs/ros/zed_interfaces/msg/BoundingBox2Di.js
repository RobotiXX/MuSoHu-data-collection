// Auto-generated. Do not edit!

// (in-package zed_interfaces.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Keypoint2Di = require('./Keypoint2Di.js');

//-----------------------------------------------------------

class BoundingBox2Di {
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
        this.corners = new Array(4).fill(new Keypoint2Di());
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BoundingBox2Di
    // Check that the constant length array field [corners] has the right length
    if (obj.corners.length !== 4) {
      throw new Error('Unable to serialize array field corners - length must be 4')
    }
    // Serialize message field [corners]
    obj.corners.forEach((val) => {
      bufferOffset = Keypoint2Di.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BoundingBox2Di
    let len;
    let data = new BoundingBox2Di(null);
    // Deserialize message field [corners]
    len = 4;
    data.corners = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.corners[i] = Keypoint2Di.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'zed_interfaces/BoundingBox2Di';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '48f8f53e85eafba49fb9648f6258d114';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #      0 ------- 1
    #      |         |
    #      |         |
    #      |         |
    #      3 ------- 2
    zed_interfaces/Keypoint2Di[4] corners
    
    ================================================================================
    MSG: zed_interfaces/Keypoint2Di
    uint32[2] kp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BoundingBox2Di(null);
    if (msg.corners !== undefined) {
      resolved.corners = new Array(4)
      for (let i = 0; i < resolved.corners.length; ++i) {
        if (msg.corners.length > i) {
          resolved.corners[i] = Keypoint2Di.Resolve(msg.corners[i]);
        }
        else {
          resolved.corners[i] = new Keypoint2Di();
        }
      }
    }
    else {
      resolved.corners = new Array(4).fill(new Keypoint2Di())
    }

    return resolved;
    }
};

module.exports = BoundingBox2Di;
