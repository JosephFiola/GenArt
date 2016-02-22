int diam = 10;
int bgColor = 30;
int strokeThickness = 5;
float centX, centY;

void setup() {
  size(800, 800);
  pixelDensity(displayDensity());
  frameRate(30);
  background(bgColor);
  stroke(230);
  centX=width/2;
  centY=height/2;

  
}

void draw() {
  if (diam<=width-200) {
    background(bgColor);
    strokeWeight(strokeThickness);
    fill(230,10);
    ellipse(centX, centY, diam, diam);

    int tempdiam=diam;
    while (tempdiam > 10) {
      strokeWeight(strokeThickness/4);
      ellipse(centX, centY, tempdiam, tempdiam);
      tempdiam-=11;
    }
    diam+=10;
  } 
}

// save image on mousePress
void mousePressed(){
  save("export"+"/"+getClass().getSimpleName()+".png");
}