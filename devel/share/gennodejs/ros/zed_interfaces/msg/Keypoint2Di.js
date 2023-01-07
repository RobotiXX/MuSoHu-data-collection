// Auto-generated. Do not edit!

// (in-package zed_interfaces.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Keypoint2Di {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.kp = null;
    }
    else {
      if (initObj.hasOwnProperty('kp')) {
        this.kp = initObj.kp
      }
      else {
        this.kp = new Array(2).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Keypoint2Di
    // Check that the constant length array field [kp] has the right length
    if (obj.kp.length !== 2) {
      throw new Error('Unable to serialize array field kp - length must be 2')
    }
    // Serialize message field [kp]
    bufferOffset = _arraySerializer.uint32(obj.kp, buffer, bufferOffset, 2);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Keypoint2Di
    let len;
    let data = new Keypoint2Di(null);
    // Deserialize message field [kp]
    data.kp = _arrayDeserializer.uint32(buffer, bufferOffset, 2)
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'zed_interfaces/Keypoint2Di';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5d23739e59e90009d64f8e07a5e96e2b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32[2] kp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Keypoint2Di(null);
    if (msg.kp !== undefined) {
      resolved.kp = msg.kp;
    }
    else {
      resolved.kp = new Array(2).fill(0)
    }

    return resolved;
    }
};

module.exports = Keypoint2Di;
