/*
HYPNOTIZOID EDIT
 added code to make circle grow and shrink.
 also to make the inner circles grow and shrink.
 
 
 */
int diam = 10;
float centX, centY;
boolean grow = true;

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
  println(grow + " " + diam);

//grow circle
  if (grow == true) {
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
 //shrink circle
  if (grow == false) {
    if (diam>=10) {
      println("start shrinking");
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
     
      diam-=10;
    }
  }
  
  
  if (diam >= 400) {
    grow = false;
  }
  if (diam <= 10) {
    grow = true;
  }
}

