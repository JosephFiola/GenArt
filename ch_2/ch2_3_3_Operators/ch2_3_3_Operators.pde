void setup(){
 size(800,800);
 pixelDensity(displayDensity());
 background(30);
 
 float a = 45;
 float b = 5;
 float c = 4;
 
 float x1 = sum1(a,b,c);
 float x2 = sum2(a,b,c);
 int padding = 100;
 
 //display result
 fill(240);
 textSize(width/20);
 text("sum 1 = " + x1 +  "\nsum 2 = " + x2, padding, padding, width-padding, height-padding);
 
 //save image
 saveFrame("export"+"/"+getClass().getSimpleName()+".png");

}

float sum1(float a, float b, float c){
 float returnValue = (a+b) * (b*c);
 return returnValue;
}

float sum2(float a, float b, float c){
 float returnValue = a/(b+c);
 return returnValue;
}