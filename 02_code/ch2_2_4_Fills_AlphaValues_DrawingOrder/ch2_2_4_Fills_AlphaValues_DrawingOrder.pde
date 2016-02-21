// setup and background
size(800, 800);  
pixelDensity(displayDensity());  
background(240);

float padding = 0.75;
float xCenter = width/2;
float yCenter = height/2;

// draw two crossed lines
stroke(10);   
strokeWeight(1);

line(  xCenter - (xCenter * padding),
       yCenter - (yCenter * padding),
       xCenter + (xCenter * padding),
       yCenter + (yCenter * padding)
     );
     
line(  xCenter + (xCenter * padding),
       yCenter - (yCenter * padding),
       xCenter - (yCenter * padding),
       yCenter + (yCenter * padding)
      );

// draw a filled circle too 
stroke(0, 150);     
strokeWeight(6);  
fill(255, 150);      
ellipse(xCenter, yCenter, xCenter * padding, yCenter * padding);

saveFrame("export/" + getClass().getSimpleName() + ".png");