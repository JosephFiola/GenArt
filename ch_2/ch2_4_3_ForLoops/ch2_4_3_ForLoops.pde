void setup() {
  size(800, 800);
  pixelDensity(displayDensity());
  background(120);
  strokeWeight(4);
  strokeCap(SQUARE);
  
  for (int h = 10; h <=height; h+=10) { 
    stroke(0, 255-map(h,0,height,0,255));
    line(10, h, width-20, h);
    stroke(255, map(h, 0,height, 0, 255));
    line(10, h+4, width-20, h+4);
  }
  
    save("export"+"/"+getClass().getSimpleName()+  ".png");
}