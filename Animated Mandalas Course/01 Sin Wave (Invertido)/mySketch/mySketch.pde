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
	stroke(255,40);
	line(0,height/2,width,height/2);
	
/*
	textAlign(LEFT);
	textSize(40);
	text("sin() começa no 0, sobe até 1 e depois desce até -1", 60, height+60-height/4);
	*/

	//move the coordinate system to left middle
  translate(0, height/2);
	
  ellipse(frameCount, sin(radians(frameCount))*100, 50, 50);
}
