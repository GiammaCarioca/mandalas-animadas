int amp=50, dx=0, freq=2;
void setup() {
  size(200, 300);
}

void draw() {
  background(#102439);
  noFill();
  show(0, dx);
  show(1, dx);
  dx+=1;
}

void show(int k, int dx) {
  stroke(#68BF4B);
  beginShape();
  for (int i=0; i<width+dx; i++) {
    float y = height/2+amp*sin(freq*radians(i));
    if (k==0) vertex(i-dx, y);
    if (i-dx==width/2 && k==1) {
      pushStyle();
      noStroke();
      if (y>height/2)fill(#68BF4B);
      else {
        noFill(); 
        stroke(#68BF4B);
        strokeWeight(2);
        fill(#102439);
      }
      ellipse(width/2, y, 15, 15);
      popStyle();
    }
  } 
  endShape(OPEN); 
}