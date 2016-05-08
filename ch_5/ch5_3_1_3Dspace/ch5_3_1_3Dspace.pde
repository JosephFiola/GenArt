  size(800,800,P3D);
  pixelDensity(displayDensity());
  background(30);
  
  sphereDetail(40);
  
  translate(width * 0.5, height * 0.5);
  sphere(width * 0.35);
  
  save(getClass().getSimpleName() +".png");