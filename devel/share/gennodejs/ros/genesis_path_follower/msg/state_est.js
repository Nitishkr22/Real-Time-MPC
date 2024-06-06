// Auto-generated. Do not edit!

// (in-package genesis_path_follower.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class state_est {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.lat = null;
      this.lon = null;
      this.x = null;
      this.y = null;
      this.psi = null;
      this.v = null;
      this.v_long = null;
      this.v_lat = null;
      this.yaw_rate = null;
      this.a_long = null;
      this.a_lat = null;
      this.df = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('lat')) {
        this.lat = initObj.lat
      }
      else {
        this.lat = 0.0;
      }
      if (initObj.hasOwnProperty('lon')) {
        this.lon = initObj.lon
      }
      else {
        this.lon = 0.0;
      }
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('psi')) {
        this.psi = initObj.psi
      }
      else {
        this.psi = 0.0;
      }
      if (initObj.hasOwnProperty('v')) {
        this.v = initObj.v
      }
      else {
        this.v = 0.0;
      }
      if (initObj.hasOwnProperty('v_long')) {
        this.v_long = initObj.v_long
      }
      else {
        this.v_long = 0.0;
      }
      if (initObj.hasOwnProperty('v_lat')) {
        this.v_lat = initObj.v_lat
      }
      else {
        this.v_lat = 0.0;
      }
      if (initObj.hasOwnProperty('yaw_rate')) {
        this.yaw_rate = initObj.yaw_rate
      }
      else {
        this.yaw_rate = 0.0;
      }
      if (initObj.hasOwnProperty('a_long')) {
        this.a_long = initObj.a_long
      }
      else {
        this.a_long = 0.0;
      }
      if (initObj.hasOwnProperty('a_lat')) {
        this.a_lat = initObj.a_lat
      }
      else {
        this.a_lat = 0.0;
      }
      if (initObj.hasOwnProperty('df')) {
        this.df = initObj.df
      }
      else {
        this.df = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type state_est
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [lat]
    bufferOffset = _serializer.float64(obj.lat, buffer, bufferOffset);
    // Serialize message field [lon]
    bufferOffset = _serializer.float64(obj.lon, buffer, bufferOffset);
    // Serialize message field [x]
    bufferOffset = _serializer.float64(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float64(obj.y, buffer, bufferOffset);
    // Serialize message field [psi]
    bufferOffset = _serializer.float64(obj.psi, buffer, bufferOffset);
    // Serialize message field [v]
    bufferOffset = _serializer.float64(obj.v, buffer, bufferOffset);
    // Serialize message field [v_long]
    bufferOffset = _serializer.float64(obj.v_long, buffer, bufferOffset);
    // Serialize message field [v_lat]
    bufferOffset = _serializer.float64(obj.v_lat, buffer, bufferOffset);
    // Serialize message field [yaw_rate]
    bufferOffset = _serializer.float64(obj.yaw_rate, buffer, bufferOffset);
    // Serialize message field [a_long]
    bufferOffset = _serializer.float64(obj.a_long, buffer, bufferOffset);
    // Serialize message field [a_lat]
    bufferOffset = _serializer.float64(obj.a_lat, buffer, bufferOffset);
    // Serialize message field [df]
    bufferOffset = _serializer.float64(obj.df, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type state_est
    let len;
    let data = new state_est(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [lat]
    data.lat = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lon]
    data.lon = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [x]
    data.x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [psi]
    data.psi = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [v]
    data.v = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [v_long]
    data.v_long = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [v_lat]
    data.v_lat = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw_rate]
    data.yaw_rate = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [a_long]
    data.a_long = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [a_lat]
    data.a_lat = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [df]
    data.df = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 96;
  }

  static datatype() {
    // Returns string type for a message object
    return 'genesis_path_follower/state_est';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9c920bd35ee9bfa5fb5330660c621c0a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    float64 lat      # latitude (deg)
    float64 lon      # longitude (deg)
    
    float64 x        # x coordinate (m)
    float64 y        # y coordinate (m)
    float64 psi      # yaw angle (rad)
    float64 v        # speed (m/s)
    
    float64 v_long   # longitidunal velocity (m/s)
    float64 v_lat    # lateral velocity (m/s)
    float64 yaw_rate # w_z, yaw rate (rad/s)
    
    float64 a_long   # longitudinal acceleration (m/s^2)
    float64 a_lat    # lateral acceleration (m/s^2)
    float64 df       # front steering angle (rad)
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new state_est(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.lat !== undefined) {
      resolved.lat = msg.lat;
    }
    else {
      resolved.lat = 0.0
    }

    if (msg.lon !== undefined) {
      resolved.lon = msg.lon;
    }
    else {
      resolved.lon = 0.0
    }

    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.psi !== undefined) {
      resolved.psi = msg.psi;
    }
    else {
      resolved.psi = 0.0
    }

    if (msg.v !== undefined) {
      resolved.v = msg.v;
    }
    else {
      resolved.v = 0.0
    }

    if (msg.v_long !== undefined) {
      resolved.v_long = msg.v_long;
    }
    else {
      resolved.v_long = 0.0
    }

    if (msg.v_lat !== undefined) {
      resolved.v_lat = msg.v_lat;
    }
    else {
      resolved.v_lat = 0.0
    }

    if (msg.yaw_rate !== undefined) {
      resolved.yaw_rate = msg.yaw_rate;
    }
    else {
      resolved.yaw_rate = 0.0
    }

    if (msg.a_long !== undefined) {
      resolved.a_long = msg.a_long;
    }
    else {
      resolved.a_long = 0.0
    }

    if (msg.a_lat !== undefined) {
      resolved.a_lat = msg.a_lat;
    }
    else {
      resolved.a_lat = 0.0
    }

    if (msg.df !== undefined) {
      resolved.df = msg.df;
    }
    else {
      resolved.df = 0.0
    }

    return resolved;
    }
};

module.exports = state_est;
