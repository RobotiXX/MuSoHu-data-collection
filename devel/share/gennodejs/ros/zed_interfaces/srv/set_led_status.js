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

class set_led_statusRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.led_enabled = null;
    }
    else {
      if (initObj.hasOwnProperty('led_enabled')) {
        this.led_enabled = initObj.led_enabled
      }
      else {
        this.led_enabled = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type set_led_statusRequest
    // Serialize message field [led_enabled]
    bufferOffset = _serializer.bool(obj.led_enabled, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type set_led_statusRequest
    let len;
    let data = new set_led_statusRequest(null);
    // Deserialize message field [led_enabled]
    data.led_enabled = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'zed_interfaces/set_led_statusRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f2e0f7cf20d5f300d5382e9eab56e737';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool led_enabled
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new set_led_statusRequest(null);
    if (msg.led_enabled !== undefined) {
      resolved.led_enabled = msg.led_enabled;
    }
    else {
      resolved.led_enabled = false
    }

    return resolved;
    }
};

class set_led_statusResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.done = null;
    }
    else {
      if (initObj.hasOwnProperty('done')) {
        this.done = initObj.done
      }
      else {
        this.done = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type set_led_statusResponse
    // Serialize message field [done]
    bufferOffset = _serializer.bool(obj.done, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type set_led_statusResponse
    let len;
    let data = new set_led_statusResponse(null);
    // Deserialize message field [done]
    data.done = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'zed_interfaces/set_led_statusResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '89bb254424e4cffedbf494e7b0ddbfea';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool done
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new set_led_statusResponse(null);
    if (msg.done !== undefined) {
      resolved.done = msg.done;
    }
    else {
      resolved.done = false
    }

    return resolved;
    }
};

module.exports = {
  Request: set_led_statusRequest,
  Response: set_led_statusResponse,
  md5sum() { return 'bd86bfb1e9db5dfcf2eea2f02bf12142'; },
  datatype() { return 'zed_interfaces/set_led_status'; }
};
