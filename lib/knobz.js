"use strict";

const events = require('events');

// Globals 
var frame = [];
var knobs = {};
var _this;

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
    frame = gatherData(packet, frame.slice(0), knobs);
    transmitData(frame.slice(0),knobs); 
    frame = scrubFrame(frame.slice(0), knobs)

  });


}

Knobz.prototype.__proto__ = events.EventEmitter.prototype;

/* Methods */
function scrubFrame(currentFrame, knobs){

  var knobCount = Object.keys(knobs).length;
  var packetSize = knobCount + 2;

  // Is the current Frame complete? If the frame has a length of the packet size 
  if(currentFrame.length >= packetSize) currentFrame = [];
  
  return currentFrame;

}

function transmitData(currentFrame, knobs){

  var knobCount = Object.keys(knobs).length;
  var packetSize = knobCount + 2;

  // Is the current Frame complete? If the frame has a length of the packet size 
  if(currentFrame.length >= packetSize){

    // If the first packet is 0F and the last packet is F0
    if(currentFrame.length == packetSize && currentFrame[0] == 0x0F && currentFrame[packetSize - 1] == 0xF0){
      // We're good, so do something with the data
      for(var i = 0; i < knobCount; i++){
        _this.emit(Object.keys(knobs)[i], currentFrame[parseInt(i) + 1]);
      }

    }      

  }

}

function gatherData(packet, currentFrame, knobs){

  var knobCount = Object.keys(knobs).length;
  var packetSize = knobCount + 2;

  // If we're at a new frame, and the data is 0F
  if(! currentFrame.length && packet == 0x0F){
    // Add to frame
    currentFrame.push(packet);

  // If the frame has a length less than packet size and greater than zero  
  }else if(currentFrame.length < packetSize && currentFrame.length > 0){
    // add to frame
    currentFrame.push(packet);

  }


  return currentFrame;

}

module.exports = Knobz;

