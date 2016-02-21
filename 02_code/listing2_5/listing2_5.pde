
// variables
int diam = 10;  
float centX, centY;

// init
void setup() {
  size(800, 800);
  pixelDensity(displayDensity());
  frameRate(24);
  smooth();
  background(240);
  centX = width/2;
  centY = height/2;
  stroke(10);
  strokeWeight(1); 
  fill(255,10); 
}

// frame loop
void draw() {
  if (diam <= width/1.25) {
     //background(180,180, 180, 0);	
    // draw the circle 
    ellipse(centX, centY, diam, diam);
    diam += 10;
  }
}