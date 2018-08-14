//https://processing.org/reference/PFont.html
//https://processing.org/reference/textAlign_.html
//https://processing.org/reference/textLeading_.html

//PFont font;
// The font must be located in the sketch's 
// "data" directory to load successfully
//font = createFont("LetterGothicStd.ttf", 32);
//textFont(font);

void setup() {
	size(600,400);
	background(0);
	stroke(255);
}
	
void draw(){
  //textFont(font);
	fill(255);
	textAlign(CENTER);
	
	textSize(80);
  text("a + sin(b) * c", width/2, height/2);
	
	/*textSize(40);
	text("Quando sin() e cos() são usados juntos, criam um movimento circular.", width/2, height/2);*/

// Constantes
println("Constantes:");
println("QUARTER_PI = "+ QUARTER_PI);
println("HALF_PI = " + HALF_PI);
println("PI = "+ PI);
println("TWO_PI = " + TWO_PI);

// Conversão
// Graus -> Radianos
println("");
println("Graus -> Radianos");
println("90 graus em radianos: " + radians(90));
println("180 graus em radianos: " + radians(180));

// Radianos-> Graus
println("");
println("Radianos -> Graus");
println("PI em graus: " + degrees(PI));
println("TWO_PI em graus:" + degrees(TWO_PI));
}
