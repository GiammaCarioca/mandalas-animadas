// Poliphonia Media Lab, 14 de agosto de 2018

/*
 * https://processing.org/reference/sin_.html
 * https://processing.org/examples/sinewave.html
 */

void setup() {
  fullScreen();
	background(0);
}

void draw(){
	noFill();
	stroke(255, 40);
	line(0,height/2,width,height/2);
	
	//move the coordinate system to left middle
  translate(0, height/2);
	
	fill(255, 0, 0);
	ellipse(frameCount, -100 + sin(radians(frameCount)) * -100, 5, 5);
	fill(0, 255, 0);
  ellipse(frameCount, sin(radians(frameCount)) * -100, 5, 5);
	fill(0, 0, 255);
	ellipse(frameCount, 100 + sin(radians(frameCount)) * -100, 5, 5);
}
