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

class ESRValidReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.stamp1 = null;
      this.stamp2 = null;
      this.lr_sn = null;
      this.lr_range_rate = null;
      this.lr_range = null;
      this.lr_range_power = null;
      this.lr_range_angle = null;
      this.mr_sn = null;
      this.mr_range_rate = null;
      this.mr_range = null;
      this.mr_range_power = null;
      this.mr_range_angle = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('stamp1')) {
        this.stamp1 = initObj.stamp1
      }
      else {
        this.stamp1 = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('stamp2')) {
        this.stamp2 = initObj.stamp2
      }
      else {
        this.stamp2 = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('lr_sn')) {
        this.lr_sn = initObj.lr_sn
      }
      else {
        this.lr_sn = 0;
      }
      if (initObj.hasOwnProperty('lr_range_rate')) {
        this.lr_range_rate = initObj.lr_range_rate
      }
      else {
        this.lr_range_rate = 0.0;
      }
      if (initObj.hasOwnProperty('lr_range')) {
        this.lr_range = initObj.lr_range
      }
      else {
        this.lr_range = 0.0;
      }
      if (initObj.hasOwnProperty('lr_range_power')) {
        this.lr_range_power = initObj.lr_range_power
      }
      else {
        this.lr_range_power = 0.0;
      }
      if (initObj.hasOwnProperty('lr_range_angle')) {
        this.lr_range_angle = initObj.lr_range_angle
      }
      else {
        this.lr_range_angle = 0.0;
      }
      if (initObj.hasOwnProperty('mr_sn')) {
        this.mr_sn = initObj.mr_sn
      }
      else {
        this.mr_sn = 0;
      }
      if (initObj.hasOwnProperty('mr_range_rate')) {
        this.mr_range_rate = initObj.mr_range_rate
      }
      else {
        this.mr_range_rate = 0.0;
      }
      if (initObj.hasOwnProperty('mr_range')) {
        this.mr_range = initObj.mr_range
      }
      else {
        this.mr_range = 0.0;
      }
      if (initObj.hasOwnProperty('mr_range_power')) {
        this.mr_range_power = initObj.mr_range_power
      }
      else {
        this.mr_range_power = 0.0;
      }
      if (initObj.hasOwnProperty('mr_range_angle')) {
        this.mr_range_angle = initObj.mr_range_angle
      }
      else {
        this.mr_range_angle = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ESRValidReport
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [stamp1]
    bufferOffset = _serializer.time(obj.stamp1, buffer, bufferOffset);
    // Serialize message field [stamp2]
    bufferOffset = _serializer.time(obj.stamp2, buffer, bufferOffset);
    // Serialize message field [lr_sn]
    bufferOffset = _serializer.int32(obj.lr_sn, buffer, bufferOffset);
    // Serialize message field [lr_range_rate]
    bufferOffset = _serializer.float32(obj.lr_range_rate, buffer, bufferOffset);
    // Serialize message field [lr_range]
    bufferOffset = _serializer.float32(obj.lr_range, buffer, bufferOffset);
    // Serialize message field [lr_range_power]
    bufferOffset = _serializer.float32(obj.lr_range_power, buffer, bufferOffset);
    // Serialize message field [lr_range_angle]
    bufferOffset = _serializer.float32(obj.lr_range_angle, buffer, bufferOffset);
    // Serialize message field [mr_sn]
    bufferOffset = _serializer.int32(obj.mr_sn, buffer, bufferOffset);
    // Serialize message field [mr_range_rate]
    bufferOffset = _serializer.float32(obj.mr_range_rate, buffer, bufferOffset);
    // Serialize message field [mr_range]
    bufferOffset = _serializer.float32(obj.mr_range, buffer, bufferOffset);
    // Serialize message field [mr_range_power]
    bufferOffset = _serializer.float32(obj.mr_range_power, buffer, bufferOffset);
    // Serialize message field [mr_range_angle]
    bufferOffset = _serializer.float32(obj.mr_range_angle, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ESRValidReport
    let len;
    let data = new ESRValidReport(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [stamp1]
    data.stamp1 = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [stamp2]
    data.stamp2 = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [lr_sn]
    data.lr_sn = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [lr_range_rate]
    data.lr_range_rate = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lr_range]
    data.lr_range = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lr_range_power]
    data.lr_range_power = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lr_range_angle]
    data.lr_range_angle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [mr_sn]
    data.mr_sn = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [mr_range_rate]
    data.mr_range_rate = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [mr_range]
    data.mr_range = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [mr_range_power]
    data.mr_range_power = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [mr_range_angle]
    data.mr_range_angle = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 56;
  }

  static datatype() {
    // Returns string type for a message object
    return 'genesis_msgs/ESRValidReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5bc0fc869f175fe0d4567a3b81e3a5e1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    time stamp1					# timestamp for the Valid1 part; same as header.stamp
    time stamp2					# timestamp for the Valid2 part
    
    # Long Range (Valid1)
    int32 lr_sn                                     # ?, probably a boolean for if the sensor works?
    float32 lr_range_rate                           # m/s
    float32 lr_range                                # m
    float32 lr_range_power                          # dB
    float32 lr_range_angle                          # deg
    
    # Medium Range (Valid2)
    int32 mr_sn                                     # ?, probably a boolean for if the sensor works?
    float32 mr_range_rate                           # m/s
    float32 mr_range                                # m
    float32 mr_range_power                          # dB
    float32 mr_range_angle                          # deg
    
    
    
    
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
    const resolved = new ESRValidReport(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.stamp1 !== undefined) {
      resolved.stamp1 = msg.stamp1;
    }
    else {
      resolved.stamp1 = {secs: 0, nsecs: 0}
    }

    if (msg.stamp2 !== undefined) {
      resolved.stamp2 = msg.stamp2;
    }
    else {
      resolved.stamp2 = {secs: 0, nsecs: 0}
    }

    if (msg.lr_sn !== undefined) {
      resolved.lr_sn = msg.lr_sn;
    }
    else {
      resolved.lr_sn = 0
    }

    if (msg.lr_range_rate !== undefined) {
      resolved.lr_range_rate = msg.lr_range_rate;
    }
    else {
      resolved.lr_range_rate = 0.0
    }

    if (msg.lr_range !== undefined) {
      resolved.lr_range = msg.lr_range;
    }
    else {
      resolved.lr_range = 0.0
    }

    if (msg.lr_range_power !== undefined) {
      resolved.lr_range_power = msg.lr_range_power;
    }
    else {
      resolved.lr_range_power = 0.0
    }

    if (msg.lr_range_angle !== undefined) {
      resolved.lr_range_angle = msg.lr_range_angle;
    }
    else {
      resolved.lr_range_angle = 0.0
    }

    if (msg.mr_sn !== undefined) {
      resolved.mr_sn = msg.mr_sn;
    }
    else {
      resolved.mr_sn = 0
    }

    if (msg.mr_range_rate !== undefined) {
      resolved.mr_range_rate = msg.mr_range_rate;
    }
    else {
      resolved.mr_range_rate = 0.0
    }

    if (msg.mr_range !== undefined) {
      resolved.mr_range = msg.mr_range;
    }
    else {
      resolved.mr_range = 0.0
    }

    if (msg.mr_range_power !== undefined) {
      resolved.mr_range_power = msg.mr_range_power;
    }
    else {
      resolved.mr_range_power = 0.0
    }

    if (msg.mr_range_angle !== undefined) {
      resolved.mr_range_angle = msg.mr_range_angle;
    }
    else {
      resolved.mr_range_angle = 0.0
    }

    return resolved;
    }
};

module.exports = ESRValidReport;
