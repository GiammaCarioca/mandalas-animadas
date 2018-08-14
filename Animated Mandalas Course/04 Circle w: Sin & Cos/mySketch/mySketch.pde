void setup(){
	fullScreen();
}

void draw(){
	background(0);
	noFill();
	stroke(255);
	line(0,height/2,width,height/2);
  line(width/2,0,width/2,height);	
	
  // make t to hold the current frame number as a float
  float t = (float)frameCount;

  // move the coordinate system to left middle
  translate(width/2, height/2);

  // circles left to right on a cos() wave
	ellipse(cos(radians(frameCount))*100, 0, 50, 50);
	//ellipse(0, cos(radians(frameCount))*100, 50, 50);
	//ellipse(sin(t/100)*100, cos(t/100)*100, 50, 50);
}
