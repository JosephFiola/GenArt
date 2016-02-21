/*
HYPNOTIZOID EDIT
 added code to make circle grow and shrink.
 also to make the inner circles grow and shrink.
 */
int diam = 10;
int bgColor = 30;
float centX, centY;
boolean grow = true;
int strokeWidth = 10;
int strokeWidthInner = 1;

void setup() {
  size(800, 800);
  pixelDensity(displayDensity());
  frameRate(30);
  background(bgColor);
  centX=width/2;
  centY=height/2;
  stroke(240);
  fill(255, 50);
}

void draw() {
  
background(bgColor);

//grow circle
  if (grow == true) {
    if (diam<=width) {

      strokeWeight(strokeWidth);
      fill(255, 150);
      ellipse(centX, centY, diam, diam);

      strokeWeight(strokeWidthInner);
      noFill();

      int tempdiam=diam;
      while (tempdiam > 10) {
        ellipse(centX, centY, tempdiam, tempdiam);
        tempdiam-=11;
      }
      diam+=10;
    }
  }
  
 //shrink circle
  if (grow == false) {
    if (diam>=10) {

      strokeWeight(strokeWidth);
      fill(255, 150);
      ellipse(centX, centY, diam, diam);

      strokeWeight(strokeWidthInner);
      noFill();

      int tempdiam=diam;
      while (tempdiam > 10) {
        ellipse(centX, centY, tempdiam, tempdiam);
        tempdiam-=11;
     }
     
      diam-=10;
    }
  }
  
  
  if (diam >= width-width/4) {
    grow = false;
  }
  if (diam <= 0) {
    grow = true;
  }
}

// save image on mousePress
void mousePressed(){
  save("export"+"/"+getClass().getSimpleName()+".png");
}