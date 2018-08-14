
void setup(){
  fullScreen();
  background(127);
  //frameRate(10);
}

void draw(){
  //background(255);
	//float t = (float)frameCount;
  translate(0, height/2);
	
	fill(0);
	stroke(255);
  ellipse(frameCount, 0, 100, 100);
	
  //ellipse(frameCount, sin(frameCount), 100, 100);
	
  // mudar o tamanho da onda (amplitude)
  //ellipse(frameCount, sin(frameCount)*100, 100, 100);
	
  // converter o ângulo de graus para radianos
  //ellipse(frameCount, sin(radians(frameCount))*100, 100, 100);
	//ellipse(frameCount, sin(radians(t))*100, 100, 100);
	
  // mudar a velocidade da onda dividindo por um número (muda o comprimento da onda)
	//ellipse(frameCount, sin(t/50)*100, 100, 100);
	//ellipse(frameCount, sin(t/10)*100, 100, 100);
	//ellipse(frameCount, sin(t/100)*100, 100, 100);
	
	//ellipse(t, sin(t/100)*100, 100, 100);
	//ellipse(t, cos(t/100)*100, 100, 100);
}




// Mudando o comprimento da onda (comparação)

/*
void setup(){
  fullScreen();
  background(127);
  //frameRate(10);
}

void draw(){
	float t = (float)frameCount;
	fill(0);
	stroke(255,40);
	
	translate(0, (height/2)/2);
	ellipse(t, sin(t/50)*50, 50, 50);
	
	translate(0, height/2);
	ellipse(t, sin(t/10)*50, 50, 50);
	
	translate(0, (height/2)/-2);
	ellipse(t, sin(t/100)*50, 50, 50);
}
*/
