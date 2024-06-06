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

class MandoObjectReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.index = null;
      this.alive_count_a = null;
      this.object_identifier = null;
      this.object_age = null;
      this.object_valid = null;
      this.object_mode = null;
      this.object_lane = null;
      this.angle_rate = null;
      this.angle_left = null;
      this.angle_right = null;
      this.cipv = null;
      this.brake_lights = null;
      this.blinker_info = null;
      this.alive_count_b = null;
      this.range = null;
      this.range_rate = null;
      this.motion_status = null;
      this.accel_x = null;
      this.position_y = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('index')) {
        this.index = initObj.index
      }
      else {
        this.index = [];
      }
      if (initObj.hasOwnProperty('alive_count_a')) {
        this.alive_count_a = initObj.alive_count_a
      }
      else {
        this.alive_count_a = [];
      }
      if (initObj.hasOwnProperty('object_identifier')) {
        this.object_identifier = initObj.object_identifier
      }
      else {
        this.object_identifier = [];
      }
      if (initObj.hasOwnProperty('object_age')) {
        this.object_age = initObj.object_age
      }
      else {
        this.object_age = [];
      }
      if (initObj.hasOwnProperty('object_valid')) {
        this.object_valid = initObj.object_valid
      }
      else {
        this.object_valid = [];
      }
      if (initObj.hasOwnProperty('object_mode')) {
        this.object_mode = initObj.object_mode
      }
      else {
        this.object_mode = [];
      }
      if (initObj.hasOwnProperty('object_lane')) {
        this.object_lane = initObj.object_lane
      }
      else {
        this.object_lane = [];
      }
      if (initObj.hasOwnProperty('angle_rate')) {
        this.angle_rate = initObj.angle_rate
      }
      else {
        this.angle_rate = [];
      }
      if (initObj.hasOwnProperty('angle_left')) {
        this.angle_left = initObj.angle_left
      }
      else {
        this.angle_left = [];
      }
      if (initObj.hasOwnProperty('angle_right')) {
        this.angle_right = initObj.angle_right
      }
      else {
        this.angle_right = [];
      }
      if (initObj.hasOwnProperty('cipv')) {
        this.cipv = initObj.cipv
      }
      else {
        this.cipv = [];
      }
      if (initObj.hasOwnProperty('brake_lights')) {
        this.brake_lights = initObj.brake_lights
      }
      else {
        this.brake_lights = [];
      }
      if (initObj.hasOwnProperty('blinker_info')) {
        this.blinker_info = initObj.blinker_info
      }
      else {
        this.blinker_info = [];
      }
      if (initObj.hasOwnProperty('alive_count_b')) {
        this.alive_count_b = initObj.alive_count_b
      }
      else {
        this.alive_count_b = [];
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
      if (initObj.hasOwnProperty('motion_status')) {
        this.motion_status = initObj.motion_status
      }
      else {
        this.motion_status = [];
      }
      if (initObj.hasOwnProperty('accel_x')) {
        this.accel_x = initObj.accel_x
      }
      else {
        this.accel_x = [];
      }
      if (initObj.hasOwnProperty('position_y')) {
        this.position_y = initObj.position_y
      }
      else {
        this.position_y = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MandoObjectReport
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [index]
    bufferOffset = _arraySerializer.int32(obj.index, buffer, bufferOffset, null);
    // Serialize message field [alive_count_a]
    bufferOffset = _arraySerializer.int32(obj.alive_count_a, buffer, bufferOffset, null);
    // Serialize message field [object_identifier]
    bufferOffset = _arraySerializer.int32(obj.object_identifier, buffer, bufferOffset, null);
    // Serialize message field [object_age]
    bufferOffset = _arraySerializer.int32(obj.object_age, buffer, bufferOffset, null);
    // Serialize message field [object_valid]
    bufferOffset = _arraySerializer.int32(obj.object_valid, buffer, bufferOffset, null);
    // Serialize message field [object_mode]
    bufferOffset = _arraySerializer.int32(obj.object_mode, buffer, bufferOffset, null);
    // Serialize message field [object_lane]
    bufferOffset = _arraySerializer.int32(obj.object_lane, buffer, bufferOffset, null);
    // Serialize message field [angle_rate]
    bufferOffset = _arraySerializer.float32(obj.angle_rate, buffer, bufferOffset, null);
    // Serialize message field [angle_left]
    bufferOffset = _arraySerializer.float32(obj.angle_left, buffer, bufferOffset, null);
    // Serialize message field [angle_right]
    bufferOffset = _arraySerializer.float32(obj.angle_right, buffer, bufferOffset, null);
    // Serialize message field [cipv]
    bufferOffset = _arraySerializer.int32(obj.cipv, buffer, bufferOffset, null);
    // Serialize message field [brake_lights]
    bufferOffset = _arraySerializer.int32(obj.brake_lights, buffer, bufferOffset, null);
    // Serialize message field [blinker_info]
    bufferOffset = _arraySerializer.int32(obj.blinker_info, buffer, bufferOffset, null);
    // Serialize message field [alive_count_b]
    bufferOffset = _arraySerializer.int32(obj.alive_count_b, buffer, bufferOffset, null);
    // Serialize message field [range]
    bufferOffset = _arraySerializer.float32(obj.range, buffer, bufferOffset, null);
    // Serialize message field [range_rate]
    bufferOffset = _arraySerializer.float32(obj.range_rate, buffer, bufferOffset, null);
    // Serialize message field [motion_status]
    bufferOffset = _arraySerializer.int32(obj.motion_status, buffer, bufferOffset, null);
    // Serialize message field [accel_x]
    bufferOffset = _arraySerializer.float32(obj.accel_x, buffer, bufferOffset, null);
    // Serialize message field [position_y]
    bufferOffset = _arraySerializer.float32(obj.position_y, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MandoObjectReport
    let len;
    let data = new MandoObjectReport(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [index]
    data.index = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [alive_count_a]
    data.alive_count_a = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [object_identifier]
    data.object_identifier = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [object_age]
    data.object_age = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [object_valid]
    data.object_valid = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [object_mode]
    data.object_mode = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [object_lane]
    data.object_lane = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [angle_rate]
    data.angle_rate = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [angle_left]
    data.angle_left = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [angle_right]
    data.angle_right = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [cipv]
    data.cipv = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [brake_lights]
    data.brake_lights = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [blinker_info]
    data.blinker_info = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [alive_count_b]
    data.alive_count_b = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [range]
    data.range = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [range_rate]
    data.range_rate = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [motion_status]
    data.motion_status = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [accel_x]
    data.accel_x = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [position_y]
    data.position_y = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.index.length;
    length += 4 * object.alive_count_a.length;
    length += 4 * object.object_identifier.length;
    length += 4 * object.object_age.length;
    length += 4 * object.object_valid.length;
    length += 4 * object.object_mode.length;
    length += 4 * object.object_lane.length;
    length += 4 * object.angle_rate.length;
    length += 4 * object.angle_left.length;
    length += 4 * object.angle_right.length;
    length += 4 * object.cipv.length;
    length += 4 * object.brake_lights.length;
    length += 4 * object.blinker_info.length;
    length += 4 * object.alive_count_b.length;
    length += 4 * object.range.length;
    length += 4 * object.range_rate.length;
    length += 4 * object.motion_status.length;
    length += 4 * object.accel_x.length;
    length += 4 * object.position_y.length;
    return length + 76;
  }

  static datatype() {
    // Returns string type for a message object
    return 'genesis_msgs/MandoObjectReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9f997b467cbc16144eb262d8e6a2bc7c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    int32[] index
    
    int32[] alive_count_a 
    int32[] object_identifier
    int32[] object_age
    int32[] object_valid			# valid(1) or invalid (0)
    int32[] object_mode			# cutout (2), cutin (1), neither(0)
    int32[] object_lane			# same lane (0), next left (1), far left (2), near right (3), far right (4), unknown (5)
    float32[] angle_rate			# deg
    float32[] angle_left			# deg
    float32[] angle_right			# deg
    int32[] cipv				# cipv = closest in path vehicle(1) or not (0)
    int32[] brake_lights			# on (1), off or N/A (0)
    int32[] blinker_info			# both(4), right(3), left(2), off(0)
    
    int32[] alive_count_b
    float32[] range				# m
    float32[] range_rate			# m/s
    int32[] motion_status			# stationary (4), stopped(3), oncoming (2), preceding(1), undecided(0)
    float32[] accel_x			# m/s^2
    float32[] position_y			# m
    
    
    
    
    
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
    const resolved = new MandoObjectReport(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.index !== undefined) {
      resolved.index = msg.index;
    }
    else {
      resolved.index = []
    }

    if (msg.alive_count_a !== undefined) {
      resolved.alive_count_a = msg.alive_count_a;
    }
    else {
      resolved.alive_count_a = []
    }

    if (msg.object_identifier !== undefined) {
      resolved.object_identifier = msg.object_identifier;
    }
    else {
      resolved.object_identifier = []
    }

    if (msg.object_age !== undefined) {
      resolved.object_age = msg.object_age;
    }
    else {
      resolved.object_age = []
    }

    if (msg.object_valid !== undefined) {
      resolved.object_valid = msg.object_valid;
    }
    else {
      resolved.object_valid = []
    }

    if (msg.object_mode !== undefined) {
      resolved.object_mode = msg.object_mode;
    }
    else {
      resolved.object_mode = []
    }

    if (msg.object_lane !== undefined) {
      resolved.object_lane = msg.object_lane;
    }
    else {
      resolved.object_lane = []
    }

    if (msg.angle_rate !== undefined) {
      resolved.angle_rate = msg.angle_rate;
    }
    else {
      resolved.angle_rate = []
    }

    if (msg.angle_left !== undefined) {
      resolved.angle_left = msg.angle_left;
    }
    else {
      resolved.angle_left = []
    }

    if (msg.angle_right !== undefined) {
      resolved.angle_right = msg.angle_right;
    }
    else {
      resolved.angle_right = []
    }

    if (msg.cipv !== undefined) {
      resolved.cipv = msg.cipv;
    }
    else {
      resolved.cipv = []
    }

    if (msg.brake_lights !== undefined) {
      resolved.brake_lights = msg.brake_lights;
    }
    else {
      resolved.brake_lights = []
    }

    if (msg.blinker_info !== undefined) {
      resolved.blinker_info = msg.blinker_info;
    }
    else {
      resolved.blinker_info = []
    }

    if (msg.alive_count_b !== undefined) {
      resolved.alive_count_b = msg.alive_count_b;
    }
    else {
      resolved.alive_count_b = []
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

    if (msg.motion_status !== undefined) {
      resolved.motion_status = msg.motion_status;
    }
    else {
      resolved.motion_status = []
    }

    if (msg.accel_x !== undefined) {
      resolved.accel_x = msg.accel_x;
    }
    else {
      resolved.accel_x = []
    }

    if (msg.position_y !== undefined) {
      resolved.position_y = msg.position_y;
    }
    else {
      resolved.position_y = []
    }

    return resolved;
    }
};

module.exports = MandoObjectReport;
