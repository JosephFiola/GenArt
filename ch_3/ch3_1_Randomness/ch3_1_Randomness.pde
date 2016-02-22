size(800,800);
pixelDensity(displayDensity());
background(30);
strokeWeight(5);

stroke(150);
line(20,height/2,width-20,height/2);

stroke(230);
float randx = random(width);
float randy = random(height);
line(20, height/2, randx,randy);


save("export"+"/"+getClass().getSimpleName()+  ".png");