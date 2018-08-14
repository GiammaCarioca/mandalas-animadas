void setup() {
  fullScreen();
  background(255);
  translate(width/2, height/2);
  
  fill(0);
  for (int i = 0; i < width/2; i += 50) {
    line(i, -height/2, i, height/2);
    text(i, i + 1, 10 - (height/2));
  }  
  for (int i = 0; i > -width/2; i -= 50) {
    line(i, -height/2, i, height/2);
    text(i, i + 1, 10 - (height/2));
  }  
  for (int i = 0; i < height/2; i += 50) {
    line(-width/2, i, width/2, i);
    text(i, 0 - (width/2), i - 1);
  }  
  for (int i = 0; i > -height/2; i -= 50) {
    line(-width/2, i, width/2, i);
    text(i, 0 - (width/2), i - 1);
  }  
}

void draw() {
}

void mousePressed() {
  ellipse(mouseX, mouseY, 4, 4);
  text( "x: " + (mouseX - width/2) + " y: " + (mouseY - height/2), mouseX + 2, mouseY );  
}
