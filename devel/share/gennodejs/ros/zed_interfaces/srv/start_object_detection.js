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

class start_object_detectionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.model = null;
      this.confidence = null;
      this.max_range = null;
      this.tracking = null;
      this.sk_body_fitting = null;
      this.mc_people = null;
      this.mc_vehicles = null;
      this.mc_bag = null;
      this.mc_animal = null;
      this.mc_electronics = null;
      this.mc_fruit_vegetable = null;
      this.mc_sport = null;
    }
    else {
      if (initObj.hasOwnProperty('model')) {
        this.model = initObj.model
      }
      else {
        this.model = 0;
      }
      if (initObj.hasOwnProperty('confidence')) {
        this.confidence = initObj.confidence
      }
      else {
        this.confidence = 0.0;
      }
      if (initObj.hasOwnProperty('max_range')) {
        this.max_range = initObj.max_range
      }
      else {
        this.max_range = 0.0;
      }
      if (initObj.hasOwnProperty('tracking')) {
        this.tracking = initObj.tracking
      }
      else {
        this.tracking = false;
      }
      if (initObj.hasOwnProperty('sk_body_fitting')) {
        this.sk_body_fitting = initObj.sk_body_fitting
      }
      else {
        this.sk_body_fitting = false;
      }
      if (initObj.hasOwnProperty('mc_people')) {
        this.mc_people = initObj.mc_people
      }
      else {
        this.mc_people = false;
      }
      if (initObj.hasOwnProperty('mc_vehicles')) {
        this.mc_vehicles = initObj.mc_vehicles
      }
      else {
        this.mc_vehicles = false;
      }
      if (initObj.hasOwnProperty('mc_bag')) {
        this.mc_bag = initObj.mc_bag
      }
      else {
        this.mc_bag = false;
      }
      if (initObj.hasOwnProperty('mc_animal')) {
        this.mc_animal = initObj.mc_animal
      }
      else {
        this.mc_animal = false;
      }
      if (initObj.hasOwnProperty('mc_electronics')) {
        this.mc_electronics = initObj.mc_electronics
      }
      else {
        this.mc_electronics = false;
      }
      if (initObj.hasOwnProperty('mc_fruit_vegetable')) {
        this.mc_fruit_vegetable = initObj.mc_fruit_vegetable
      }
      else {
        this.mc_fruit_vegetable = false;
      }
      if (initObj.hasOwnProperty('mc_sport')) {
        this.mc_sport = initObj.mc_sport
      }
      else {
        this.mc_sport = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type start_object_detectionRequest
    // Serialize message field [model]
    bufferOffset = _serializer.int8(obj.model, buffer, bufferOffset);
    // Serialize message field [confidence]
    bufferOffset = _serializer.float32(obj.confidence, buffer, bufferOffset);
    // Serialize message field [max_range]
    bufferOffset = _serializer.float32(obj.max_range, buffer, bufferOffset);
    // Serialize message field [tracking]
    bufferOffset = _serializer.bool(obj.tracking, buffer, bufferOffset);
    // Serialize message field [sk_body_fitting]
    bufferOffset = _serializer.bool(obj.sk_body_fitting, buffer, bufferOffset);
    // Serialize message field [mc_people]
    bufferOffset = _serializer.bool(obj.mc_people, buffer, bufferOffset);
    // Serialize message field [mc_vehicles]
    bufferOffset = _serializer.bool(obj.mc_vehicles, buffer, bufferOffset);
    // Serialize message field [mc_bag]
    bufferOffset = _serializer.bool(obj.mc_bag, buffer, bufferOffset);
    // Serialize message field [mc_animal]
    bufferOffset = _serializer.bool(obj.mc_animal, buffer, bufferOffset);
    // Serialize message field [mc_electronics]
    bufferOffset = _serializer.bool(obj.mc_electronics, buffer, bufferOffset);
    // Serialize message field [mc_fruit_vegetable]
    bufferOffset = _serializer.bool(obj.mc_fruit_vegetable, buffer, bufferOffset);
    // Serialize message field [mc_sport]
    bufferOffset = _serializer.bool(obj.mc_sport, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type start_object_detectionRequest
    let len;
    let data = new start_object_detectionRequest(null);
    // Deserialize message field [model]
    data.model = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [confidence]
    data.confidence = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [max_range]
    data.max_range = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [tracking]
    data.tracking = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [sk_body_fitting]
    data.sk_body_fitting = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [mc_people]
    data.mc_people = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [mc_vehicles]
    data.mc_vehicles = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [mc_bag]
    data.mc_bag = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [mc_animal]
    data.mc_animal = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [mc_electronics]
    data.mc_electronics = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [mc_fruit_vegetable]
    data.mc_fruit_vegetable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [mc_sport]
    data.mc_sport = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 18;
  }

  static datatype() {
    // Returns string type for a service object
    return 'zed_interfaces/start_object_detectionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '237986910a8e55bd46f1c5ba0541a75b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Starts object detection, if not automatically enabled with the parameter `object_detection/od_enabled`
    
    # OD Model
    # '0': MULTI_CLASS_BOX - '1': MULTI_CLASS_BOX_ACCURATE - '2': HUMAN_BODY_FAST - '3': HUMAN_BODY_ACCURATE
    int8 model
    
    # Minimum Confidence level
    float32 confidence
    
    # MAx detection range
    float32 max_range
    
    # Object tracking
    bool tracking
    
    # Body Fitting
    bool sk_body_fitting
    
    # Detect people (valid for Multi-class model)
    bool mc_people
    
    # Detect vehicles
    bool mc_vehicles
    
    # Detect bags
    bool mc_bag
    
    # Detect animals
    bool mc_animal
    
    # Detect electronic devices
    bool mc_electronics
    
    # Detect fruits and vegetables
    bool mc_fruit_vegetable
    
    # Detect sport objects
    bool mc_sport
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new start_object_detectionRequest(null);
    if (msg.model !== undefined) {
      resolved.model = msg.model;
    }
    else {
      resolved.model = 0
    }

    if (msg.confidence !== undefined) {
      resolved.confidence = msg.confidence;
    }
    else {
      resolved.confidence = 0.0
    }

    if (msg.max_range !== undefined) {
      resolved.max_range = msg.max_range;
    }
    else {
      resolved.max_range = 0.0
    }

    if (msg.tracking !== undefined) {
      resolved.tracking = msg.tracking;
    }
    else {
      resolved.tracking = false
    }

    if (msg.sk_body_fitting !== undefined) {
      resolved.sk_body_fitting = msg.sk_body_fitting;
    }
    else {
      resolved.sk_body_fitting = false
    }

    if (msg.mc_people !== undefined) {
      resolved.mc_people = msg.mc_people;
    }
    else {
      resolved.mc_people = false
    }

    if (msg.mc_vehicles !== undefined) {
      resolved.mc_vehicles = msg.mc_vehicles;
    }
    else {
      resolved.mc_vehicles = false
    }

    if (msg.mc_bag !== undefined) {
      resolved.mc_bag = msg.mc_bag;
    }
    else {
      resolved.mc_bag = false
    }

    if (msg.mc_animal !== undefined) {
      resolved.mc_animal = msg.mc_animal;
    }
    else {
      resolved.mc_animal = false
    }

    if (msg.mc_electronics !== undefined) {
      resolved.mc_electronics = msg.mc_electronics;
    }
    else {
      resolved.mc_electronics = false
    }

    if (msg.mc_fruit_vegetable !== undefined) {
      resolved.mc_fruit_vegetable = msg.mc_fruit_vegetable;
    }
    else {
      resolved.mc_fruit_vegetable = false
    }

    if (msg.mc_sport !== undefined) {
      resolved.mc_sport = msg.mc_sport;
    }
    else {
      resolved.mc_sport = false
    }

    return resolved;
    }
};

class start_object_detectionResponse {
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
    // Serializes a message object of type start_object_detectionResponse
    // Serialize message field [done]
    bufferOffset = _serializer.bool(obj.done, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type start_object_detectionResponse
    let len;
    let data = new start_object_detectionResponse(null);
    // Deserialize message field [done]
    data.done = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'zed_interfaces/start_object_detectionResponse';
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
    const resolved = new start_object_detectionResponse(null);
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
  Request: start_object_detectionRequest,
  Response: start_object_detectionResponse,
  md5sum() { return '9756600455daaeb06ade1a46c6073504'; },
  datatype() { return 'zed_interfaces/start_object_detection'; }
};
