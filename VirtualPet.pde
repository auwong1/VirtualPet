import processing.serial.*;
import cc.arduino.*;
Arduino arduino;

void setup(){
size(400,400);
background(0,0,100);
arduino = new Arduino(this, Arduino.list()[0], 57600); //change the [0] to a [1] or [2] etc. if your program doesn't work
}
void draw(){
background(0,0,100);
int y = arduino.analogRead(5)/2;
int x = arduino.analogRead(5);
if(y<75)
  y=125;
if(y>125)
  y=75;
if(x>150)
  x=250;
if(x<250)
  x=270;
fill(165,80,42);
ellipse(125,70,y,y);
ellipse(275,70,y,y);
ellipse(125,x,80,50);
ellipse(275,x,80,50);
ellipse(165,355,50,80);
ellipse(235,355,50,80);
ellipse(200,280,130,150);
ellipse(200,150,200,200);
fill(207,185,151);
ellipse(200,180,100,100);
fill(1,1,1);
ellipse(200,160,40,40);
line(200,160,200,200);
line(200,200,180,210);
line(200,200,220,210);
strokeWeight(5);
ellipse(150,110,30,40);
ellipse(250,110,30,40);
}
