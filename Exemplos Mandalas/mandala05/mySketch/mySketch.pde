int d = 30;
float num = 0;

void setup() {
  size(640, 640);
  background(20);
  noStroke();
}

void draw() {
  translate(width/2, height/2);
  rotate(radians(num*1.5));
  for (int i = 0; i < 360; i+=d) {
    float x = pow(sin(radians(i+num)), 3)*200;
    float y = pow(cos(radians(i+num)), 3)*x;
    float m = map(dist(x, y, 0, 0), 0, 200, 1, 10);
    fill(125+sin(radians(dist(x, y, 0, 0)))*125, 255, 125+cos(radians(dist(x, y, 0, 0)))*125);
    ellipse(x, y, m, m);
  }

  num += 0.5;
}

void mousePressed() {
  if (d < 180) {
    d+=10;
  } else {
    d = 10;
  }

  num = 0;
  background(20);
}
