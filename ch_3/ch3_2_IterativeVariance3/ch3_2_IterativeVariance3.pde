size(800,800);
pixelDensity(displayDensity());
background(30);
strokeWeight(5);
stroke(230);

float xstep = 10;
float ystep = 10;
float lastx = 20;
float lasty = height/2;
float y = lasty;

for(int x=20; x<=width-20; x+=xstep){
  ystep = random(20)-10;
  y+=ystep;
  line(x,y, lastx,lasty);
  lastx=x;
  lasty=y;
}

save("export"+"/"+getClass().getSimpleName()+  ".png");