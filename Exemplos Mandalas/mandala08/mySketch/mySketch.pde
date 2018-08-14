color[] colors = {
  #23E5CA,
  #23E5CA,
  #23E5CA,
  #100DE6,
  #F94325,
  #DF628A,
  #E2658B,
  #F0BB73,
  #453CA5
};

Dot[] dots = new Dot[300];
float center;
int modulo = 30;

void setup() {
  size(600, 600); 
  frameRate(30);
  background(255);
  noStroke();
  
  center = width/2;
  
  for(int i=0; i<dots.length; i++){
    dots[i]= new Dot();
    dots[i].setup(i);
  }
} 

void draw() {
  
  for(int i=0; i<dots.length; i++){
    int modIndex = mod(i-modulo, modulo);
    if(dots[i].radius>dots[modIndex].radius) {
      dots[i].amplitude = dots[modIndex].amplitude;
      dots[i].size = dots[modIndex].size;
      dots[i].col = dots[modIndex].col;
    }else if(random(1)>0.95){
      dots[i].amplitude = random(1);
      dots[i].size = random(1);
      dots[i].col = colors[floor(random(colors.length))];
    }
    
    dots[i].update();
    dots[i].draw();
  }
}

int mod(int x, int m) {
    return (x%m + m)%m;
}

class Dot
{
  PVector pos;
  float velocity;
  float counter;
  float size;
  float curSize = 0;
  float amplitude;
  float curAmplitude = 0;
  float radius = 0;
  float radiusCounter = 0;
  int index;
  color col;
  color curCol;
  
  void setup(int i) {
   index = i;
   counter = random(1000);
   velocity = random(50, 100);
   pos = new PVector(0, 0, 10);
  }
  
  void update(){
   curAmplitude+=(amplitude-curAmplitude)*0.001;
   curCol = lerpColor(curCol, col, .03);
   radiusCounter-=1.5;
   radius = radiusCounter + curAmplitude*100;
   if(radius < 0) {
     radiusCounter = center/2 + index/modulo*10;
     curSize = 0;
   }else{
     curSize+=(size-curSize)*0.01;
   }
   pos.x = cos((index+frameCount/velocity)/modulo*TWO_PI)*radius+center;
   pos.y = sin((index+frameCount/velocity)/modulo*TWO_PI)*radius+center; 
  }
  
  void draw(){
    fill(curCol);
    pushMatrix();
    ellipse(pos.x, pos.y, curSize*10, curSize*10);
    popMatrix();
  }
}