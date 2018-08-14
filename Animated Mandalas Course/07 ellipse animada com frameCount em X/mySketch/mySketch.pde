void setup(){
  fullScreen();
  background(0);
}

void draw(){
	//background(0);
  translate(0, height/2);
	fill(255);
  ellipse(frameCount, 0, 100, 100);
}
