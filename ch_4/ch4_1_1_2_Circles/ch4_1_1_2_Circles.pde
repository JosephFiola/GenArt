size(800,800);
pixelDensity(displayDensity());
background(30);
strokeWeight(2);


float radius = width/3;
int centX = width/2;
int centY = height/2;

stroke(230);
noFill();
ellipse(centX, centY, radius*2, radius*2);


float x,y;
float lastx = -999;
float lasty = -999;

for(float ang = 0; ang <=360; ang +=10){
 float rad = radians(ang);
 x = centX + (radius * cos(rad));
 y = centY + (radius * sin(rad));
 
 strokeWeight(10);
 point(x,y);
 
 strokeWeight(2);
 ellipse(x,y,200,200);
}


save(getClass().getSimpleName()+  ".png");