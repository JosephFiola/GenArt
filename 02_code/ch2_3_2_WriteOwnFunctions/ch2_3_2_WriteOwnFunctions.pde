void setup(){
 size(800,800);
 pixelDensity(displayDensity());
 background(30);
 int x = AddNumbers(1,2); //add these two numbers together
 
 //display result
 fill(240);
 textSize(width/2);
 textAlign(CENTER, CENTER);
 text(x, width/2,height/2);
 
 //save image
 saveFrame("export"+"/"+getClass().getSimpleName()+".png");

}

int AddNumbers(int a, int b){
 int returnValue = a + b;
 return returnValue;
}