 //declare bacteria variables here
 Bacteria [] colony;
 int kappa = 8;
 void setup()
 {
 	//initialize bacteria variables here
 	size(500, 500);
  frameRate(40);
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
   if(theX < mouseX){
     theX+= (int)(Math.random() * 11);
   }else{
     theX+= (int)(Math.random() * 21) - 12;
   }
   if(theY < mouseY){
     theY+= (int)(Math.random() * 21) - 10;
   }else{
      theY+= (int)(Math.random() * 21) - 12;
   }
}else{
	if(theX < 0){
		theX = 0;
	}else if(theY < 0){
		theY = 0;
	}
}
 }
 void show(){
 	fill(255);
 	ellipse(theX, theY, 10, 10);
 }
 }
 //when NB3 reaches the pentaKill sprite, the pentakill becomes quardra.
 //theX+= (int)(Math.random() * 21) - 10;
 //theY+= (int)(Math.random() * 21) - 10;
