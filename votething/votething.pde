import processing.serial.*;
Serial myPort;                       // The serial port
int[] serialInArray = new int[3];    // Where we'll put what we receive
int serialCount = 0;                 // A count of how many bytes we receive
PFont f;
PImage logo; 
int vote; 

void setup() {
  logo = loadImage("hes.jpg");
  size(1500, 800);  // Stage size
  String portName = Serial.list()[3];
  myPort = new Serial(this, portName, 9600);
  f = createFont("InkInTheMeat-Tial-48.vlw", 200);
  textFont(f);
  textAlign(CENTER, CENTER);
}

void draw() {
  background(logo);
  fill(255);
  text(vote, width/2, height/2);
}

void serialEvent(Serial myPort) {
  int inByte = myPort.read();
  vote = inByte;
}