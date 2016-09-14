 //declare bacteria variables here  
 Bacteria [] colony; 
 void setup()   
 {     
 	//initialize bacteria variables here 
 	size(500, 500);
 	colony = new Bacteria[5];
 	for(int i= 0; i < colony.length; i++){
 		colony[i] = new Bacteria();
 	}
 }   
 void draw()   
 {    
 	//move and show the bacteria  
  background(0); 
for(int i= 0; i < colony.length; i++){
 		colony[i].jump();
 		colony[i].show();
 	}
 } 
 
 class Bacteria    
 {     
 	//lots of java!
 	int theX, theY;
 Bacteria(){
 		theX = 250;
 		theY = 250;
 	}  
 void jump(){
 	theX+= (int)(Math.random() * 10) - 5;
 	theY+= (int)(Math.random() * 10) - 5;
 }
 void show(){
 	fill(255);
 	ellipse(theX, theY, 10, 10);
 }
 }    