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

class start_svo_recordingRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.svo_filename = null;
    }
    else {
      if (initObj.hasOwnProperty('svo_filename')) {
        this.svo_filename = initObj.svo_filename
      }
      else {
        this.svo_filename = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type start_svo_recordingRequest
    // Serialize message field [svo_filename]
    bufferOffset = _serializer.string(obj.svo_filename, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type start_svo_recordingRequest
    let len;
    let data = new start_svo_recordingRequest(null);
    // Deserialize message field [svo_filename]
    data.svo_filename = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.svo_filename);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'zed_interfaces/start_svo_recordingRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd53367c1321809b5cdba020b6f0085ff';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Full path is required no relative paths
    string svo_filename 
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new start_svo_recordingRequest(null);
    if (msg.svo_filename !== undefined) {
      resolved.svo_filename = msg.svo_filename;
    }
    else {
      resolved.svo_filename = ''
    }

    return resolved;
    }
};

class start_svo_recordingResponse {
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
    // Serializes a message object of type start_svo_recordingResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    // Serialize message field [info]
    bufferOffset = _serializer.string(obj.info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type start_svo_recordingResponse
    let len;
    let data = new start_svo_recordingResponse(null);
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
    return 'zed_interfaces/start_svo_recordingResponse';
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
    const resolved = new start_svo_recordingResponse(null);
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
  Request: start_svo_recordingRequest,
  Response: start_svo_recordingResponse,
  md5sum() { return 'a0f71014040ca234c6276bc9c76368c6'; },
  datatype() { return 'zed_interfaces/start_svo_recording'; }
};
