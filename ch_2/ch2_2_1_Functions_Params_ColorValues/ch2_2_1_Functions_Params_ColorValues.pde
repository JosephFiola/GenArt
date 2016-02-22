size(800, 800);	
pixelDensity(displayDensity()); //smooth lines on Retina displays
background(30); 

stroke(150); 
strokeWeight(4);  

line(width/2 - 300, height/2 - 300, width/2 + 300, height/2 + 300);
line(width/2 + 300, height/2 - 300, width/2 - 300, height/2 + 300);	

fill(0,150); 
ellipse(width/2, height/2, 300, 300);    



saveFrame("export/" + getClass().getSimpleName() + ".png");