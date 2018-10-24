// Auto-generated. Do not edit!

// (in-package object_grabber.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class object_grabber2Feedback {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.fdbk = null;
    }
    else {
      if (initObj.hasOwnProperty('fdbk')) {
        this.fdbk = initObj.fdbk
      }
      else {
        this.fdbk = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type object_grabber2Feedback
    // Serialize message field [fdbk]
    bufferOffset = _serializer.int32(obj.fdbk, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type object_grabber2Feedback
    let len;
    let data = new object_grabber2Feedback(null);
    // Deserialize message field [fdbk]
    data.fdbk = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'object_grabber/object_grabber2Feedback';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '46cc8f8da6ebf35aedc6bad2e96b2e59';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    #feedback: optional; 
    int32 fdbk
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new object_grabber2Feedback(null);
    if (msg.fdbk !== undefined) {
      resolved.fdbk = msg.fdbk;
    }
    else {
      resolved.fdbk = 0
    }

    return resolved;
    }
};

module.exports = object_grabber2Feedback;