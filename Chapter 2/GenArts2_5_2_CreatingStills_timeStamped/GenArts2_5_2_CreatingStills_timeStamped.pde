/*
Export image with any keyPress.
Trying to get the saveFrame to timestamp the file name to ensure no overwriting.
Don't know how to format the hour into 2 digits. Midnight outputs 0 instead of 00.
So timestamp looks wierd but at least with year hour minute second,
it should result in a unique file name every time.
*/


String hour = String.valueOf(hour());
String minute = String.valueOf(minute());
//TimeStamp = hour,minute;
void setup() {
  size(500, 300);
  background(180);
  strokeWeight(4);
  strokeCap(SQUARE);
  for (int h =10; h <=height; h+=10) {
    stroke(0, 255-h);
    line(10, h, width-20, h);
    stroke(255, h);
    line(10, h+4, width-20, h+4);
  }
}

void draw(){}

void keyPressed(){
saveFrame("screen"+year()+hour()+minute()+second()+".jpg");
}
