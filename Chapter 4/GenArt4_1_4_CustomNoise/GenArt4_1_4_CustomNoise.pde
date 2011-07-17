void setup() {
  size(500, 300);
  background(255);
  strokeWeight(5);
  smooth();

  float radius=100;
  int centX=250;
  int centY=150;

  stroke(0, 30);
  noFill();
  ellipse(centX, centY, radius*2, radius*2);

  stroke(20, 50, 70);
  strokeWeight(1);

  float x, y;
  float noiseval=random(10);
  float radVariance, thisRadius, rad;
  beginShape();
  fill(20, 50, 70, 50);
  for (float ang=0; ang<=360; ang+=1) {

    noiseval+=0.1;
    radVariance=30*customNoise(noiseval);

    thisRadius=radius+radVariance;
    rad=radians(ang);
    x=centX+(thisRadius*cos(rad));
    y=centY+(thisRadius*sin(rad));

    curveVertex(x, y);
  }
  endShape();

}

float customNoise(float value) {
  float retValue=pow(sin(value), 3);
  return retValue;
}


