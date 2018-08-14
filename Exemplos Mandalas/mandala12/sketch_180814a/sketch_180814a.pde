// https://www.openprocessing.org/sketch/580078/

PVector [][]pos = new PVector [20][20];
int r = 300;

void setup() {
  size(640, 360, P3D);
  strokeWeight(2);
  colorMode(HSB, pos.length-1);

  for (int j = 0; j < pos.length; j++) {
    float theta = map(j, 0, pos.length, 0, TWO_PI);
    float z = r*sin(theta);

    for (int i = 0; i < pos[0].length; i++) {
      float rho = map(i, 0, pos[0].length, 0, TWO_PI);
      float x = r*cos(theta)*cos(rho);
      float y = r*cos(theta)*sin(rho);

      pos[j][i] = new PVector(x, y, z);
    }
  }
}

void draw() {
  background(0);
  translate(width/2, height/2, -width/2);
  
  for (int j = 0; j < pos.length-1; j++) {
    stroke((j+floor(frameCount/5))%(pos.length-1), 200, 200);
    
    for (int i = 0; i < pos[0].length-1; i++)
      line(pos[j][i].x, pos[j][i].y, pos[j][i].z, pos[j+1][i+1].x, pos[j+1][i+1].y, pos[j+1][i+1].z);
  }
}
