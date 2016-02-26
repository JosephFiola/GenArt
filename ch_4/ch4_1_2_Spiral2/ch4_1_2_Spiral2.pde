size(800,800,P3D);
pixelDensity(displayDensity());
background(30);
strokeWeight(2);
stroke(230,200);


float radius = 0;
int centX = width/2;
int centY = height/2;

float x,y;
float lastx = -999;
float lasty = -999;

for(float ang = 0; radius <=width/2; ang +=106){
 radius +=0.5;
 float rad = radians(ang);
 x = centX + (radius * cos(rad));
 y = centY + (radius * sin(rad));
 
 if(lastx > -999){
  line(x,y,lastx,lasty);   
 }
 lastx=x;
 lasty=y;
}


save(getClass().getSimpleName()+System.currentTimeMillis()+  ".png");