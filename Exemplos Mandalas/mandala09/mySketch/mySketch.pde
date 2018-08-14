//original work by kaoru
//http://www.velvet-number.com/

int slices;

//color
float h = 0.0;
float h_range = 50;
float h_num = 0.0;

//mouse position
float easeMouseX;
float easeMouseY;
float prevMouseX;
float prevMouseY;
float easing = 0.09;

//weight
int w_range;

void setup(){
	size(600, 600);
  	colorMode(HSB, 100);
	background(100, 0, 100);
  	mousePressed();
}

void draw(){
	h = abs(sin(h_num)) * 30 + h_range;
	h_num += 0.1;
	easeMouseX += (mouseX - easeMouseX) * easing;
	easeMouseY += (mouseY - easeMouseY) * easing;
	for(int i = 0; i<slices; i++){
		pushMatrix();
		translate(width/2,height/2);
		rotate(radians(i*360/slices));
		drawLine();
		popMatrix();
	}
	prevMouseX = easeMouseX;
	prevMouseY = easeMouseY;
}

void mousePressed(){
	slices = int(random(15) + 3);
	h_range = random(0,80);
	w_range = int(random(7) + 1);
	easeMouseX = prevMouseX = mouseX;
	easeMouseY = prevMouseY = mouseY;
	background(100, 0, 100);
}

void drawLine(){
	for(int i = 0; i<5; i++){
		stroke(h, 70, 50 + i*13);
		float weight = dist(easeMouseX, easeMouseY, prevMouseX, prevMouseY);
		strokeWeight(weight/w_range);
		if(i%2 == 0){
			line(easeMouseX-(width/2)- i, easeMouseY-(height/2)- i, prevMouseX-(width/2)- i, prevMouseY-(height/2)- i);		
		}else{ 
			line(easeMouseX-(width/2) + i, easeMouseY-(height/2) + i, prevMouseX-(width/2) + i, prevMouseY-(height/2) + i);				
		}
	}
}