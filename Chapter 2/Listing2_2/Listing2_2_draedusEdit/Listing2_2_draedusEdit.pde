int diam = 10;
float centX, centY;

void setup() {
  size(500, 300);
  frameRate(24);
  smooth();
  background(180);
  centX=width/2;
  centY=height/2;
  stroke(0);
  strokeWeight(5);
  fill(255, 50);
}

void draw() {
  if (diam<=400) {
    background(180);

    strokeWeight(5);
    fill(255, 50);
    ellipse(centX, centY, diam, diam);

    strokeWeight(0);
    noFill();

    int tempdiam=diam;
    while (tempdiam > 10) {
      ellipse(centX, centY, tempdiam, tempdiam);
      tempdiam-=11;
    }


    diam+=10;
  }
}

