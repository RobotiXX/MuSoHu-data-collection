// Auto-generated. Do not edit!

// (in-package zed_interfaces.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class toggle_ledRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type toggle_ledRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type toggle_ledRequest
    let len;
    let data = new toggle_ledRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'zed_interfaces/toggle_ledRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new toggle_ledRequest(null);
    return resolved;
    }
};

class toggle_ledResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.new_led_status = null;
    }
    else {
      if (initObj.hasOwnProperty('new_led_status')) {
        this.new_led_status = initObj.new_led_status
      }
      else {
        this.new_led_status = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type toggle_ledResponse
    // Serialize message field [new_led_status]
    bufferOffset = _serializer.bool(obj.new_led_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type toggle_ledResponse
    let len;
    let data = new toggle_ledResponse(null);
    // Deserialize message field [new_led_status]
    data.new_led_status = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'zed_interfaces/toggle_ledResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '866beb482157f32341c9f0eac54a1e38';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool new_led_status
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new toggle_ledResponse(null);
    if (msg.new_led_status !== undefined) {
      resolved.new_led_status = msg.new_led_status;
    }
    else {
      resolved.new_led_status = false
    }

    return resolved;
    }
};

module.exports = {
  Request: toggle_ledRequest,
  Response: toggle_ledResponse,
  md5sum() { return '866beb482157f32341c9f0eac54a1e38'; },
  datatype() { return 'zed_interfaces/toggle_led'; }
};
