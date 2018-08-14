void setup() {
  fullScreen();
  background(255);
  
  fill(0);
  for (int i = 0; i < width; i += 50) {
    line(i, 0, i, height);
    text(i, i + 1, 10);
  }  
  
  for (int i = 0; i < height; i += 50) {
    line(0, i, width, i);
    text(i, 0, i - 1);
  }  
}

void draw() {
}

void mousePressed() {
  ellipse(mouseX, mouseY, 4, 4);
  text( "x: " + mouseX + " y: " + mouseY, mouseX + 2, mouseY );  
}
