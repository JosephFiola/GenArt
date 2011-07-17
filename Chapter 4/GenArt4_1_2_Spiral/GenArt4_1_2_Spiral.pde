size(500, 300);
background(255);
strokeWeight(5);
smooth();

float radius=100;
int centX = 250;
int centY = 150;

stroke(0, 30);
noFill();
ellipse(centX, centY, radius*2, radius*2);

stroke(20, 50, 70);
radius=10;
float x, y;
float lastx=-999;
float lasty=-999;
for (float ang=0;ang<=1440;ang+=5) {
  radius+=0.5;
  float rad=radians(ang);
  x = centX+(radius*cos(rad));
  y = centY+(radius*sin(rad));
  point(x, y);
  saveFrame("GenArt4_1_2_Spiral.jpg");
}

