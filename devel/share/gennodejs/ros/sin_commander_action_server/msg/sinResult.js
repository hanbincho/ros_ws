// Auto-generated. Do not edit!

// (in-package sin_commander_action_server.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class sinResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.is_done = null;
    }
    else {
      if (initObj.hasOwnProperty('is_done')) {
        this.is_done = initObj.is_done
      }
      else {
        this.is_done = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type sinResult
    // Serialize message field [is_done]
    bufferOffset = _serializer.bool(obj.is_done, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type sinResult
    let len;
    let data = new sinResult(null);
    // Deserialize message field [is_done]
    data.is_done = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sin_commander_action_server/sinResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ccf1bf44aca57c0fac7595ea9e4b924c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    #result definition
    bool is_done
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new sinResult(null);
    if (msg.is_done !== undefined) {
      resolved.is_done = msg.is_done;
    }
    else {
      resolved.is_done = false
    }

    return resolved;
    }
};

module.exports = sinResult;
