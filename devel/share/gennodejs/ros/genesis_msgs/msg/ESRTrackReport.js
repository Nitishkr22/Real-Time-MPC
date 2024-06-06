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

class ESRTrackReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.grouping_changed = null;
      this.oncoming = null;
      this.bridge_object = null;
      this.status = null;
      this.rolling_count = null;
      this.mode = null;
      this.range = null;
      this.range_rate = null;
      this.range_accel = null;
      this.width = null;
      this.angle = null;
      this.lat_rate = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('grouping_changed')) {
        this.grouping_changed = initObj.grouping_changed
      }
      else {
        this.grouping_changed = [];
      }
      if (initObj.hasOwnProperty('oncoming')) {
        this.oncoming = initObj.oncoming
      }
      else {
        this.oncoming = [];
      }
      if (initObj.hasOwnProperty('bridge_object')) {
        this.bridge_object = initObj.bridge_object
      }
      else {
        this.bridge_object = [];
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = [];
      }
      if (initObj.hasOwnProperty('rolling_count')) {
        this.rolling_count = initObj.rolling_count
      }
      else {
        this.rolling_count = [];
      }
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = [];
      }
      if (initObj.hasOwnProperty('range')) {
        this.range = initObj.range
      }
      else {
        this.range = [];
      }
      if (initObj.hasOwnProperty('range_rate')) {
        this.range_rate = initObj.range_rate
      }
      else {
        this.range_rate = [];
      }
      if (initObj.hasOwnProperty('range_accel')) {
        this.range_accel = initObj.range_accel
      }
      else {
        this.range_accel = [];
      }
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = [];
      }
      if (initObj.hasOwnProperty('angle')) {
        this.angle = initObj.angle
      }
      else {
        this.angle = [];
      }
      if (initObj.hasOwnProperty('lat_rate')) {
        this.lat_rate = initObj.lat_rate
      }
      else {
        this.lat_rate = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ESRTrackReport
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [grouping_changed]
    bufferOffset = _arraySerializer.int32(obj.grouping_changed, buffer, bufferOffset, null);
    // Serialize message field [oncoming]
    bufferOffset = _arraySerializer.int32(obj.oncoming, buffer, bufferOffset, null);
    // Serialize message field [bridge_object]
    bufferOffset = _arraySerializer.int32(obj.bridge_object, buffer, bufferOffset, null);
    // Serialize message field [status]
    bufferOffset = _arraySerializer.int32(obj.status, buffer, bufferOffset, null);
    // Serialize message field [rolling_count]
    bufferOffset = _arraySerializer.int32(obj.rolling_count, buffer, bufferOffset, null);
    // Serialize message field [mode]
    bufferOffset = _arraySerializer.int32(obj.mode, buffer, bufferOffset, null);
    // Serialize message field [range]
    bufferOffset = _arraySerializer.float32(obj.range, buffer, bufferOffset, null);
    // Serialize message field [range_rate]
    bufferOffset = _arraySerializer.float32(obj.range_rate, buffer, bufferOffset, null);
    // Serialize message field [range_accel]
    bufferOffset = _arraySerializer.float32(obj.range_accel, buffer, bufferOffset, null);
    // Serialize message field [width]
    bufferOffset = _arraySerializer.float32(obj.width, buffer, bufferOffset, null);
    // Serialize message field [angle]
    bufferOffset = _arraySerializer.float32(obj.angle, buffer, bufferOffset, null);
    // Serialize message field [lat_rate]
    bufferOffset = _arraySerializer.float32(obj.lat_rate, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ESRTrackReport
    let len;
    let data = new ESRTrackReport(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [grouping_changed]
    data.grouping_changed = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [oncoming]
    data.oncoming = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [bridge_object]
    data.bridge_object = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [status]
    data.status = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [rolling_count]
    data.rolling_count = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [mode]
    data.mode = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [range]
    data.range = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [range_rate]
    data.range_rate = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [range_accel]
    data.range_accel = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [width]
    data.width = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [angle]
    data.angle = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [lat_rate]
    data.lat_rate = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.grouping_changed.length;
    length += 4 * object.oncoming.length;
    length += 4 * object.bridge_object.length;
    length += 4 * object.status.length;
    length += 4 * object.rolling_count.length;
    length += 4 * object.mode.length;
    length += 4 * object.range.length;
    length += 4 * object.range_rate.length;
    length += 4 * object.range_accel.length;
    length += 4 * object.width.length;
    length += 4 * object.angle.length;
    length += 4 * object.lat_rate.length;
    return length + 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'genesis_msgs/ESRTrackReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fd50ae5f4f5173c868d1c9edbd613a3f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    # STATUS/MODE RELATED
    int32[] grouping_changed      # changed (1), unchanged(0)
    int32[] oncoming              # oncoming (1), not oncoming (0)
    int32[] bridge_object         # bridge (1), not bridge (0)
    int32[] status                # New_Coasted_Target(7), Invalid_Coasted_Target(6), Merged_Target(5), Coasted_Target(4), 
                                # Updated_Target(3), New_Updated_Target(2), New_Target(1), No_Target(0)
    int32[] rolling_count         # ?
    int32[] mode                  # both MR/LR (3), LR(2), MR(1), Neither (0)
    
    # MEASUREMENTS
    float32[] range               # m
    float32[] range_rate          # m/s
    float32[] range_accel         # m/s^2
    float32[] width               # m
    float32[] angle               # deg
    float32[] lat_rate            # ?
    
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
    const resolved = new ESRTrackReport(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.grouping_changed !== undefined) {
      resolved.grouping_changed = msg.grouping_changed;
    }
    else {
      resolved.grouping_changed = []
    }

    if (msg.oncoming !== undefined) {
      resolved.oncoming = msg.oncoming;
    }
    else {
      resolved.oncoming = []
    }

    if (msg.bridge_object !== undefined) {
      resolved.bridge_object = msg.bridge_object;
    }
    else {
      resolved.bridge_object = []
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = []
    }

    if (msg.rolling_count !== undefined) {
      resolved.rolling_count = msg.rolling_count;
    }
    else {
      resolved.rolling_count = []
    }

    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = []
    }

    if (msg.range !== undefined) {
      resolved.range = msg.range;
    }
    else {
      resolved.range = []
    }

    if (msg.range_rate !== undefined) {
      resolved.range_rate = msg.range_rate;
    }
    else {
      resolved.range_rate = []
    }

    if (msg.range_accel !== undefined) {
      resolved.range_accel = msg.range_accel;
    }
    else {
      resolved.range_accel = []
    }

    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = []
    }

    if (msg.angle !== undefined) {
      resolved.angle = msg.angle;
    }
    else {
      resolved.angle = []
    }

    if (msg.lat_rate !== undefined) {
      resolved.lat_rate = msg.lat_rate;
    }
    else {
      resolved.lat_rate = []
    }

    return resolved;
    }
};

module.exports = ESRTrackReport;
