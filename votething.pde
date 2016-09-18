import processing.serial.*;
Serial myPort;                       // The serial port
int[] serialInArray = new int[3];    // Where we'll put what we receive
int serialCount = 0;                 // A count of how many bytes we receive
PFont f;
int vote; 

void setup() {
  size(256, 256);  // Stage size
  String portName = Serial.list()[3];
  myPort = new Serial(this, portName, 9600);
  f = createFont("Dialog-48.vlw", 64);
  textFont(f);
  textAlign(CENTER, CENTER);
}

void draw() {
  background(0);
  fill(255);
  text(vote, height/2, width/2);
}

void serialEvent(Serial myPort) {
  int inByte = myPort.read();
  vote = inByte;
}