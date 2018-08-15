int t = 0;
float b = 0;

void setup() {
  size(790,400);
  background(200,0,200);
     stroke(0,88,91);
     strokeWeight(5);
  line(0, 200, 800, 200);
     stroke(0);
     strokeWeight(3);
  line(150,199,150,140);
  
  line(550,100,750,100);
  line(549,101,549,115);
  line(751,101,751,115);
  
  line(350,100,350,115);
  line(450,302,450,285);
  
}
void draw(){

  translate(0,height/2);
  b = 70*sin(t*PI/100);
  
  stroke(0,193,142);
  strokeWeight(3);
  fill(0,77,66);
  ellipse(t,b,15,15);
  t = t+1;
  if (t>800){
  t = 0;
  }
  textSize(20);
  fill(0);
text("amplitude",110,20);
text("comprimento de onda",542,-110);
text("crista",330,-105);
text("vale",430,120);
}
