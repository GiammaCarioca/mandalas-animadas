/**
* wavy circles
*
* @author aa_debdeb
* @date 2017/01/10
*/

void setup(){
  size(640, 640);
  background(0, 0, 10);
}

void draw(){
  fill(0, 0, 10, 100);
  noStroke();
  rect(0, 0, width, height);
  
  translate(width / 2, height / 2);
  
  noFill();
  for(int i = 0; i < 10; i++){
    float radiusBase = 25 * (i + 1);
    float angleBase = cos(map(frameCount % 100, 0, 99, -PI, PI)) * HALF_PI;
    if(i % 2 == 0){
      stroke(249, 231, 0, 200);
    } else {
      stroke(216, 46, 139, 200);
      angleBase *= -1;
    }
    beginShape();
    for(float angle = 0; angle < 360; angle += 1){
      float radian = radians(angle);
      float radius = radiusBase + 10 * sin(radian * 24 + angleBase);
      vertex(radius * cos(radian), radius * sin(radian));
    }
    endShape(CLOSE);
  }
}