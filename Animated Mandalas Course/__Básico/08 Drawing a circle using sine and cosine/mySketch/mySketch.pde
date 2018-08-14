//sin and cosine
//https://processing.org/reference/sin_.html
//https://processing.org/reference/cos_.html
//https://processing.org/reference/radians_.html
//https://processing.org/reference/degrees_.html

float circleSize = 15;
float radius = 100;
float center = 300;

void setup() {
    size(600, 600); 
    background(255); 
	
  //drawing a circlo using sin and cosine
  colorMode(HSB, 360, 255, 255);
  for(float i=0; i<PI*2; i+=PI/10){
    fill(degrees(i), 255, 255);
   	ellipse(cos(i)*radius+center, sin(i)*radius+center, circleSize, circleSize); 
  }
}