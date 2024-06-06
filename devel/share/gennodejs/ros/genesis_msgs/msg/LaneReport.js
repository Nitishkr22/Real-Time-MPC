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

class LaneReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.stampA = null;
      this.stampB = null;
      this.a0 = null;
      this.a1 = null;
      this.a2 = null;
      this.a3 = null;
      this.lane_mark_type = null;
      this.lane_mark_quality = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('stampA')) {
        this.stampA = initObj.stampA
      }
      else {
        this.stampA = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('stampB')) {
        this.stampB = initObj.stampB
      }
      else {
        this.stampB = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('a0')) {
        this.a0 = initObj.a0
      }
      else {
        this.a0 = 0.0;
      }
      if (initObj.hasOwnProperty('a1')) {
        this.a1 = initObj.a1
      }
      else {
        this.a1 = 0.0;
      }
      if (initObj.hasOwnProperty('a2')) {
        this.a2 = initObj.a2
      }
      else {
        this.a2 = 0.0;
      }
      if (initObj.hasOwnProperty('a3')) {
        this.a3 = initObj.a3
      }
      else {
        this.a3 = 0.0;
      }
      if (initObj.hasOwnProperty('lane_mark_type')) {
        this.lane_mark_type = initObj.lane_mark_type
      }
      else {
        this.lane_mark_type = 0;
      }
      if (initObj.hasOwnProperty('lane_mark_quality')) {
        this.lane_mark_quality = initObj.lane_mark_quality
      }
      else {
        this.lane_mark_quality = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LaneReport
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [stampA]
    bufferOffset = _serializer.time(obj.stampA, buffer, bufferOffset);
    // Serialize message field [stampB]
    bufferOffset = _serializer.time(obj.stampB, buffer, bufferOffset);
    // Serialize message field [a0]
    bufferOffset = _serializer.float32(obj.a0, buffer, bufferOffset);
    // Serialize message field [a1]
    bufferOffset = _serializer.float32(obj.a1, buffer, bufferOffset);
    // Serialize message field [a2]
    bufferOffset = _serializer.float32(obj.a2, buffer, bufferOffset);
    // Serialize message field [a3]
    bufferOffset = _serializer.float32(obj.a3, buffer, bufferOffset);
    // Serialize message field [lane_mark_type]
    bufferOffset = _serializer.int32(obj.lane_mark_type, buffer, bufferOffset);
    // Serialize message field [lane_mark_quality]
    bufferOffset = _serializer.int32(obj.lane_mark_quality, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaneReport
    let len;
    let data = new LaneReport(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [stampA]
    data.stampA = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [stampB]
    data.stampB = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [a0]
    data.a0 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [a1]
    data.a1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [a2]
    data.a2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [a3]
    data.a3 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lane_mark_type]
    data.lane_mark_type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [lane_mark_quality]
    data.lane_mark_quality = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'genesis_msgs/LaneReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '38b4f1a74aa95aed2e054915f544383c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    time stampA					# timestamp for the "A"-part of the message; same as header.stamp
    time stampB					# timestamp for the "B"-part of the message
    
    # Lane polynomial in vehicle frame is y = a0 + a1 x + a2 x^2 + a3 x^3
    float32 a0
    float32 a1
    float32 a2
    float32 a3
    
    # Mark types: 6 "Invalid" 5 "Botts'Dots" 4 "DoubleLaneMark" 3 "RoadEdge" 2 "Undecided" 1 "Solid" 0 "Dashed" ;
    int32 lane_mark_type
    # Quality types: 0, 1 "Low Quality" 2, 3 "High Quality"
    int32 lane_mark_quality
    
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
    const resolved = new LaneReport(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.stampA !== undefined) {
      resolved.stampA = msg.stampA;
    }
    else {
      resolved.stampA = {secs: 0, nsecs: 0}
    }

    if (msg.stampB !== undefined) {
      resolved.stampB = msg.stampB;
    }
    else {
      resolved.stampB = {secs: 0, nsecs: 0}
    }

    if (msg.a0 !== undefined) {
      resolved.a0 = msg.a0;
    }
    else {
      resolved.a0 = 0.0
    }

    if (msg.a1 !== undefined) {
      resolved.a1 = msg.a1;
    }
    else {
      resolved.a1 = 0.0
    }

    if (msg.a2 !== undefined) {
      resolved.a2 = msg.a2;
    }
    else {
      resolved.a2 = 0.0
    }

    if (msg.a3 !== undefined) {
      resolved.a3 = msg.a3;
    }
    else {
      resolved.a3 = 0.0
    }

    if (msg.lane_mark_type !== undefined) {
      resolved.lane_mark_type = msg.lane_mark_type;
    }
    else {
      resolved.lane_mark_type = 0
    }

    if (msg.lane_mark_quality !== undefined) {
      resolved.lane_mark_quality = msg.lane_mark_quality;
    }
    else {
      resolved.lane_mark_quality = 0
    }

    return resolved;
    }
};

module.exports = LaneReport;
