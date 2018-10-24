// Auto-generated. Do not edit!

// (in-package sin_commander_service.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SinCommanderMsgRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.amp = null;
      this.freq = null;
    }
    else {
      if (initObj.hasOwnProperty('amp')) {
        this.amp = initObj.amp
      }
      else {
        this.amp = 0.0;
      }
      if (initObj.hasOwnProperty('freq')) {
        this.freq = initObj.freq
      }
      else {
        this.freq = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SinCommanderMsgRequest
    // Serialize message field [amp]
    bufferOffset = _serializer.float32(obj.amp, buffer, bufferOffset);
    // Serialize message field [freq]
    bufferOffset = _serializer.float32(obj.freq, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SinCommanderMsgRequest
    let len;
    let data = new SinCommanderMsgRequest(null);
    // Deserialize message field [amp]
    data.amp = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [freq]
    data.freq = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'sin_commander_service/SinCommanderMsgRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '58860f30071c655fa75a376caed7a7af';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 amp
    float32 freq
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SinCommanderMsgRequest(null);
    if (msg.amp !== undefined) {
      resolved.amp = msg.amp;
    }
    else {
      resolved.amp = 0.0
    }

    if (msg.freq !== undefined) {
      resolved.freq = msg.freq;
    }
    else {
      resolved.freq = 0.0
    }

    return resolved;
    }
};

class SinCommanderMsgResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sin_velocity = null;
    }
    else {
      if (initObj.hasOwnProperty('sin_velocity')) {
        this.sin_velocity = initObj.sin_velocity
      }
      else {
        this.sin_velocity = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SinCommanderMsgResponse
    // Serialize message field [sin_velocity]
    bufferOffset = _serializer.float32(obj.sin_velocity, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SinCommanderMsgResponse
    let len;
    let data = new SinCommanderMsgResponse(null);
    // Deserialize message field [sin_velocity]
    data.sin_velocity = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'sin_commander_service/SinCommanderMsgResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6b20870355cb705aa117d3b478d7a30d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 sin_velocity
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SinCommanderMsgResponse(null);
    if (msg.sin_velocity !== undefined) {
      resolved.sin_velocity = msg.sin_velocity;
    }
    else {
      resolved.sin_velocity = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: SinCommanderMsgRequest,
  Response: SinCommanderMsgResponse,
  md5sum() { return '1934939e811673ac6de96fd9859814cf'; },
  datatype() { return 'sin_commander_service/SinCommanderMsg'; }
};
