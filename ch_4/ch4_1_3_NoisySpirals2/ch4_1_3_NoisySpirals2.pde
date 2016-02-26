size(800,800);
pixelDensity(displayDensity());
background(30);
strokeWeight(0.5);

int centX = width/2;
int centY = height/2;

float x,y;
for(int i=0; i<100; i++){
  float lastx = -999;
  float lasty = -999;
  float radiusNoise = random(10);
  float radius = 10;
  stroke(random(255));

  int startAngle = int(random(360));
  int endAngle = 0 + int(random(width/2));
  int angleStep = 5 + int(random(3));
  
  for(float ang = startAngle; radius <= endAngle; ang += angleStep){
    radiusNoise +=0.05;
    radius += 0.5;
    float thisRadius = radius + (noise(radiusNoise) * 200) -100;
    float rad = radians(ang);
    x = centX + (thisRadius * cos(rad));
    y = centY + (thisRadius * sin(rad));
    
    if(lastx > -999){
      line(x,y,lastx,lasty);
      }
    lastx=x;
    lasty=y;
  }
}


save(getClass().getSimpleName() + ".png");