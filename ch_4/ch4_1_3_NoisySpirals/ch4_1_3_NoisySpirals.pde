size(800,800);
pixelDensity(displayDensity());
background(30);
strokeWeight(3);
stroke(230);


float radius = 10;
int centX = width/2;
int centY = height/2;

float x,y;
float lastx = -999;
float lasty = -999;
float radiusNoise = random(10);

for(float ang = 0; radius <=width/2.3; ang +=5){
 radiusNoise +=0.05;
 radius += 0.5;
 float thisRadius = radius + (noise(radiusNoise) * 200) -100;
 float rad = radians(ang);
 x = centX + (thisRadius * cos(rad));
 y = centY + (thisRadius * sin(rad));
 
if(lastx > -999){
  line(x,y,lastx,lasty);   
 }
 lastx=x;
 lasty=y;
}


save(getClass().getSimpleName() + ".png");