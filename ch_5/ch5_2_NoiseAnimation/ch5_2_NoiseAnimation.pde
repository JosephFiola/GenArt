int detail = 20;
int lineLength = 40;
float xStart = random(10);
float xNoise = xStart;
float yNoise = random(10);

void setup(){
  size(800,800,P3D);
  pixelDensity(displayDensity());
  background(30);
  strokeWeight(1.5);
  
  for (int y = 0; y <= height; y+=detail){
   yNoise += 0.1;
   xNoise = xStart;
   for (int x = 0; x <= width; x+=detail){
    xNoise += 0.1;
    drawPoint(x,y,noise(xNoise,yNoise));
   }
  }
save(getClass().getSimpleName() +"_"+ System.currentTimeMillis() +".png");
}

void drawPoint(float x, float y, float noiseFactor){
 pushMatrix();
 translate(x,y);
 rotate(noiseFactor * radians(540));
 float edgeSize = noiseFactor * 150;
 float grey = 150 + (noiseFactor * 120);
 float alph = 150 + (noiseFactor * 120);
 noStroke();
 fill(grey, alph);
 ellipse(0,0,edgeSize,edgeSize/2);
 popMatrix();
}