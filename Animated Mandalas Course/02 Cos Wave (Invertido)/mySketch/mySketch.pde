// Poliphonia Media Lab, 14 de agosto de 2018

// https://processing.org/reference/cos_.html

void setup() {
  fullScreen();
  background(0);
	noFill();
  stroke(27,36,79,40);
}

void draw(){
	noFill();
	stroke(255,40);
	line(0,height/2,width,height/2);
	
/*
	textAlign(LEFT);
	textSize(40);
	text("cos() começa no 1, desce até -1 e depois sobe até 1", 60, height+60-height/4);
	*/

	//move the coordinate system to left middle
  translate(0, height/2);

  ellipse(frameCount, cos(radians(frameCount))*100, 50, 50);
}
