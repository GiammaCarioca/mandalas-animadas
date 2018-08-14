// https://www.openprocessing.org/sketch/538426

void setup(){
  fullScreen();
  background(207,199,155);
}

void draw(){ 
  fill(207,200,149);
  rect(0,0,width,height);
  translate(width/2,height/2);
  for(int x=1; x<250; x=x+1){
 
  noFill();
  stroke(121,144,136);
   
  rect(250,x/10,x,x/2);
  rect(100,x/8,x/5,x);
  rotate(mouseX+mouseY);
  strokeWeight(1);
   
  stroke(196,128,64);
  line(150,x/5,x/4,250);
  strokeWeight(.5);
   
  noFill();
  stroke(126,146,139);
  rect(215,x/10,x,x/2);
    
  stroke(46,38,36);
  line(50,x/5,x/2,50);
  strokeWeight(.3);
  }
}


/*P5.JS

function setup(){
  createCanvas(windowWidth,windowHeight);
  background(207,199,155);
}


function draw(){ 
  fill(207,200,149);
  rect(0,0,windowWidth,windowHeight);
  translate(windowWidth/2,windowHeight/2);
  for(var x=1; x<250; x=x+1){
 
  noFill();
  stroke(121,144,136);
   
  rect(250,x/10,x,x/2);
  rect(100,x/8,x/5,x);
  rotate(mouseX+mouseY);
  strokeWeight(1);
   
  stroke(196,128,64);
  line(150,x/5,x/4,250);
  strokeWeight(.5);
   
  noFill();
  stroke(126,146,139);
  rect(215,x/10,x,x/2);
    
  stroke(46,38,36);
  line(50,x/5,x/2,50);
  strokeWeight(.3);
  }
}*/
