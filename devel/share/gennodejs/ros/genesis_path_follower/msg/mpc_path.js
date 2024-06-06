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

class mpc_path {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.solve_status = null;
      this.solve_time = null;
      this.xs = null;
      this.ys = null;
      this.vs = null;
      this.psis = null;
      this.xr = null;
      this.yr = null;
      this.vr = null;
      this.psir = null;
      this.df = null;
      this.acc = null;
      this.ss = null;
      this.eys = null;
      this.epsis = null;
      this.crf = null;
      this.vrf = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('solve_status')) {
        this.solve_status = initObj.solve_status
      }
      else {
        this.solve_status = '';
      }
      if (initObj.hasOwnProperty('solve_time')) {
        this.solve_time = initObj.solve_time
      }
      else {
        this.solve_time = 0.0;
      }
      if (initObj.hasOwnProperty('xs')) {
        this.xs = initObj.xs
      }
      else {
        this.xs = [];
      }
      if (initObj.hasOwnProperty('ys')) {
        this.ys = initObj.ys
      }
      else {
        this.ys = [];
      }
      if (initObj.hasOwnProperty('vs')) {
        this.vs = initObj.vs
      }
      else {
        this.vs = [];
      }
      if (initObj.hasOwnProperty('psis')) {
        this.psis = initObj.psis
      }
      else {
        this.psis = [];
      }
      if (initObj.hasOwnProperty('xr')) {
        this.xr = initObj.xr
      }
      else {
        this.xr = [];
      }
      if (initObj.hasOwnProperty('yr')) {
        this.yr = initObj.yr
      }
      else {
        this.yr = [];
      }
      if (initObj.hasOwnProperty('vr')) {
        this.vr = initObj.vr
      }
      else {
        this.vr = [];
      }
      if (initObj.hasOwnProperty('psir')) {
        this.psir = initObj.psir
      }
      else {
        this.psir = [];
      }
      if (initObj.hasOwnProperty('df')) {
        this.df = initObj.df
      }
      else {
        this.df = [];
      }
      if (initObj.hasOwnProperty('acc')) {
        this.acc = initObj.acc
      }
      else {
        this.acc = [];
      }
      if (initObj.hasOwnProperty('ss')) {
        this.ss = initObj.ss
      }
      else {
        this.ss = [];
      }
      if (initObj.hasOwnProperty('eys')) {
        this.eys = initObj.eys
      }
      else {
        this.eys = [];
      }
      if (initObj.hasOwnProperty('epsis')) {
        this.epsis = initObj.epsis
      }
      else {
        this.epsis = [];
      }
      if (initObj.hasOwnProperty('crf')) {
        this.crf = initObj.crf
      }
      else {
        this.crf = [];
      }
      if (initObj.hasOwnProperty('vrf')) {
        this.vrf = initObj.vrf
      }
      else {
        this.vrf = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type mpc_path
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [solve_status]
    bufferOffset = _serializer.string(obj.solve_status, buffer, bufferOffset);
    // Serialize message field [solve_time]
    bufferOffset = _serializer.float64(obj.solve_time, buffer, bufferOffset);
    // Serialize message field [xs]
    bufferOffset = _arraySerializer.float64(obj.xs, buffer, bufferOffset, null);
    // Serialize message field [ys]
    bufferOffset = _arraySerializer.float64(obj.ys, buffer, bufferOffset, null);
    // Serialize message field [vs]
    bufferOffset = _arraySerializer.float64(obj.vs, buffer, bufferOffset, null);
    // Serialize message field [psis]
    bufferOffset = _arraySerializer.float64(obj.psis, buffer, bufferOffset, null);
    // Serialize message field [xr]
    bufferOffset = _arraySerializer.float64(obj.xr, buffer, bufferOffset, null);
    // Serialize message field [yr]
    bufferOffset = _arraySerializer.float64(obj.yr, buffer, bufferOffset, null);
    // Serialize message field [vr]
    bufferOffset = _arraySerializer.float64(obj.vr, buffer, bufferOffset, null);
    // Serialize message field [psir]
    bufferOffset = _arraySerializer.float64(obj.psir, buffer, bufferOffset, null);
    // Serialize message field [df]
    bufferOffset = _arraySerializer.float64(obj.df, buffer, bufferOffset, null);
    // Serialize message field [acc]
    bufferOffset = _arraySerializer.float64(obj.acc, buffer, bufferOffset, null);
    // Serialize message field [ss]
    bufferOffset = _arraySerializer.float64(obj.ss, buffer, bufferOffset, null);
    // Serialize message field [eys]
    bufferOffset = _arraySerializer.float64(obj.eys, buffer, bufferOffset, null);
    // Serialize message field [epsis]
    bufferOffset = _arraySerializer.float64(obj.epsis, buffer, bufferOffset, null);
    // Serialize message field [crf]
    bufferOffset = _arraySerializer.float64(obj.crf, buffer, bufferOffset, null);
    // Serialize message field [vrf]
    bufferOffset = _serializer.float64(obj.vrf, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type mpc_path
    let len;
    let data = new mpc_path(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [solve_status]
    data.solve_status = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [solve_time]
    data.solve_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [xs]
    data.xs = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [ys]
    data.ys = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [vs]
    data.vs = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [psis]
    data.psis = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [xr]
    data.xr = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [yr]
    data.yr = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [vr]
    data.vr = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [psir]
    data.psir = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [df]
    data.df = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [acc]
    data.acc = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [ss]
    data.ss = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [eys]
    data.eys = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [epsis]
    data.epsis = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [crf]
    data.crf = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [vrf]
    data.vrf = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.solve_status);
    length += 8 * object.xs.length;
    length += 8 * object.ys.length;
    length += 8 * object.vs.length;
    length += 8 * object.psis.length;
    length += 8 * object.xr.length;
    length += 8 * object.yr.length;
    length += 8 * object.vr.length;
    length += 8 * object.psir.length;
    length += 8 * object.df.length;
    length += 8 * object.acc.length;
    length += 8 * object.ss.length;
    length += 8 * object.eys.length;
    length += 8 * object.epsis.length;
    length += 8 * object.crf.length;
    return length + 76;
  }

  static datatype() {
    // Returns string type for a message object
    return 'genesis_path_follower/mpc_path';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd5cdd34d6da3208a35233bde8022e4d2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    string solve_status # e.g. optimal, infeasible, etc.
    float64 solve_time  # time used to solve the optimization problem in seconds
    float64[] xs        # MPC solution for x coordinate (m)
    float64[] ys        # MPC solution for y coordinate (m)
    float64[] vs        # MPC solution for speed (m/s)
    float64[] psis      # MPC solution for yaw angle (rad)
    float64[] xr        # MPC reference for ""
    float64[] yr        # MPC reference for ""
    float64[] vr        # MPC reference for ""
    float64[] psir      # MPC reference for ""
    float64[] df        # MPC solution for front steering angle (rad)
    float64[] acc       # MPC solution for acceleration (m/s^2)
    
    float64[] ss        # MPC solution for Frenet s (m)
    float64[] eys       # MPC solution for Frenet ey (m)
    float64[] epsis     # MPC solution for Frenet epsi (m)
    
    float64[] crf       # curvature reference profile for Frenet (rad/m)
    float64 vrf         # curvature-aware velocity reference for Frenet (m/s)
    
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
    const resolved = new mpc_path(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.solve_status !== undefined) {
      resolved.solve_status = msg.solve_status;
    }
    else {
      resolved.solve_status = ''
    }

    if (msg.solve_time !== undefined) {
      resolved.solve_time = msg.solve_time;
    }
    else {
      resolved.solve_time = 0.0
    }

    if (msg.xs !== undefined) {
      resolved.xs = msg.xs;
    }
    else {
      resolved.xs = []
    }

    if (msg.ys !== undefined) {
      resolved.ys = msg.ys;
    }
    else {
      resolved.ys = []
    }

    if (msg.vs !== undefined) {
      resolved.vs = msg.vs;
    }
    else {
      resolved.vs = []
    }

    if (msg.psis !== undefined) {
      resolved.psis = msg.psis;
    }
    else {
      resolved.psis = []
    }

    if (msg.xr !== undefined) {
      resolved.xr = msg.xr;
    }
    else {
      resolved.xr = []
    }

    if (msg.yr !== undefined) {
      resolved.yr = msg.yr;
    }
    else {
      resolved.yr = []
    }

    if (msg.vr !== undefined) {
      resolved.vr = msg.vr;
    }
    else {
      resolved.vr = []
    }

    if (msg.psir !== undefined) {
      resolved.psir = msg.psir;
    }
    else {
      resolved.psir = []
    }

    if (msg.df !== undefined) {
      resolved.df = msg.df;
    }
    else {
      resolved.df = []
    }

    if (msg.acc !== undefined) {
      resolved.acc = msg.acc;
    }
    else {
      resolved.acc = []
    }

    if (msg.ss !== undefined) {
      resolved.ss = msg.ss;
    }
    else {
      resolved.ss = []
    }

    if (msg.eys !== undefined) {
      resolved.eys = msg.eys;
    }
    else {
      resolved.eys = []
    }

    if (msg.epsis !== undefined) {
      resolved.epsis = msg.epsis;
    }
    else {
      resolved.epsis = []
    }

    if (msg.crf !== undefined) {
      resolved.crf = msg.crf;
    }
    else {
      resolved.crf = []
    }

    if (msg.vrf !== undefined) {
      resolved.vrf = msg.vrf;
    }
    else {
      resolved.vrf = 0.0
    }

    return resolved;
    }
};

module.exports = mpc_path;
