size(800,800,P3D);
pixelDensity(displayDensity());
background(30);
strokeWeight(1);

int mColor = 0;
int mColorChange = +1;

float _radius = width/3;
float _radiusNoise = 0.0;
float centerX = width/2;
float centerY = height/2;

for (float _angle = 0; _angle <= 360; _angle++){
  
_radiusNoise += 0.01;
_radius = noise(_radiusNoise) * width/2 + 1;
  
mColor += mColorChange;
stroke(mColor,100);
if (mColor > 254) {mColorChange =-1;}
if (mColor < 0)   {mColorChange = 1;}

  
float rad = radians(_angle);

float x1 = centerX + (_radius * cos(rad));
float y1 = centerY + (_radius * sin(rad));

float opprad = rad + PI;
float x2 = centerX + (_radius * cos(opprad));
float y2 = centerY + (_radius * sin(opprad));

line(x1,y1,x2,y2);

}

save(getClass().getSimpleName()+System.currentTimeMillis()+  ".png");