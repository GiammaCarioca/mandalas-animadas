
void setup() { 
  fullScreen();
  background(0);
  stroke(#00aaff, 50);
  strokeWeight(5);
}
void draw() {
  for (int j=10; j<=width; j+=10) {
    float a=random(0, 2*PI);
    point(width/2+j*cos(a), height/2+j*sin(a));
  }
}
