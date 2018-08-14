float rand1, rand2, rand3;

void setup(){
  fullScreen();
  background(0);
  noFill();
  stroke(255,40);

  rand1 = random(100);
  rand2 = random(100);
  rand3 = random(100);
	/*
	rand1 = random(500);
  rand2 = random(500);
  rand3 = random(500);
	*/

  // para anotar os números
  print(rand1 + "\n");
  print(rand2 + "\n");
  print(rand3 + "\n");
}

void draw(){
  float t = (float)frameCount;

  translate(width/2, height/2);

  rotate(t/rand1);
  
  ellipse(0,0, sin(t/rand2)*500, cos(t/rand3)*500);
}
