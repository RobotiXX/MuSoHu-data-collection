// Auto-generated. Do not edit!

// (in-package zed_interfaces.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');
let shape_msgs = _finder('shape_msgs');

//-----------------------------------------------------------

class PlaneStamped {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.mesh = null;
      this.coefficients = null;
      this.normal = null;
      this.center = null;
      this.pose = null;
      this.extents = null;
      this.bounds = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('mesh')) {
        this.mesh = initObj.mesh
      }
      else {
        this.mesh = new shape_msgs.msg.Mesh();
      }
      if (initObj.hasOwnProperty('coefficients')) {
        this.coefficients = initObj.coefficients
      }
      else {
        this.coefficients = new shape_msgs.msg.Plane();
      }
      if (initObj.hasOwnProperty('normal')) {
        this.normal = initObj.normal
      }
      else {
        this.normal = new geometry_msgs.msg.Point32();
      }
      if (initObj.hasOwnProperty('center')) {
        this.center = initObj.center
      }
      else {
        this.center = new geometry_msgs.msg.Point32();
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Transform();
      }
      if (initObj.hasOwnProperty('extents')) {
        this.extents = initObj.extents
      }
      else {
        this.extents = new Array(2).fill(0);
      }
      if (initObj.hasOwnProperty('bounds')) {
        this.bounds = initObj.bounds
      }
      else {
        this.bounds = new geometry_msgs.msg.Polygon();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PlaneStamped
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [mesh]
    bufferOffset = shape_msgs.msg.Mesh.serialize(obj.mesh, buffer, bufferOffset);
    // Serialize message field [coefficients]
    bufferOffset = shape_msgs.msg.Plane.serialize(obj.coefficients, buffer, bufferOffset);
    // Serialize message field [normal]
    bufferOffset = geometry_msgs.msg.Point32.serialize(obj.normal, buffer, bufferOffset);
    // Serialize message field [center]
    bufferOffset = geometry_msgs.msg.Point32.serialize(obj.center, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Transform.serialize(obj.pose, buffer, bufferOffset);
    // Check that the constant length array field [extents] has the right length
    if (obj.extents.length !== 2) {
      throw new Error('Unable to serialize array field extents - length must be 2')
    }
    // Serialize message field [extents]
    bufferOffset = _arraySerializer.float32(obj.extents, buffer, bufferOffset, 2);
    // Serialize message field [bounds]
    bufferOffset = geometry_msgs.msg.Polygon.serialize(obj.bounds, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlaneStamped
    let len;
    let data = new PlaneStamped(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [mesh]
    data.mesh = shape_msgs.msg.Mesh.deserialize(buffer, bufferOffset);
    // Deserialize message field [coefficients]
    data.coefficients = shape_msgs.msg.Plane.deserialize(buffer, bufferOffset);
    // Deserialize message field [normal]
    data.normal = geometry_msgs.msg.Point32.deserialize(buffer, bufferOffset);
    // Deserialize message field [center]
    data.center = geometry_msgs.msg.Point32.deserialize(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Transform.deserialize(buffer, bufferOffset);
    // Deserialize message field [extents]
    data.extents = _arrayDeserializer.float32(buffer, bufferOffset, 2)
    // Deserialize message field [bounds]
    data.bounds = geometry_msgs.msg.Polygon.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += shape_msgs.msg.Mesh.getMessageSize(object.mesh);
    length += geometry_msgs.msg.Polygon.getMessageSize(object.bounds);
    return length + 120;
  }

  static datatype() {
    // Returns string type for a message object
    return 'zed_interfaces/PlaneStamped';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1ae4cda68097919aea83add5dc8f86c1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Standard Header
    std_msgs/Header header
    
    # Mesh of the place
    shape_msgs/Mesh mesh
    
    # Representation of a plane, using the plane equation ax + by + cz + d = 0
    shape_msgs/Plane coefficients
    
    # Normal vector
    geometry_msgs/Point32 normal
    
    # Center point 
    geometry_msgs/Point32 center
    
    # Plane pose relative to the global reference frame
    geometry_msgs/Transform pose
    
    # Width and height of the bounding rectangle around the plane contours
    float32[2] extents
    
    # The polygon bounds of the plane
    geometry_msgs/Polygon bounds
    
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: shape_msgs/Mesh
    # Definition of a mesh
    
    # list of triangles; the index values refer to positions in vertices[]
    MeshTriangle[] triangles
    
    # the actual vertices that make up the mesh
    geometry_msgs/Point[] vertices
    
    ================================================================================
    MSG: shape_msgs/MeshTriangle
    # Definition of a triangle's vertices
    uint32[3] vertex_indices
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: shape_msgs/Plane
    # Representation of a plane, using the plane equation ax + by + cz + d = 0
    
    # a := coef[0]
    # b := coef[1]
    # c := coef[2]
    # d := coef[3]
    
    float64[4] coef
    
    ================================================================================
    MSG: geometry_msgs/Point32
    # This contains the position of a point in free space(with 32 bits of precision).
    # It is recommeded to use Point wherever possible instead of Point32.  
    # 
    # This recommendation is to promote interoperability.  
    #
    # This message is designed to take up less space when sending
    # lots of points at once, as in the case of a PointCloud.  
    
    float32 x
    float32 y
    float32 z
    ================================================================================
    MSG: geometry_msgs/Transform
    # This represents the transform between two coordinate frames in free space.
    
    Vector3 translation
    Quaternion rotation
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: geometry_msgs/Polygon
    #A specification of a polygon where the first and last points are assumed to be connected
    Point32[] points
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PlaneStamped(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.mesh !== undefined) {
      resolved.mesh = shape_msgs.msg.Mesh.Resolve(msg.mesh)
    }
    else {
      resolved.mesh = new shape_msgs.msg.Mesh()
    }

    if (msg.coefficients !== undefined) {
      resolved.coefficients = shape_msgs.msg.Plane.Resolve(msg.coefficients)
    }
    else {
      resolved.coefficients = new shape_msgs.msg.Plane()
    }

    if (msg.normal !== undefined) {
      resolved.normal = geometry_msgs.msg.Point32.Resolve(msg.normal)
    }
    else {
      resolved.normal = new geometry_msgs.msg.Point32()
    }

    if (msg.center !== undefined) {
      resolved.center = geometry_msgs.msg.Point32.Resolve(msg.center)
    }
    else {
      resolved.center = new geometry_msgs.msg.Point32()
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Transform.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Transform()
    }

    if (msg.extents !== undefined) {
      resolved.extents = msg.extents;
    }
    else {
      resolved.extents = new Array(2).fill(0)
    }

    if (msg.bounds !== undefined) {
      resolved.bounds = geometry_msgs.msg.Polygon.Resolve(msg.bounds)
    }
    else {
      resolved.bounds = new geometry_msgs.msg.Polygon()
    }

    return resolved;
    }
};

module.exports = PlaneStamped;
