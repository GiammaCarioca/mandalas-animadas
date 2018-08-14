PVector p;

float a, r;

void setup() {
  size(800, 800);
  
  r = 75;
  a = 0;
  
  p = new PVector(cos(a)*r, sin(a)*r);
}

void draw() {
  background(220);
  
  grid();
  
  p.x = width*0.25+cos(a)*r;
  p.y = height/2+sin(a)*r;
  
  ellipseMode(CENTER);
  stroke(150);
  noFill();
  ellipse(width*0.25, height/2, r*2, r*2);
  
  fill(100);
  noStroke();
  ellipse(p.x, p.y, 5, 5);
  
  stroke(100);
  line(width*0.25, height/2, p.x, p.y);
  
  sinewaves();
  
  legend();
  
  a += 0.05;
}

void grid() {
  stroke(180);
  line(width*0.25-r-(r/2), height/2, width*0.85, height/2);
  line(width*0.25, height/2-r-(r/2), width*0.25, height/2+r+(r/2));
  line(width*0.25, height/2-r, width*0.85, height/2-r);
  line(width*0.25, height/2+r, width*0.85, height/2+r);
  line(width*0.5, height/2-r, width*0.5, height/2+r);
  
  textAlign(LEFT, BOTTOM);
  text("1", width*0.5, height*0.5-r);
  textAlign(LEFT, TOP);
  text("0", width*0.5+3, height*0.5+3);
  textAlign(CENTER, TOP);
  text("-1", width*0.5, height*0.5+r+3);
}

void sinewaves() {
  float b = a;
  for (int x = int(width*0.5); x < width*0.75+r; x++) {
    stroke(#AA5959);
    point(x, height/2+sin(b)*r);
    stroke(#5975AA);
    point(x, height*0.5+cos(b)*r);
    b += TWO_PI/280;
  }
}

void legend() {
  stroke(#AA5959);
  line(p.x, p.y, width*0.5, height/2+sin(a)*r);
  stroke(#5975AA);
  line(p.x, height*0.5+cos(a)*r, width*0.5, height*0.5+cos(a)*r);
  line(p.x, p.y, p.x, height*0.5+cos(a)*r);
  
  fill(#AA5959);
  noStroke();
  rectMode(CENTER);
  rect(width*0.6, height*0.5+(r*1.5), 10, 10);
  fill(100);
  textAlign(CENTER, LEFT);
  text("sin(a)", width*0.6+35, height*0.5+(r*1.5)+4);
  
  fill(#5975AA);
  noStroke();
  rectMode(CENTER);
  rect(width*0.75, height*0.5+(r*1.5), 10, 10);
  fill(100);
  textAlign(CENTER, LEFT);
  text("cos(a)", width*0.75+35, height*0.5+(r*1.5)+4);
  
  textAlign(CENTER, CENTER);
  text("P(x) = cos(a)*r | P(y) = sin(a)*r", width/2, height*0.75);
}