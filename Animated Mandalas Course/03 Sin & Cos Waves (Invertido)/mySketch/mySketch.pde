// Poliphonia Media Lab, 14 de agosto de 2018

/*
 * https://processing.org/reference/sin_.html
 * https://processing.org/examples/sinewave.html
 * https://processing.org/reference/cos_.html
 */

void setup() {
  fullScreen();
	background(0);
	stroke(255);
	//line(0,?,width,sin?);
	line(0,height/2,width,height/2);
	//line(0,?,width,?);
}

void draw(){
	noFill();
	stroke(255,40);
	
/*
	textAlign(LEFT);
	textSize(40);
	text("cos() começa no 1", 60, height-height/4);
	text("sin() começa no 0", 60, height+60-height/4);
*/
	
	translate(0, height/2);
	ellipse(frameCount, sin(radians(frameCount))*100, 50, 50);
  ellipse(frameCount, cos(radians(frameCount))*100, 50, 50);
}
