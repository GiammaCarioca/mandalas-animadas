void setup() {
  size(600,400);
  background(255);
}

void draw() {
  stroke(155);
  strokeWeight(0.4);
  
 for(int x=0; x<width; x+=10){
    line(x, 0, x, height);
  }
  
  for(int y=0; y<height; y+=10){
    line(0, y, width, y);
  }
}




/*
void setup() {
  size(600,400);
  background(255);
}

void draw() {
  stroke(155);
  strokeWeight(0.4);
  
 for(int x=0; x<width; x+=10){
    for(int y=0; y<height; y+=10){
      line(x, 0, x, height);
      line(0, y, width, y);
    }
  }
}*/  
