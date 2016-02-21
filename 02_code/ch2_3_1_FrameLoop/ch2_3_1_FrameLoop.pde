// variables		
int    diam = 10;
float  centX, centY;
int    bgColor = 245;
float padding = 1.75;

// init			
void setup() {	
  size(800, 800);
  pixelDensity(displayDensity());
  frameRate(30);    
  smooth();
  background(bgColor);
  centX = width/2;
  centY = height/2;
  stroke(0);
  strokeWeight(5); 
  fill(255, 50);     
}

// frame loop	
void draw() {	
   if (diam <= centX * padding) { 
    background(bgColor); 
    ellipse(centX, centY, diam, diam);
    diam += 10;
  }
}

// save image on mousePress
void mousePressed(){
  save("export"+"/"+getClass().getSimpleName()+".png");
}