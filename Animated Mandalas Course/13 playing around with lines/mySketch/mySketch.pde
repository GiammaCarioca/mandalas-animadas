float rand1, rand2, rand3;

void setup(){
	fullScreen();
  frameRate(300);
  background(0);
	stroke(255,20);
  noFill();
}

void draw(){
  float t = (float)frameCount;

  translate(width/2, height/2);
  
  // try to play around with rotate!!!
  rotate(t/200);
	//rotate(t/113);
	//rotate(t/13);
	//rotate(t/313);
  
  ellipse(sin(t/140)*200, cos(t/140)*200, sin(t/140)*200, cos(t/140)*200);
  //line(sin(t/140)*200, cos(t/140)*200, sin(t/10)*300, cos(t/10)*300);
  //line(sin(t/240)*713, cos(t/240)*713, cos(t/10)*500, sin(t/10)*500);
  //line(sin(t/20)*100, cos(t/20)*100, sin(t/10)*500, sin(t/10)*500);
  //line(sin(t/67)*100, cos(t/67)*100, sin(t/10)*300, cos(t/10)*300);
  //line(sin(t/67)*300, cos(t/67)*300, sin(t/10)*400, tan(t/10)*400);
  //rect(sin(t/140)*200, cos(t/140)*200, sin(t/140)*200, cos(t/140)*200);
  //rect(sin(t/140)*200, cos(t/140)*200, atan(t/140)*200, cos(t/140)*200);
  //line(sin(t/140)*200, cos(t/140)*200, atan(t/140)*200, cos(t/140)*200);
  //line(sin(t/140)*200+cos(t/30)*30, cos(t/140)*200+sin(t/30)*30,atan(t/140)*200+sin(t/30)*30, cos(t/140)*200+cos(t/30)*30;
  //line(sin(t/60)*200+cos(t/30)*30, cos(t/60)*200+sin(t/30)*30,cos(t/60)*200+sin(t/30)*30, cos(t/60)*200+cos(t/30)*30;
}
