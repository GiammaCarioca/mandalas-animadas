void setup() { 
  size(800,600);
  background(220); 
}

void draw() {
  //stroke(255);
	strokeWeight(3); 
  point(100, 260); 
  line(230, 220, 160, 320); 
  //fill(127,0,0);
  ellipse(350, 270, 100, 100); 
  //ellipse(350, 270, 100, 50); 
  //fill(0,127,0);
  rect(450, 220, 100, 100); 
  //rect(450, 220, 50, 100); 
  //fill(0,0,127);
  triangle(620, 220, 710, 220, 620, 320);
  //triangle(600,320,650,220,700,320); 
}
