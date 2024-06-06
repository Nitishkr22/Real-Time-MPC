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

class WheelSpeedReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.wheel_speed_fl = null;
      this.wheel_speed_fr = null;
      this.wheel_speed_rl = null;
      this.wheel_speed_rr = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('wheel_speed_fl')) {
        this.wheel_speed_fl = initObj.wheel_speed_fl
      }
      else {
        this.wheel_speed_fl = 0.0;
      }
      if (initObj.hasOwnProperty('wheel_speed_fr')) {
        this.wheel_speed_fr = initObj.wheel_speed_fr
      }
      else {
        this.wheel_speed_fr = 0.0;
      }
      if (initObj.hasOwnProperty('wheel_speed_rl')) {
        this.wheel_speed_rl = initObj.wheel_speed_rl
      }
      else {
        this.wheel_speed_rl = 0.0;
      }
      if (initObj.hasOwnProperty('wheel_speed_rr')) {
        this.wheel_speed_rr = initObj.wheel_speed_rr
      }
      else {
        this.wheel_speed_rr = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WheelSpeedReport
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [wheel_speed_fl]
    bufferOffset = _serializer.float32(obj.wheel_speed_fl, buffer, bufferOffset);
    // Serialize message field [wheel_speed_fr]
    bufferOffset = _serializer.float32(obj.wheel_speed_fr, buffer, bufferOffset);
    // Serialize message field [wheel_speed_rl]
    bufferOffset = _serializer.float32(obj.wheel_speed_rl, buffer, bufferOffset);
    // Serialize message field [wheel_speed_rr]
    bufferOffset = _serializer.float32(obj.wheel_speed_rr, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WheelSpeedReport
    let len;
    let data = new WheelSpeedReport(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [wheel_speed_fl]
    data.wheel_speed_fl = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [wheel_speed_fr]
    data.wheel_speed_fr = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [wheel_speed_rl]
    data.wheel_speed_rl = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [wheel_speed_rr]
    data.wheel_speed_rr = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'genesis_msgs/WheelSpeedReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a53e80a356e4025a8aac3ddad6c964fd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    # Wheel Speeds
    float32 wheel_speed_fl # kph
    float32 wheel_speed_fr # kph
    float32 wheel_speed_rl # kph
    float32 wheel_speed_rr # kph
    
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
    const resolved = new WheelSpeedReport(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.wheel_speed_fl !== undefined) {
      resolved.wheel_speed_fl = msg.wheel_speed_fl;
    }
    else {
      resolved.wheel_speed_fl = 0.0
    }

    if (msg.wheel_speed_fr !== undefined) {
      resolved.wheel_speed_fr = msg.wheel_speed_fr;
    }
    else {
      resolved.wheel_speed_fr = 0.0
    }

    if (msg.wheel_speed_rl !== undefined) {
      resolved.wheel_speed_rl = msg.wheel_speed_rl;
    }
    else {
      resolved.wheel_speed_rl = 0.0
    }

    if (msg.wheel_speed_rr !== undefined) {
      resolved.wheel_speed_rr = msg.wheel_speed_rr;
    }
    else {
      resolved.wheel_speed_rr = 0.0
    }

    return resolved;
    }
};

module.exports = WheelSpeedReport;
