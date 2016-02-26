size(800,800,P3D);
pixelDensity(displayDensity());
background(30);
strokeWeight(2);

int mColor = 255;

float _radius = width/3;
float centerX = width/2;
float centerY = height/2;

for (float _angle = 0; _angle <= 179; _angle++){
  
stroke(mColor);
mColor--;
  

float rad = radians(_angle);
float x1 = centerX + (_radius * cos(rad));
float y1 = centerY + (_radius * sin(rad));

float opprad = rad + PI;
float x2 = centerX + (_radius * cos(opprad));
float y2 = centerY + (_radius * sin(opprad));

line(x1,y1,x2,y2);

}

save(getClass().getSimpleName()+System.currentTimeMillis()+  ".png");