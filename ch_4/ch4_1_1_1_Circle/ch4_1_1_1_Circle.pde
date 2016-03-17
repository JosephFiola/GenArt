size(800,800);
pixelDensity(displayDensity());
background(30);
strokeWeight(5);


float radius = width/3;
int centX = width/2;
int centY = height/2;

stroke(255,30);
noFill();
ellipse(centX, centY, radius*2, radius*2);

stroke(230);
float x,y;
float lastx = -999;
float lasty = -999;

for(float ang = 0; ang <=360; ang +=5){
 float rad = radians(ang);
 x = centX + (radius * cos(rad));
 y = centY + (radius * sin(rad));
 point(x,y);
}


save(getClass().getSimpleName()+  ".png");