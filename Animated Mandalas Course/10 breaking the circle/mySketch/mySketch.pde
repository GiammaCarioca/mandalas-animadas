void setup(){
  fullScreen();
  background(0);
  noFill();
  stroke(255,40);
}

void draw(){
  float t = (float)frameCount;
  translate(width/2, height/2);

  // o mesmo sketch de antes
  ellipse(sin(t/100)*100, cos(t/100)*100, 50, 50);
	
	// mais rápido!
  //ellipse(sin(t/50)*100, cos(t/50)*100, 50, 50);
	
	// mudando a largura do círculo
  //ellipse(sin(t/50)*50, cos(t/50)*100, 50, 50);
	
	// mudando a altura do círculo
  //ellipse(sin(t/50)*100, cos(t/50)*50, 50, 50);
	
	// um círculo menor!
	//ellipse(sin(t/50)*50, cos(t/50)*50, 50, 50);
	
	//zigzag com números múltiplos um do outro
  //ellipse(sin(t/10)*50, cos(t/50)*50, 50, 50);
	//ellipse(sin(t/10)*200, cos(t/50)*200, 100, 100);
	
	//zig zag com números não múltiplos um do outro; 
	//ellipse(sin(t/63)*200, cos(t/13)*200, 100, 100);
	
  // usando "t" mudamos os parâmetros ao longo do tempo
  // adicionando "t" depois da função (ou antes!) muda o centro da onda 
	//ellipse(sin(t/50)*50+t, cos(t/50)*50, 50, 50);

  // adicionando "t" ao "scalar" muda o tamanho da onda ao longo do tempo
	//ellipse(sin(t/50)*(50+t), cos(t/50)*50, 50, 50);
	
	// espiral
  //ellipse(sin(t/50)*t, cos(t/50)*t, 50, 50);
	
	// espiral mais lenta
  //ellipse(sin(t/50)*(t/10), cos(t/50)*(t/10), 50, 50);
	
	// mudando o tamanho da ellipse ao longo do tempo
  //ellipse(sin(t/50)*(t/10), cos(t/50)*(t/10), t, t); 
  
  //ellipse(sin(t/50)*(t/10), cos(t/50)*(t/10), t/2, t/2); 
	
  // tinkering! cool stuff!
  //ellipse(sin(t/50)*(t/10), cos(t/50)*(t/10), t/sin(t), t/sin(t));
	//ellipse(sin(t/50)*(t/10), cos(t/50)*(t/10), t/sin(t), t/cos(t));
	//ellipse(sin(t/50)*(t/10), cos(t/50)*(t/10), t/tan(t), t/cos(t));
	//ellipse(sin(t/50)*(t/10), cos(t/50)*(t/10), tan(t), t/cos(t));
	//ellipse(sin(t/50)*(t/10), cos(t/50)*(t/10), sin(t)*20, cos(t));
	//ellipse(sin(t/50)*(t/10), cos(t/50)*(t/10), sin(t)*40, 40);
	//ellipse(sin(t/50)*(t/5), cos(t/50)*(t/5), sin(t)*100, 100);
	//ellipse(sin(t/50)*(t/5), cos(t/50)*(t/5), sin(t)*30, 100);
}
