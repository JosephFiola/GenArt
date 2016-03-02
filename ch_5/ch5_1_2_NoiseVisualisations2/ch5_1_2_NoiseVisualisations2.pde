int detail = 30;

void setup(){
  size(800,800,P3D);
  pixelDensity(displayDensity());
  background(30);
  float xStart = random(10);
  float xNoise = xStart;
  float yNoise = random(10);
  rectMode(CENTER);
  strokeWeight(2);
  stroke(230);
  fill(0);
  
for (int y = 0; y <= height; y+=detail){
 yNoise += 0.1;
 xNoise = xStart;
 for (int x = 0; x <= width; x+=detail){
  xNoise += 0.1;

  drawPoint(x,y,noise(xNoise,yNoise));
 }
}
save(getClass().getSimpleName()+System.currentTimeMillis()+  ".png");
}

void drawPoint(float x, float y, float noiseFactor){
 float len = detail * 1.5 * noiseFactor;
 rect(x, y, len, len);
}