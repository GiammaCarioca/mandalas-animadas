// https://www.openprocessing.org/sketch/504464

int j=0;
int f=256;

void setup() {
  size(512,512);
  background(255);
}

void draw() {
  translate(f,f);

  int i=j++;
  
  while(i-->1){
  stroke(i);
  line(i%99,0,0,200);
  rotate(1);
  }
}





/*
j=0;
f=256;

function setup() {
  createCanvas(512,512);
}

function draw() {
  translate(f,f);

  i=j++;
  
  while(i-->1){
  stroke(i);
  line(i%99,0,0,200);
  rotate(1);
  }
}*/