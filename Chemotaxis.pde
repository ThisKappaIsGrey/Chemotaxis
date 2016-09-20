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
    colony[i].colorChange();
 	}
 }
 class Bacteria
 {
 	//lots of java!
 	int theX, theY, B;
 Bacteria(){
 		theX = 250;
 		theY = 250;
    B = 225;
 	}
 void walk(){
   if(theX >= 0 && theY >= 0){
   if(theX < mouseX){
     theX+= (int)(Math.random() * 21) - 8;
   }else{
     theX+= (int)(Math.random() * 21) - 12;
   }
   if(theY < mouseY){
     theY+= (int)(Math.random() * 21) - 8;
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
 fill(B);
 ellipse(theX, theY, 10, 10);
}
void colorChange(){
  if(theX == mouseX && theY == mouseY){
    B = 0;
  }
}
}

 //when NB3 reaches the pentaKill sprite, the pentakill becomes quardra.
 //theX+= (int)(Math.random() * 21) - 10;
 //theY+= (int)(Math.random() * 21) - 10;
