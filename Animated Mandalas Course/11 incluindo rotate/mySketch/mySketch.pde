void setup(){
  fullScreen();
  background(0);
  noFill();
  stroke(255,40);
}

void draw(){
  float t = (float)frameCount;
  translate(width/2, height/2);

  // usando "t" a rotação vai aumentar a cada frame formando um círculo
  //rotate(t);
  //rotate(t/10);
  //rotate(t/100);
  
  ellipse(0, 0, sin(t/300)*500, cos(t/130)*500);
}
