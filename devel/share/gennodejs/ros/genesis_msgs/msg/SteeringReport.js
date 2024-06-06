// Auto-generated. Do not edit!

// (in-package genesis_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class SteeringReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.steering_wheel_angle = null;
      this.steering_wheel_speed = null;
      this.steering_stat = null;
      this.msg_count = null;
      this.checksum = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('steering_wheel_angle')) {
        this.steering_wheel_angle = initObj.steering_wheel_angle
      }
      else {
        this.steering_wheel_angle = 0.0;
      }
      if (initObj.hasOwnProperty('steering_wheel_speed')) {
        this.steering_wheel_speed = initObj.steering_wheel_speed
      }
      else {
        this.steering_wheel_speed = 0.0;
      }
      if (initObj.hasOwnProperty('steering_stat')) {
        this.steering_stat = initObj.steering_stat
      }
      else {
        this.steering_stat = 0;
      }
      if (initObj.hasOwnProperty('msg_count')) {
        this.msg_count = initObj.msg_count
      }
      else {
        this.msg_count = 0;
      }
      if (initObj.hasOwnProperty('checksum')) {
        this.checksum = initObj.checksum
      }
      else {
        this.checksum = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SteeringReport
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [steering_wheel_angle]
    bufferOffset = _serializer.float32(obj.steering_wheel_angle, buffer, bufferOffset);
    // Serialize message field [steering_wheel_speed]
    bufferOffset = _serializer.float32(obj.steering_wheel_speed, buffer, bufferOffset);
    // Serialize message field [steering_stat]
    bufferOffset = _serializer.uint8(obj.steering_stat, buffer, bufferOffset);
    // Serialize message field [msg_count]
    bufferOffset = _serializer.uint8(obj.msg_count, buffer, bufferOffset);
    // Serialize message field [checksum]
    bufferOffset = _serializer.uint8(obj.checksum, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SteeringReport
    let len;
    let data = new SteeringReport(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [steering_wheel_angle]
    data.steering_wheel_angle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [steering_wheel_speed]
    data.steering_wheel_speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [steering_stat]
    data.steering_stat = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [msg_count]
    data.msg_count = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [checksum]
    data.checksum = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 11;
  }

  static datatype() {
    // Returns string type for a message object
    return 'genesis_msgs/SteeringReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4859bfda0d84232363f2c485e301bd32';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    # Steering Wheel
    float32 steering_wheel_angle # deg
    float32 steering_wheel_speed # ??
    uint8 steering_stat
    uint8 msg_count
    uint8 checksum
    
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
    const resolved = new SteeringReport(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.steering_wheel_angle !== undefined) {
      resolved.steering_wheel_angle = msg.steering_wheel_angle;
    }
    else {
      resolved.steering_wheel_angle = 0.0
    }

    if (msg.steering_wheel_speed !== undefined) {
      resolved.steering_wheel_speed = msg.steering_wheel_speed;
    }
    else {
      resolved.steering_wheel_speed = 0.0
    }

    if (msg.steering_stat !== undefined) {
      resolved.steering_stat = msg.steering_stat;
    }
    else {
      resolved.steering_stat = 0
    }

    if (msg.msg_count !== undefined) {
      resolved.msg_count = msg.msg_count;
    }
    else {
      resolved.msg_count = 0
    }

    if (msg.checksum !== undefined) {
      resolved.checksum = msg.checksum;
    }
    else {
      resolved.checksum = 0
    }

    return resolved;
    }
};

module.exports = SteeringReport;
