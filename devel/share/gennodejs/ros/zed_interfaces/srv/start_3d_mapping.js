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

class start_3d_mappingRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.resolution = null;
      this.max_mapping_range = null;
      this.fused_pointcloud_freq = null;
    }
    else {
      if (initObj.hasOwnProperty('resolution')) {
        this.resolution = initObj.resolution
      }
      else {
        this.resolution = 0.0;
      }
      if (initObj.hasOwnProperty('max_mapping_range')) {
        this.max_mapping_range = initObj.max_mapping_range
      }
      else {
        this.max_mapping_range = 0.0;
      }
      if (initObj.hasOwnProperty('fused_pointcloud_freq')) {
        this.fused_pointcloud_freq = initObj.fused_pointcloud_freq
      }
      else {
        this.fused_pointcloud_freq = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type start_3d_mappingRequest
    // Serialize message field [resolution]
    bufferOffset = _serializer.float32(obj.resolution, buffer, bufferOffset);
    // Serialize message field [max_mapping_range]
    bufferOffset = _serializer.float32(obj.max_mapping_range, buffer, bufferOffset);
    // Serialize message field [fused_pointcloud_freq]
    bufferOffset = _serializer.float32(obj.fused_pointcloud_freq, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type start_3d_mappingRequest
    let len;
    let data = new start_3d_mappingRequest(null);
    // Deserialize message field [resolution]
    data.resolution = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [max_mapping_range]
    data.max_mapping_range = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [fused_pointcloud_freq]
    data.fused_pointcloud_freq = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'zed_interfaces/start_3d_mappingRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '187ac9d444c9f537f1d5a7db64b8e12a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Starts 3D fused pointcloud generation, if not automatically enabled with the parameter `mapping/mapping_enabled`
    
    # Resolution of the fused pointcloud in meters [0.01, 0.2]
    float32 resolution
    
    # Max mapping range in meters [0.2, 20.0]
    float32 max_mapping_range
    
    # Frequency of the publishing of the fused colored point cloud
    float32 fused_pointcloud_freq
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new start_3d_mappingRequest(null);
    if (msg.resolution !== undefined) {
      resolved.resolution = msg.resolution;
    }
    else {
      resolved.resolution = 0.0
    }

    if (msg.max_mapping_range !== undefined) {
      resolved.max_mapping_range = msg.max_mapping_range;
    }
    else {
      resolved.max_mapping_range = 0.0
    }

    if (msg.fused_pointcloud_freq !== undefined) {
      resolved.fused_pointcloud_freq = msg.fused_pointcloud_freq;
    }
    else {
      resolved.fused_pointcloud_freq = 0.0
    }

    return resolved;
    }
};

class start_3d_mappingResponse {
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
    // Serializes a message object of type start_3d_mappingResponse
    // Serialize message field [done]
    bufferOffset = _serializer.bool(obj.done, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type start_3d_mappingResponse
    let len;
    let data = new start_3d_mappingResponse(null);
    // Deserialize message field [done]
    data.done = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'zed_interfaces/start_3d_mappingResponse';
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
    const resolved = new start_3d_mappingResponse(null);
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
  Request: start_3d_mappingRequest,
  Response: start_3d_mappingResponse,
  md5sum() { return '3196af5ec088c6cf035e36ce85c17da0'; },
  datatype() { return 'zed_interfaces/start_3d_mapping'; }
};
