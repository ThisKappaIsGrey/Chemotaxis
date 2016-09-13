 //declare bacteria variables here  
 Bacteria kappa = new Bacteria(); 
 void setup()   
 {     
 	//initialize bacteria variables here 
 	size(500, 500);  
 }   
 void draw()   
 {    
 	//move and show the bacteria  
  background(0); 
 kappa.show();
 kappa.jump();
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
 	theX+= (int)(Math.random() * 3) - 1;
 	theY+= (int)(Math.random() * 3) - 1;
 }
 void show(){
 	fill(255);
 	ellipse(theX, theY, 10, 10);
 }
 }    