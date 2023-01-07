// Auto-generated. Do not edit!

// (in-package zed_interfaces.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let BoundingBox2Di = require('./BoundingBox2Di.js');
let BoundingBox3D = require('./BoundingBox3D.js');
let BoundingBox2Df = require('./BoundingBox2Df.js');
let Skeleton2D = require('./Skeleton2D.js');
let Skeleton3D = require('./Skeleton3D.js');

//-----------------------------------------------------------

class Object {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.label = null;
      this.label_id = null;
      this.sublabel = null;
      this.confidence = null;
      this.position = null;
      this.position_covariance = null;
      this.velocity = null;
      this.tracking_available = null;
      this.tracking_state = null;
      this.action_state = null;
      this.bounding_box_2d = null;
      this.bounding_box_3d = null;
      this.dimensions_3d = null;
      this.skeleton_available = null;
      this.head_bounding_box_2d = null;
      this.head_bounding_box_3d = null;
      this.head_position = null;
      this.skeleton_2d = null;
      this.skeleton_3d = null;
    }
    else {
      if (initObj.hasOwnProperty('label')) {
        this.label = initObj.label
      }
      else {
        this.label = '';
      }
      if (initObj.hasOwnProperty('label_id')) {
        this.label_id = initObj.label_id
      }
      else {
        this.label_id = 0;
      }
      if (initObj.hasOwnProperty('sublabel')) {
        this.sublabel = initObj.sublabel
      }
      else {
        this.sublabel = '';
      }
      if (initObj.hasOwnProperty('confidence')) {
        this.confidence = initObj.confidence
      }
      else {
        this.confidence = 0.0;
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('position_covariance')) {
        this.position_covariance = initObj.position_covariance
      }
      else {
        this.position_covariance = new Array(6).fill(0);
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('tracking_available')) {
        this.tracking_available = initObj.tracking_available
      }
      else {
        this.tracking_available = false;
      }
      if (initObj.hasOwnProperty('tracking_state')) {
        this.tracking_state = initObj.tracking_state
      }
      else {
        this.tracking_state = 0;
      }
      if (initObj.hasOwnProperty('action_state')) {
        this.action_state = initObj.action_state
      }
      else {
        this.action_state = 0;
      }
      if (initObj.hasOwnProperty('bounding_box_2d')) {
        this.bounding_box_2d = initObj.bounding_box_2d
      }
      else {
        this.bounding_box_2d = new BoundingBox2Di();
      }
      if (initObj.hasOwnProperty('bounding_box_3d')) {
        this.bounding_box_3d = initObj.bounding_box_3d
      }
      else {
        this.bounding_box_3d = new BoundingBox3D();
      }
      if (initObj.hasOwnProperty('dimensions_3d')) {
        this.dimensions_3d = initObj.dimensions_3d
      }
      else {
        this.dimensions_3d = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('skeleton_available')) {
        this.skeleton_available = initObj.skeleton_available
      }
      else {
        this.skeleton_available = false;
      }
      if (initObj.hasOwnProperty('head_bounding_box_2d')) {
        this.head_bounding_box_2d = initObj.head_bounding_box_2d
      }
      else {
        this.head_bounding_box_2d = new BoundingBox2Df();
      }
      if (initObj.hasOwnProperty('head_bounding_box_3d')) {
        this.head_bounding_box_3d = initObj.head_bounding_box_3d
      }
      else {
        this.head_bounding_box_3d = new BoundingBox3D();
      }
      if (initObj.hasOwnProperty('head_position')) {
        this.head_position = initObj.head_position
      }
      else {
        this.head_position = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('skeleton_2d')) {
        this.skeleton_2d = initObj.skeleton_2d
      }
      else {
        this.skeleton_2d = new Skeleton2D();
      }
      if (initObj.hasOwnProperty('skeleton_3d')) {
        this.skeleton_3d = initObj.skeleton_3d
      }
      else {
        this.skeleton_3d = new Skeleton3D();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Object
    // Serialize message field [label]
    bufferOffset = _serializer.string(obj.label, buffer, bufferOffset);
    // Serialize message field [label_id]
    bufferOffset = _serializer.int16(obj.label_id, buffer, bufferOffset);
    // Serialize message field [sublabel]
    bufferOffset = _serializer.string(obj.sublabel, buffer, bufferOffset);
    // Serialize message field [confidence]
    bufferOffset = _serializer.float32(obj.confidence, buffer, bufferOffset);
    // Check that the constant length array field [position] has the right length
    if (obj.position.length !== 3) {
      throw new Error('Unable to serialize array field position - length must be 3')
    }
    // Serialize message field [position]
    bufferOffset = _arraySerializer.float32(obj.position, buffer, bufferOffset, 3);
    // Check that the constant length array field [position_covariance] has the right length
    if (obj.position_covariance.length !== 6) {
      throw new Error('Unable to serialize array field position_covariance - length must be 6')
    }
    // Serialize message field [position_covariance]
    bufferOffset = _arraySerializer.float32(obj.position_covariance, buffer, bufferOffset, 6);
    // Check that the constant length array field [velocity] has the right length
    if (obj.velocity.length !== 3) {
      throw new Error('Unable to serialize array field velocity - length must be 3')
    }
    // Serialize message field [velocity]
    bufferOffset = _arraySerializer.float32(obj.velocity, buffer, bufferOffset, 3);
    // Serialize message field [tracking_available]
    bufferOffset = _serializer.bool(obj.tracking_available, buffer, bufferOffset);
    // Serialize message field [tracking_state]
    bufferOffset = _serializer.int8(obj.tracking_state, buffer, bufferOffset);
    // Serialize message field [action_state]
    bufferOffset = _serializer.int8(obj.action_state, buffer, bufferOffset);
    // Serialize message field [bounding_box_2d]
    bufferOffset = BoundingBox2Di.serialize(obj.bounding_box_2d, buffer, bufferOffset);
    // Serialize message field [bounding_box_3d]
    bufferOffset = BoundingBox3D.serialize(obj.bounding_box_3d, buffer, bufferOffset);
    // Check that the constant length array field [dimensions_3d] has the right length
    if (obj.dimensions_3d.length !== 3) {
      throw new Error('Unable to serialize array field dimensions_3d - length must be 3')
    }
    // Serialize message field [dimensions_3d]
    bufferOffset = _arraySerializer.float32(obj.dimensions_3d, buffer, bufferOffset, 3);
    // Serialize message field [skeleton_available]
    bufferOffset = _serializer.bool(obj.skeleton_available, buffer, bufferOffset);
    // Serialize message field [head_bounding_box_2d]
    bufferOffset = BoundingBox2Df.serialize(obj.head_bounding_box_2d, buffer, bufferOffset);
    // Serialize message field [head_bounding_box_3d]
    bufferOffset = BoundingBox3D.serialize(obj.head_bounding_box_3d, buffer, bufferOffset);
    // Check that the constant length array field [head_position] has the right length
    if (obj.head_position.length !== 3) {
      throw new Error('Unable to serialize array field head_position - length must be 3')
    }
    // Serialize message field [head_position]
    bufferOffset = _arraySerializer.float32(obj.head_position, buffer, bufferOffset, 3);
    // Serialize message field [skeleton_2d]
    bufferOffset = Skeleton2D.serialize(obj.skeleton_2d, buffer, bufferOffset);
    // Serialize message field [skeleton_3d]
    bufferOffset = Skeleton3D.serialize(obj.skeleton_3d, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Object
    let len;
    let data = new Object(null);
    // Deserialize message field [label]
    data.label = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [label_id]
    data.label_id = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [sublabel]
    data.sublabel = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [confidence]
    data.confidence = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = _arrayDeserializer.float32(buffer, bufferOffset, 3)
    // Deserialize message field [position_covariance]
    data.position_covariance = _arrayDeserializer.float32(buffer, bufferOffset, 6)
    // Deserialize message field [velocity]
    data.velocity = _arrayDeserializer.float32(buffer, bufferOffset, 3)
    // Deserialize message field [tracking_available]
    data.tracking_available = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [tracking_state]
    data.tracking_state = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [action_state]
    data.action_state = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [bounding_box_2d]
    data.bounding_box_2d = BoundingBox2Di.deserialize(buffer, bufferOffset);
    // Deserialize message field [bounding_box_3d]
    data.bounding_box_3d = BoundingBox3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [dimensions_3d]
    data.dimensions_3d = _arrayDeserializer.float32(buffer, bufferOffset, 3)
    // Deserialize message field [skeleton_available]
    data.skeleton_available = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [head_bounding_box_2d]
    data.head_bounding_box_2d = BoundingBox2Df.deserialize(buffer, bufferOffset);
    // Deserialize message field [head_bounding_box_3d]
    data.head_bounding_box_3d = BoundingBox3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [head_position]
    data.head_position = _arrayDeserializer.float32(buffer, bufferOffset, 3)
    // Deserialize message field [skeleton_2d]
    data.skeleton_2d = Skeleton2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [skeleton_3d]
    data.skeleton_3d = Skeleton3D.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.label);
    length += _getByteLength(object.sublabel);
    return length + 150;
  }

  static datatype() {
    // Returns string type for a message object
    return 'zed_interfaces/Object';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '20668bd5819407b0c69c8d1de510a3a2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Object label
    string label
    
    # Object label ID
    int16 label_id
    
    # Object sub
    string sublabel
    
    # Object confidence level (1-99)
    float32 confidence
    
    # Object centroid position
    float32[3] position
    
    # Position covariance
    float32[6] position_covariance
    
    # Object velocity
    float32[3] velocity
    
    # Tracking available
    bool tracking_available
    
    # Tracking state
    # 0 -> OFF (object not valid)
    # 1 -> OK
    # 2 -> SEARCHING (occlusion occurred, trajectory is estimated)
    int8 tracking_state
    
    # Action state
    # 0 -> IDLE
    # 2 -> MOVING
    int8 action_state
    
    # 2D Bounding box projected to Camera image
    zed_interfaces/BoundingBox2Di bounding_box_2d
    
    # 3D Bounding box in world frame
    zed_interfaces/BoundingBox3D bounding_box_3d
    
    # 3D dimensions (width, height, lenght)
    float32[3] dimensions_3d
    
    # Is skeleton available?
    bool skeleton_available
    
    # 2D Bounding box projected to Camera image of the person head
    zed_interfaces/BoundingBox2Df head_bounding_box_2d
    
    # 3D Bounding box in world frame of the person head
    zed_interfaces/BoundingBox3D head_bounding_box_3d
    
    # 3D position of the centroid of the person head
    float32[3] head_position
    
    # 2D Person skeleton projected to Camera image
    zed_interfaces/Skeleton2D skeleton_2d
    
    # 3D Person skeleton in world frame
    zed_interfaces/Skeleton3D skeleton_3d
    
    ================================================================================
    MSG: zed_interfaces/BoundingBox2Di
    #      0 ------- 1
    #      |         |
    #      |         |
    #      |         |
    #      3 ------- 2
    zed_interfaces/Keypoint2Di[4] corners
    
    ================================================================================
    MSG: zed_interfaces/Keypoint2Di
    uint32[2] kp
    
    ================================================================================
    MSG: zed_interfaces/BoundingBox3D
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
    
    ================================================================================
    MSG: zed_interfaces/BoundingBox2Df
    #      0 ------- 1
    #      |         |
    #      |         |
    #      |         |
    #      3 ------- 2
    zed_interfaces/Keypoint2Df[4] corners
    
    ================================================================================
    MSG: zed_interfaces/Keypoint2Df
    float32[2] kp
    
    ================================================================================
    MSG: zed_interfaces/Skeleton2D
    # Skeleton joints indices
    #        16-14   15-17
    #             \ /
    #              0
    #              |
    #       2------1------5
    #       |    |   |    |
    #	    |    |   |    |
    #       3    |   |    6
    #       |    |   |    |
    #       |    |   |    |
    #       4    8   11   7
    #            |   |
    #            |   |
    #            |   |
    #            9   12
    #            |   |
    #            |   |
    #            |   |
    #           10   13
    zed_interfaces/Keypoint2Df[18] keypoints
    
    ================================================================================
    MSG: zed_interfaces/Skeleton3D
    # Skeleton joints indices
    #        16-14   15-17
    #             \ /
    #              0
    #              |
    #       2------1------5
    #       |    |   |    |
    #	    |    |   |    |
    #       3    |   |    6
    #       |    |   |    |
    #       |    |   |    |
    #       4    8   11   7
    #            |   |
    #            |   |
    #            |   |
    #            9   12
    #            |   |
    #            |   |
    #            |   |
    #           10   13
    zed_interfaces/Keypoint3D[18] keypoints
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Object(null);
    if (msg.label !== undefined) {
      resolved.label = msg.label;
    }
    else {
      resolved.label = ''
    }

    if (msg.label_id !== undefined) {
      resolved.label_id = msg.label_id;
    }
    else {
      resolved.label_id = 0
    }

    if (msg.sublabel !== undefined) {
      resolved.sublabel = msg.sublabel;
    }
    else {
      resolved.sublabel = ''
    }

    if (msg.confidence !== undefined) {
      resolved.confidence = msg.confidence;
    }
    else {
      resolved.confidence = 0.0
    }

    if (msg.position !== undefined) {
      resolved.position = msg.position;
    }
    else {
      resolved.position = new Array(3).fill(0)
    }

    if (msg.position_covariance !== undefined) {
      resolved.position_covariance = msg.position_covariance;
    }
    else {
      resolved.position_covariance = new Array(6).fill(0)
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = msg.velocity;
    }
    else {
      resolved.velocity = new Array(3).fill(0)
    }

    if (msg.tracking_available !== undefined) {
      resolved.tracking_available = msg.tracking_available;
    }
    else {
      resolved.tracking_available = false
    }

    if (msg.tracking_state !== undefined) {
      resolved.tracking_state = msg.tracking_state;
    }
    else {
      resolved.tracking_state = 0
    }

    if (msg.action_state !== undefined) {
      resolved.action_state = msg.action_state;
    }
    else {
      resolved.action_state = 0
    }

    if (msg.bounding_box_2d !== undefined) {
      resolved.bounding_box_2d = BoundingBox2Di.Resolve(msg.bounding_box_2d)
    }
    else {
      resolved.bounding_box_2d = new BoundingBox2Di()
    }

    if (msg.bounding_box_3d !== undefined) {
      resolved.bounding_box_3d = BoundingBox3D.Resolve(msg.bounding_box_3d)
    }
    else {
      resolved.bounding_box_3d = new BoundingBox3D()
    }

    if (msg.dimensions_3d !== undefined) {
      resolved.dimensions_3d = msg.dimensions_3d;
    }
    else {
      resolved.dimensions_3d = new Array(3).fill(0)
    }

    if (msg.skeleton_available !== undefined) {
      resolved.skeleton_available = msg.skeleton_available;
    }
    else {
      resolved.skeleton_available = false
    }

    if (msg.head_bounding_box_2d !== undefined) {
      resolved.head_bounding_box_2d = BoundingBox2Df.Resolve(msg.head_bounding_box_2d)
    }
    else {
      resolved.head_bounding_box_2d = new BoundingBox2Df()
    }

    if (msg.head_bounding_box_3d !== undefined) {
      resolved.head_bounding_box_3d = BoundingBox3D.Resolve(msg.head_bounding_box_3d)
    }
    else {
      resolved.head_bounding_box_3d = new BoundingBox3D()
    }

    if (msg.head_position !== undefined) {
      resolved.head_position = msg.head_position;
    }
    else {
      resolved.head_position = new Array(3).fill(0)
    }

    if (msg.skeleton_2d !== undefined) {
      resolved.skeleton_2d = Skeleton2D.Resolve(msg.skeleton_2d)
    }
    else {
      resolved.skeleton_2d = new Skeleton2D()
    }

    if (msg.skeleton_3d !== undefined) {
      resolved.skeleton_3d = Skeleton3D.Resolve(msg.skeleton_3d)
    }
    else {
      resolved.skeleton_3d = new Skeleton3D()
    }

    return resolved;
    }
};

module.exports = Object;
