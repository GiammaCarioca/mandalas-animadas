float rand1, rand2, rand3;

void setup(){
	fullScreen();
  frameRate(6000);
  background(0);
	stroke(255,20);
  noFill();
}

void draw(){
  float t = (float)frameCount;

  translate(width/2, height/2);
  
  // try to play around with rotate!!!
  //rotate(t/200);
	//rotate(t/113);
	//rotate(t/13);
	//rotate(t/313);
  
  rect(sin(t/140)*200, cos(t/140)*200, sin(t/140)*200, cos(t/140)*200);
  //rect(sin(t/140)*200, cos(t/140)*200, atan(t/140)*200, cos(t/140)*200);
}
