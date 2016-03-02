int detail = 30;

void setup(){
  size(800,800,P3D);
  pixelDensity(displayDensity());
  background(30);
  float xStart = random(10);
  float xNoise = xStart;
  float yNoise = random(10);
  strokeWeight(1);
  stroke(230);
  
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
 rotate(noiseFactor * radians(360));
 line(0,0,20,0);
 popMatrix();
}