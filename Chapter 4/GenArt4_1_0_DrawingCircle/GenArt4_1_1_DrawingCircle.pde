/*
starting with only the lines
 float x = centerX+(radius*cos(angle));
 float y = centerY+(radius*sin(angle));
 from page 67, started experimenting to see if I can draw a circle
 before reading on.
 This is what I came up with.
 */

float speed = 0.01;      // values 1, 0.01 work well
String outputFile = "GenArt4_1_1_DrawingCircle_speed-"+speed+"-####.jpg";

float angle = 0;
float centerX =200;   // For some reason width/2 returns 0. ?
float centerY = 200;  // height/2 returns 0. Not sure why?
float radius = 200;



float r=random(255);
float g=random(255);
float b=random(255);

//amount to augment or decrement color value
float colorMult = 2;
float colorMultR = colorMult;
float colorMultG = colorMult;
float colorMultB = colorMult; 


void setup() {
  size(400, 400);
  background(255);
  smooth();
}



void draw() {
  
  //draw transparent BG rect every number of skipFrames
/*
  if (drawRect == skipFrames) {
    noStroke();
    fill(255, 5);
    rect(0, 0, width, height);
    drawRect = 0;
  }
  drawRect++;
  */
  float x = centerX+(radius*cos(angle));
  float y = centerY+(radius*sin(angle));

//color and line properties
  strokeWeight(1);
  stroke(r, g, b);
  r+=random(1)*colorMultR;
  g+=random(1)*colorMultG;
  b+=random(1)*colorMultB;
  println("red = "+r+" green = "+g+" blue = "+b); 
  if (r>=255 ||r<=0){ colorMultR*=-1;}
  if (g>=255 ||g<=0){ colorMultG*=-1;}
  if (b>=255 ||b<=0){ colorMultB*=-1;}
 

  //draw line  
  line(centerX, centerY, x, y);
  angle+=speed;

}

void keyPressed(){
    saveFrame(outputFile);

 
}

