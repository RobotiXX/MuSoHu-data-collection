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

class save_area_memoryRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.area_memory_filename = null;
    }
    else {
      if (initObj.hasOwnProperty('area_memory_filename')) {
        this.area_memory_filename = initObj.area_memory_filename
      }
      else {
        this.area_memory_filename = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type save_area_memoryRequest
    // Serialize message field [area_memory_filename]
    bufferOffset = _serializer.string(obj.area_memory_filename, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type save_area_memoryRequest
    let len;
    let data = new save_area_memoryRequest(null);
    // Deserialize message field [area_memory_filename]
    data.area_memory_filename = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.area_memory_filename);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'zed_interfaces/save_area_memoryRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ab0f15ea60791be9468710556673c3a9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Filename (with path and externsion) of the area memory file. Existing files will be updated
    string area_memory_filename 
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new save_area_memoryRequest(null);
    if (msg.area_memory_filename !== undefined) {
      resolved.area_memory_filename = msg.area_memory_filename;
    }
    else {
      resolved.area_memory_filename = ''
    }

    return resolved;
    }
};

class save_area_memoryResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.info = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = false;
      }
      if (initObj.hasOwnProperty('info')) {
        this.info = initObj.info
      }
      else {
        this.info = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type save_area_memoryResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    // Serialize message field [info]
    bufferOffset = _serializer.string(obj.info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type save_area_memoryResponse
    let len;
    let data = new save_area_memoryResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [info]
    data.info = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.info);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'zed_interfaces/save_area_memoryResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '929b8c0d7b68510a3f501a60258c746e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool result
    string info
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new save_area_memoryResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = false
    }

    if (msg.info !== undefined) {
      resolved.info = msg.info;
    }
    else {
      resolved.info = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: save_area_memoryRequest,
  Response: save_area_memoryResponse,
  md5sum() { return 'c8b71483aabdfc117f6a0d5ed8a98ab9'; },
  datatype() { return 'zed_interfaces/save_area_memory'; }
};
