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

class VehicleImuReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.yaw_rate = null;
      this.lat_accel = null;
      this.long_accel = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('yaw_rate')) {
        this.yaw_rate = initObj.yaw_rate
      }
      else {
        this.yaw_rate = 0.0;
      }
      if (initObj.hasOwnProperty('lat_accel')) {
        this.lat_accel = initObj.lat_accel
      }
      else {
        this.lat_accel = 0.0;
      }
      if (initObj.hasOwnProperty('long_accel')) {
        this.long_accel = initObj.long_accel
      }
      else {
        this.long_accel = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehicleImuReport
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [yaw_rate]
    bufferOffset = _serializer.float32(obj.yaw_rate, buffer, bufferOffset);
    // Serialize message field [lat_accel]
    bufferOffset = _serializer.float32(obj.lat_accel, buffer, bufferOffset);
    // Serialize message field [long_accel]
    bufferOffset = _serializer.float32(obj.long_accel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicleImuReport
    let len;
    let data = new VehicleImuReport(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [yaw_rate]
    data.yaw_rate = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lat_accel]
    data.lat_accel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [long_accel]
    data.long_accel = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'genesis_msgs/VehicleImuReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6e80ee09b6b860b9df67618823009a87';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    float32 yaw_rate
    float32 lat_accel
    float32 long_accel
    
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
    const resolved = new VehicleImuReport(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.yaw_rate !== undefined) {
      resolved.yaw_rate = msg.yaw_rate;
    }
    else {
      resolved.yaw_rate = 0.0
    }

    if (msg.lat_accel !== undefined) {
      resolved.lat_accel = msg.lat_accel;
    }
    else {
      resolved.lat_accel = 0.0
    }

    if (msg.long_accel !== undefined) {
      resolved.long_accel = msg.long_accel;
    }
    else {
      resolved.long_accel = 0.0
    }

    return resolved;
    }
};

module.exports = VehicleImuReport;
