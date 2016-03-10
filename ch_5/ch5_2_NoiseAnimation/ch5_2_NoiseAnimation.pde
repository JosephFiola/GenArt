float xStart, xNoise, yStart, yNoise;

void setup(){
  size(800,800,P3D);
  pixelDensity(displayDensity());
  background(30);
  frameRate(24);
  
  xStart = random(10);
  yStart = random(10);
}

void draw(){
  background(30);
  
  xStart += 0.01;
  yStart += 0.01;
  
  xNoise = xStart;
  yNoise = yStart;
  
    for (int y = 0; y <= height; y+=5){
     yNoise += 0.1;
     xNoise = xStart;
     for (int x = 0; x <= width; x+=5){
       xNoise += 0.1;
       drawPoint(x,y, noise(xNoise, yNoise));
    }
  }
  
  println(frameRate);
}

void drawPoint(float x, float y, float noiseFactor){
 pushMatrix();
 translate(x,y);
 rotate(noiseFactor * radians(540));
 noStroke();
 float edgeSize = noiseFactor * 35;
 float grey = 150 + (noiseFactor * 120);
 float alph = 150 + (noiseFactor * 120);
 fill(grey, alph);
 ellipse(0,0,edgeSize, edgeSize/2);
 popMatrix();
}

void keyPressed(){
save(getClass().getSimpleName() +"_"+ System.currentTimeMillis() +".png");


}