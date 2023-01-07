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

class save_3d_mapRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.map_filename = null;
      this.file_format = null;
    }
    else {
      if (initObj.hasOwnProperty('map_filename')) {
        this.map_filename = initObj.map_filename
      }
      else {
        this.map_filename = '';
      }
      if (initObj.hasOwnProperty('file_format')) {
        this.file_format = initObj.file_format
      }
      else {
        this.file_format = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type save_3d_mapRequest
    // Serialize message field [map_filename]
    bufferOffset = _serializer.string(obj.map_filename, buffer, bufferOffset);
    // Serialize message field [file_format]
    bufferOffset = _serializer.uint8(obj.file_format, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type save_3d_mapRequest
    let len;
    let data = new save_3d_mapRequest(null);
    // Deserialize message field [map_filename]
    data.map_filename = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [file_format]
    data.file_format = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.map_filename);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'zed_interfaces/save_3d_mapRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '56677e0c5e358a82a455f7d0d9b27a0e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Filename (with path and externsion) of the map file
    string map_filename 
    
    # File format [0: PLY, 1: PLY_BIN, 2: OBJ]
    uint8 file_format
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new save_3d_mapRequest(null);
    if (msg.map_filename !== undefined) {
      resolved.map_filename = msg.map_filename;
    }
    else {
      resolved.map_filename = ''
    }

    if (msg.file_format !== undefined) {
      resolved.file_format = msg.file_format;
    }
    else {
      resolved.file_format = 0
    }

    return resolved;
    }
};

class save_3d_mapResponse {
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
    // Serializes a message object of type save_3d_mapResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    // Serialize message field [info]
    bufferOffset = _serializer.string(obj.info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type save_3d_mapResponse
    let len;
    let data = new save_3d_mapResponse(null);
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
    return 'zed_interfaces/save_3d_mapResponse';
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
    const resolved = new save_3d_mapResponse(null);
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
  Request: save_3d_mapRequest,
  Response: save_3d_mapResponse,
  md5sum() { return '6b30b06d24a8a3ccaaea817409144337'; },
  datatype() { return 'zed_interfaces/save_3d_map'; }
};
