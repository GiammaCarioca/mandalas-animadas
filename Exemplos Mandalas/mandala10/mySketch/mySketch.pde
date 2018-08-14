// https://www.openprocessing.org/sketch/392957

float circleSize = 800;
float radius = 2000;
float center = 400;

void setup() {
  size(800, 800); 
  background(0); 
	frameRate(400);
  colorMode(HSB, 360, 255, 140);
} 

void draw() {
  noFill();
  radius ++;
  for(float i=0; i<PI*2; i+=PI/10){
   	ellipse(cos(i)*radius+center, sin(i)*radius+center, circleSize, circleSize);
   }
  
  if(radius>250){
    radius=random(0,100);
    circleSize=random(0,100);
    stroke(random(360),255,255,10);
  }
}