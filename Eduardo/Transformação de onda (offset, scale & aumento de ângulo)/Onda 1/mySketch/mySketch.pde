void setup() {
	fullScreen();
	background(0);
  noStroke();
  smooth();
  fill(255);
}

void draw() {
  float offset = 50.0;
  float scaleVal = 35.0;
  float angleInc = PI/28.0;
  float angle = 0.0;
  translate(0, height/2);

  for (int x = 0; x <= width; x +=5) {
    float y = offset + (sin(angle) * scaleVal);
  	ellipse(x , y, 4, 4);
	  angle += angleInc;
  }
}