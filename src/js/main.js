
// Setting things up
var SerialPort = require('serialport');
var port = new SerialPort('/dev/ttyUSB0', {
  baudRate: 9600
});

// Globals 
var currentFrame = [];


// Listeners
port.on('data',function(data){

  var packet = data.readUInt8(0);

  // If we're at a new frame, and the data is 0F
  if(! currentFrame.length && packet == 0x0F){
    // Add to frame
    currentFrame.push(packet);

  // If the frame has a length less than four and greater than zero  
  }else if(currentFrame.length < 4 && currentFrame.length > 0){
    // add to frame
    currentFrame.push(packet);

  }

  
  // Is the current Frame complete? If the frame has a length of four 
  if(currentFrame.length >= 4){

    // If the first packet is 0F and the last packet is F0
    if(currentFrame.length == 4 && currentFrame[0] == 0x0F && currentFrame[3] == 0xF0){
      
      // We're good, so do something with the data
      console.log("Data is " + currentFrame[1] + " and " + currentFrame[2]); 
      //frameBuffer.push(new Array(currentFrame[1], currentFrame[2]));

    }      
   
    // It was either a success or a failure, so wipe out the current frame
    currentFrame = []; 

  }

});



