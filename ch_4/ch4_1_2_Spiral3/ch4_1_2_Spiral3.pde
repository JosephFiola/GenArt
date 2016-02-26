float ang = 0;
int centX, centY;
float x,y;
float radius = 0;
float radiusIncrement = 10.0;
float step = 0.0;
float stepIncrement = 0.15;

void setup(){
  size(800,800,P3D);
  pixelDensity(displayDensity());
  background(30);
  strokeWeight(1);
  stroke(230,200);
  centX = width/2;
  centY = height/2;
}

void draw(){
  background(30);
  
float lastx = -999;
float lasty = -999;
  

for(float ang = 0; radius <=width/2.5; ang +=step){
 radius +=radiusIncrement;
 float rad = radians(ang);
 x = centX + (radius * cos(rad));
 y = centY + (radius * sin(rad));
 
 if(lastx > -999){
  line(x,y,lastx,lasty);   
 }
 lastx=x;
 lasty=y;
}
  
  step+=stepIncrement;
  radius = 0;
}

//screenGrab
void keyPressed(){
  saveFrame(getClass().getSimpleName() + "_" + System.currentTimeMillis() + ".png");
}