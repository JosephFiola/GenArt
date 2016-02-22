size(800,800);
pixelDensity(displayDensity());
background(30);
strokeWeight(5);
stroke(230,200);

int step = 10;
float lastx = -999;
float lasty = -999;
float y = height/2;
int border = 20;
for(int x=border; x<=width-border; x+=step){
 if(lastx > -999){
  line(x,y, lastx,lasty); 
 }
 lastx=x;
 lasty=y;
}



save("export"+"/"+getClass().getSimpleName()+  ".png");