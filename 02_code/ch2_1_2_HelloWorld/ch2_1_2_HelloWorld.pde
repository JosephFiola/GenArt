pixelDensity(displayDensity()); //without this images look pixelated on Retina displays



ellipse(25,25,50,50);

saveFrame("export/" + getClass().getSimpleName() + ".png");