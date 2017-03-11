
"use strict";

const events = require('events');

// Globals 
var currentFrame = [];

var knobs = {};

var packetSize;

var _this;

/* Constructor */
function Knobz(knobLabels){

  _this = this;
  console.log("Let's get started!");

  events.EventEmitter.call(this);

  for (var i = 0; i < knobLabels.length; i++){
    knobs[knobLabels[i]] = undefined;
  }

  packetSize = Object.keys(knobs).length + 2;

  // Setting things up
  var SerialPort = require('serialport');
  var port = new SerialPort('/dev/ttyUSB0', {
    baudRate: 9600
  });

  // Listeners
  port.on('data',function(data){

    var packet = data.readUInt8(0);

    processData(packet);

  });


}

Knobz.prototype.__proto__ = events.EventEmitter.prototype;

/* Methods */
function processData(packet){

  // If we're at a new frame, and the data is 0F
  if(! currentFrame.length && packet == 0x0F){
    // Add to frame
    currentFrame.push(packet);

  // If the frame has a length less than packet size and greater than zero  
  }else if(currentFrame.length < packetSize && currentFrame.length > 0){
    // add to frame
    currentFrame.push(packet);

  }

  // Is the current Frame complete? If the frame has a length of the packet size 
  if(currentFrame.length >= packetSize){

    // If the first packet is 0F and the last packet is F0
    if(currentFrame.length == packetSize && currentFrame[0] == 0x0F && currentFrame[packetSize - 1] == 0xF0){
      
      // We're good, so do something with the data
      //console.log("Data is " + currentFrame[1] + " and " + currentFrame[2]); 
      for(var j in Object.keys(knobs)){
        _this.emit(Object.keys(knobs)[j], currentFrame[1 + parseInt(j)]);
      }

    }      
   
    // It was either a success or a failure, so wipe out the current frame
    currentFrame = []; 

  }

}


module.exports = Knobz;

