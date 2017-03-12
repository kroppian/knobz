"use strict";

const events = require('events');

// Globals 
var frame = [];
var knobs = {};
var _this;
var bounceCertainty = 5;

/* Constructor */
function Knobz(knobLabels){

  _this = this;
  console.log("Let's get started!");

  events.EventEmitter.call(this);

  for (var i = 0; i < knobLabels.length; i++){
    knobs[knobLabels[i]] = undefined;
  }

  // Setting things up
  var SerialPort = require('serialport');
  var port = new SerialPort('/dev/ttyUSB0', {
    baudRate: 9600
  });

  // Listeners
  port.on('data',function(data){

    var packet = data.readUInt8(0);
    frame = gatherData(packet, frame, knobs);
    transmitData(frame, knobs); 
    frame = scrubFrame(frame, knobs)

  });


}

Knobz.prototype.__proto__ = events.EventEmitter.prototype;

/* Methods */
function scrubFrame(frame, knobs){

  var frame = frame.slice(0);

  var knobCount = Object.keys(knobs).length;
  var packetSize = knobCount + 2;

  // Is the current Frame complete? If the frame has a length of the packet size 
  if(frame.length >= packetSize) frame = [];
  
  return frame;

}

function transmitData(frame, knobs){

  var frame = frame.slice(0);
  var knobCount = Object.keys(knobs).length;
  var packetSize = knobCount + 2;

  // Is the current Frame complete? If the frame has a length of the packet size 
  if(frame.length >= packetSize){

    // If the first packet is 0F and the last packet is F0
    if(frame.length == packetSize && frame[0] == 0x0F && frame[packetSize - 1] == 0xF0){
      // We're good, so do something with the data
      for(var i = 0; i < knobCount; i++){
        _this.emit(Object.keys(knobs)[i], frame[parseInt(i) + 1]);
      }

    }      

  }

}

function gatherData(packet, frame, knobs){

  var frame = frame.slice(0);
  var knobCount = Object.keys(knobs).length;
  var packetSize = knobCount + 2;

  // If we're at a new frame, and the data is 0F
  if(! frame.length && packet == 0x0F){
    // Add to frame
    frame.push(packet);

  // If the frame has a length less than packet size and greater than zero  
  }else if(frame.length < packetSize && frame.length > 0){
    // add to frame
    frame.push(packet);

  }

  return frame;

}

module.exports = Knobz;

