// https://www.openprocessing.org/sketch/392764

PFont f;
//String message = "* M * A * N * D * A * L * A * S *";
String message = "* M A N D A L A S *";

float angle;

void setup() {
  fullScreen();
  f = createFont("Futura",55,true);
}

void draw() { 
  background(0);
  fill(0, 0, frameCount);
  textFont(f);                  // Set the font
  //rotate(angle);                // Rotate by angle
  textAlign(CENTER);            
  angle += 0.001;                // Increase rotation
  //translate(mouseX, mouseY);
  translate(width/2,height/2);

  for (int i = 0; i < 600; i = i+100) {
  	rotate(angle);
    scale(0.95);
    text(message,i,frameCount);
    //text(message,i,random(i));
  for (int j = 0; j < 600; j = j+100) {
  	rotate(angle+0.5);
    scale(0.95);
    text(message,i,frameCount);
    //text(message,i,random(frameCount/2));
   }
  }    
}
