String folder;
long timeStamp;
String sketchName;

float div = 2;
float scale = 20;
float noiseAmt = 0.01;
int grid = 5;
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
  for(float y = -(height/div); y <=(height/div); y+=grid){
    ynoise +=noiseAmt;
    float xnoise = xstart;
    for(float x = -(width/div); x<=(width/div); x+=grid){
      xnoise+=noiseAmt;
      drawPoint(x,y, noise(xnoise,ynoise));
    }  
  }  
}

void mousePressed(){
  timeStamp = System.currentTimeMillis();
  save("export"+"/"+sketchName+"_"+timeStamp+".png");
  
  background(bgColor);
  setRandom();
   
  
}

void drawPoint(float x,float y,float noiseFactor){
  pushMatrix();                 
  translate(x * noiseFactor * 4, y * noiseFactor * 4);
  float edgeSize = noiseFactor * scale;
  ellipse(0,0,edgeSize,edgeSize);
  popMatrix(); 
}

void draw(){} // draw function needed to detect mousePressed events