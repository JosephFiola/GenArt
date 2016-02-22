// variables		
int diam = 40; 
int diamIncrement = diam*2;
float centX, centY;
float padding = 1.75;

// init			
void setup() {	
  size(800, 800);
  pixelDensity(displayDensity());
  frameRate(30);    
  background(30);
  centX = width/2;
  centY = height/2;
  stroke(230);
  strokeWeight(diam*0.5); 
  fill(255, 10);     
}

// frame loop	
void draw() {	
   if (diam <= centX * padding) { 
    //background(245); 
    ellipse(centX, centY, diam, diam);
    diam += diamIncrement;   
  }
}

// save image on mousePress
void mousePressed(){
  save("export"+"/"+getClass().getSimpleName()+  ".png");
}