void setup() {
	fullScreen();
	background(0);
  noStroke();
  smooth();
  fill(255);
}

void draw() {
  float offset = 25;
  float scaleVal = 5.0;
  float angleInc = PI/12.0;
  float angle = HALF_PI;
  translate(0, height/2);

  for (int x = 0; x <= width; x +=5) {
    float y = offset + (sin(angle) * scaleVal);
  	ellipse(x , y, 4, 4);
	  angle += angleInc;
  }
}