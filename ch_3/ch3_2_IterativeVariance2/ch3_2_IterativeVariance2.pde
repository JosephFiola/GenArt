size(800,800);
pixelDensity(displayDensity());
background(30);
strokeWeight(5);
stroke(230);

int step = 10;
float lastx = -999;
float lasty = -999;
float y = height/2;
int borderx = 20;
int bordery = height-100;
for(int x=borderx; x<=width-borderx; x+=step){
  y = bordery + random(height - 2* bordery);
 if(lastx > -999){
  line(x,y, lastx,lasty); 
 }
 lastx=x;
 lasty=y;
}



save("export"+"/"+getClass().getSimpleName()+  ".png");