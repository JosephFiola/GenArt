void setup(){
  size(800,800);
  pixelDensity(displayDensity());
  background(30);
  strokeWeight(5);
  
  float radius = width/4;
  int centX = width/2;
  int centY = height/2;
  
  stroke(150);
  noFill();
  ellipse(centX, centY, radius*2, radius*2);
  
  stroke(230);
  strokeWeight(1);
  
  float x,y;
  float noiseVal = random(10);
  float radVariance, thisRadius, rad;
  beginShape();
    fill(50,200);
    for(float ang = 0; ang<=360; ang += 1){
     noiseVal += 0.1;
     radVariance = 60 * customNoise(noiseVal);
     
     thisRadius = radius + radVariance;
     rad = radians(ang);
     x = centX + (thisRadius * cos(rad));
     y = centY + (thisRadius * sin(rad));
     
     curveVertex(x,y);
    }
    endShape();
    
    save(getClass().getSimpleName() + ".png");
}

float customNoise(float value) {
 float retValue = pow(sin(value), 3);
 return retValue;
}
  