/*Dando ao seno e ao cosseno os mesmos ângulos, ou seja,
os mesmo valores dentro dos parênteses, vamos criar um movimento circular*/

void setup(){
  fullScreen();
  background(0);
  noFill();
  stroke(255,40);
}

void draw(){
  float t = (float)frameCount;
  
  // desenhando no centro do canvas
  translate(width/2, height/2);
  
  // mesmo ângulos para seno e cosseno (t/100)
  ellipse(sin(t/100)*100, cos(t/100)*100, 50, 50);
}
