// Auto-generated. Do not edit!

// (in-package basics.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class WordCountRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.words = null;
      this.letters = null;
    }
    else {
      if (initObj.hasOwnProperty('words')) {
        this.words = initObj.words
      }
      else {
        this.words = '';
      }
      if (initObj.hasOwnProperty('letters')) {
        this.letters = initObj.letters
      }
      else {
        this.letters = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WordCountRequest
    // Serialize message field [words]
    bufferOffset = _serializer.string(obj.words, buffer, bufferOffset);
    // Serialize message field [letters]
    bufferOffset = _serializer.string(obj.letters, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WordCountRequest
    let len;
    let data = new WordCountRequest(null);
    // Deserialize message field [words]
    data.words = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [letters]
    data.letters = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.words.length;
    length += object.letters.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'basics/WordCountRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0f4e7e1911ac32d59dbf586fb6aa5ac8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string words
    string letters
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WordCountRequest(null);
    if (msg.words !== undefined) {
      resolved.words = msg.words;
    }
    else {
      resolved.words = ''
    }

    if (msg.letters !== undefined) {
      resolved.letters = msg.letters;
    }
    else {
      resolved.letters = ''
    }

    return resolved;
    }
};

class WordCountResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.count = null;
      this.letter_count = null;
    }
    else {
      if (initObj.hasOwnProperty('count')) {
        this.count = initObj.count
      }
      else {
        this.count = 0;
      }
      if (initObj.hasOwnProperty('letter_count')) {
        this.letter_count = initObj.letter_count
      }
      else {
        this.letter_count = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WordCountResponse
    // Serialize message field [count]
    bufferOffset = _serializer.uint32(obj.count, buffer, bufferOffset);
    // Serialize message field [letter_count]
    bufferOffset = _serializer.uint32(obj.letter_count, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WordCountResponse
    let len;
    let data = new WordCountResponse(null);
    // Deserialize message field [count]
    data.count = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [letter_count]
    data.letter_count = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'basics/WordCountResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '61faee6a9c59ea72fb3da3e958655cd6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 count
    uint32 letter_count
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WordCountResponse(null);
    if (msg.count !== undefined) {
      resolved.count = msg.count;
    }
    else {
      resolved.count = 0
    }

    if (msg.letter_count !== undefined) {
      resolved.letter_count = msg.letter_count;
    }
    else {
      resolved.letter_count = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: WordCountRequest,
  Response: WordCountResponse,
  md5sum() { return '41e2d0858b9ff4e641d23473ea11310c'; },
  datatype() { return 'basics/WordCount'; }
};
