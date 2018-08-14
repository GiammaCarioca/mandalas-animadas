void setup(){
	size(600,400);
	background(0);
	noStroke();
	smooth();
}

void draw(){
  int radius = 160;
  for (int deg = 0; deg < 360; deg += 12) {
    float angle = radians(deg);
	  float x = width/2 + (sin(angle) * radius);
    float y = height/2 + (cos(angle) * radius);
	  ellipse(x, y, 16, 16);
  }
}


// Usando translate
/* 
void setup(){
  size(600,400);
  background(0);
  noStroke();
  smooth();
}

void draw(){
  int radius = 160;
  //translate(width/2, height/2);
  
  for (int deg = 0; deg < 360; deg += 12) {
    float angle = radians(deg);
    float x = width/2 + (sin(angle) * radius);
    float y = height/2 + (cos(angle) * radius);
    
    
    float x = sin(angle) * radius;
    float y = cos(angle) * radius;
    ellipse(x, y, 16, 16);
  }
}
*/
