size(800,800);
pixelDensity(displayDensity());
background(30);
strokeWeight(5);

stroke(230, 30);
line(20,height/2,width-20,height/2);

stroke(230);

int step = 10;
float lastx = -999;
float lasty = -999;
float ynoise = random(10);
float y;

for(int x=20; x<=width-20; x+=step){
  y = height/2 + noise(ynoise)*80-40;
  if (lastx > -999){
    line(x,y,lastx,lasty);
  }
  lastx=x;
  lasty=y;
  ynoise+=0.1;
}

save("export"+"/"+getClass().getSimpleName()+  ".png");