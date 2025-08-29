int numberOfCircles;
float circleSize;
int counter;
int rowCounter;
float x;
float y;
int red; 
int blue;
int green;


void setup(){
  
   size(400,400);
   
  counter = 0;
  rowCounter = 0;
   
   red = 255;
   blue = 255;
   green = 255;
  
  
    numberOfCircles = 30;
    circleSize = width/numberOfCircles;
   ellipseMode(CORNER);
  
}
void draw(){
  

 
  x = circleSize*counter;
  y = circleSize*rowCounter;
 
 // Un-comment this line after completing step 6.a 
 fill(red,green,blue);
   
   ellipse(x,y,circleSize,circleSize);
  
  // Explaining conditional assignments. 
  // First part before the ?-mark, is a conditional. 
  // If this is true, the value after the ?-mark will be assigned. 
  // If not, the last value will.
  counter =  frameCount % numberOfCircles == 0 ? 0 : counter+1;
  rowCounter =  counter==0 ? rowCounter+1:rowCounter;
  
  red = counter==0 ? (int)random(255):red;
  blue = counter==0 ? (int)random(255):blue;
  green = counter==0 ? (int)random(255):green;
  
  // Explaining the modulus operator
  // Modulus is what is left when you divide one int with another int.
  // 1 % 3 = 1 (3 people can't share 1 apple without cutting it, so 1 apple is left)
  // 2 % 3 = 2
  // 3 % 3 = 0
 
  //Add the code for 6.c here
  
}
