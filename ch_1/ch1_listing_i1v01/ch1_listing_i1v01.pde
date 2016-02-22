String folder;
long timeStamp;
String sketchName;
int bgColor = 30;
 
void setup() {
  
  sketchName = getClass().getSimpleName();
  folder = ""+year()+"-"+hour()+"-"+minute()+"_"+second();
  
  size(800, 800);
  pixelDensity(displayDensity());
  background(bgColor);
  stroke(0,50);
  fill(255,200);
  setRandom();
}

void setRandom(){
float xstart = random(10);
  float ynoise = random(10);
  translate(width/2, height/2);
  for(float y = -(height/8); y <=(height/8); y+=3){
    ynoise +=0.02;
    float xnoise = xstart;
    for(float x = -(width/8); x<=(width/8); x+=3){
      xnoise+=0.02;
      drawPoint(x,y, noise(xnoise,ynoise));
    }  
  }  
}

void mousePressed(){
  background(bgColor);
  setRandom();
    timeStamp = System.currentTimeMillis();
  save("export"+"/"+sketchName+"_"+timeStamp+".png");
  
}

void drawPoint(float x,float y,float noiseFactor){
  pushMatrix();                 
  translate(x * noiseFactor * 4, y * noiseFactor * 4);
  float edgeSize = noiseFactor * 26;
  ellipse(0,0,edgeSize,edgeSize);
  popMatrix(); 
}

void draw(){} // need draw function so that pallication loops and detects mousePressed