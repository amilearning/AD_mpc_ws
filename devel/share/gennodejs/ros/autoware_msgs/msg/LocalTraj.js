// Auto-generated. Do not edit!

// (in-package autoware_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class LocalTraj {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x = null;
      this.y = null;
      this.psi = null;
      this.curvature = null;
      this.ref_vel = null;
    }
    else {
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = [];
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = [];
      }
      if (initObj.hasOwnProperty('psi')) {
        this.psi = initObj.psi
      }
      else {
        this.psi = [];
      }
      if (initObj.hasOwnProperty('curvature')) {
        this.curvature = initObj.curvature
      }
      else {
        this.curvature = [];
      }
      if (initObj.hasOwnProperty('ref_vel')) {
        this.ref_vel = initObj.ref_vel
      }
      else {
        this.ref_vel = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LocalTraj
    // Serialize message field [x]
    bufferOffset = _arraySerializer.float64(obj.x, buffer, bufferOffset, null);
    // Serialize message field [y]
    bufferOffset = _arraySerializer.float64(obj.y, buffer, bufferOffset, null);
    // Serialize message field [psi]
    bufferOffset = _arraySerializer.float64(obj.psi, buffer, bufferOffset, null);
    // Serialize message field [curvature]
    bufferOffset = _arraySerializer.float64(obj.curvature, buffer, bufferOffset, null);
    // Serialize message field [ref_vel]
    bufferOffset = _arraySerializer.float64(obj.ref_vel, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LocalTraj
    let len;
    let data = new LocalTraj(null);
    // Deserialize message field [x]
    data.x = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [y]
    data.y = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [psi]
    data.psi = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [curvature]
    data.curvature = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [ref_vel]
    data.ref_vel = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.x.length;
    length += 8 * object.y.length;
    length += 8 * object.psi.length;
    length += 8 * object.curvature.length;
    length += 8 * object.ref_vel.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'autoware_msgs/LocalTraj';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5ace80ff02ea0c77ad6a0d54fec1e4a6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] x
    float64[] y
    float64[] psi
    float64[] curvature
    float64[] ref_vel
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LocalTraj(null);
    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = []
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = []
    }

    if (msg.psi !== undefined) {
      resolved.psi = msg.psi;
    }
    else {
      resolved.psi = []
    }

    if (msg.curvature !== undefined) {
      resolved.curvature = msg.curvature;
    }
    else {
      resolved.curvature = []
    }

    if (msg.ref_vel !== undefined) {
      resolved.ref_vel = msg.ref_vel;
    }
    else {
      resolved.ref_vel = []
    }

    return resolved;
    }
};

module.exports = LocalTraj;
