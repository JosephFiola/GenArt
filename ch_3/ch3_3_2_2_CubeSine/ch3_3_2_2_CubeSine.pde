size(800,800,P3D);
pixelDensity(displayDensity());

background(30);
stroke(230);
strokeWeight(5);

float xstep = 1;
float lastx = -999;
float lasty = -999;
float angle = 0;
float y = height/2;



for (int x=20; x<=width-20; x+=xstep){
 float rad = radians(angle);
 y = height/2 + (pow(sin(rad), 3) * 30);
 if (lastx > -999) {
   line(x, y, lastx, lasty);
 }
 lastx = x;
 lasty = y;
 angle++;
}

save(getClass().getSimpleName()+ ".png");