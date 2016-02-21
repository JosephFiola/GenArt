size(800, 800);	
pixelDensity(displayDensity()); //smooth lines on Retina displays
background(240); 

float padding = 0.75;
float centX = width/2;
float centY = height/2;
stroke(255); 
strokeWeight(2);  
fill(30);	

ellipse(centX, centY, centX * padding, centY * padding);		
line(centX - centX * padding, centY - centY * padding, centX + centX * padding, centY + centY * padding);
line(centX + centX * padding, centY - centY * padding, centX - centX * padding, centY + centY * padding);	

saveFrame("export/" + getClass().getSimpleName() + ".png");