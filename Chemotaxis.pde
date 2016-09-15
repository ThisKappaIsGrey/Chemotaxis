 //declare bacteria variables here  
 Bacteria [] colony; 
 int kappa = 8;
 void setup()   
 {     
 	//initialize bacteria variables here 
 	size(500, 500);
 	colony = new Bacteria[kappa];
 	for(int i= 0; i < colony.length; i++){
 		colony[i] = new Bacteria();
 	}
 }   
 void draw()   
 {    
 	//move and show the bacteria  
  background(0); 
for(int i= 0; i < colony.length; i++){
 		colony[i].walk();
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
 void walk(){
 	theX+= (int)(Math.random() * 21) - 10;
 	theY+= (int)(Math.random() * 21) - 10;
 }
 void show(){
 	fill(255);
 	ellipse(theX, theY, 10, 10);
 }
 }    

 //when NB3 reaches the pentaKill sprite, the pentakill becomes quardra.