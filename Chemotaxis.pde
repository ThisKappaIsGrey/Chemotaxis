//declare bacteria variables here
ArrayList<Bacteria> colony;
int kappa = 8;
void setup()
{
  //initialize bacteria variables here
  size(500, 500);
  frameRate(40);
  colony = new ArrayList<Bacteria>();
  for (int i= 0; i < kappa; i++)
  {
    colony.add(new Bacteria());
  }
}
void draw()
{
  //move and show the bacteria
  background(255);
  food();
  for (int i= 0; i < colony.size(); i++) 
  {
    Bacteria gold = colony.get(i);
    gold.show();
    gold.walk();
  }
}
void mouseClicked(){
 kappa = kappa * 2;
 for (int i= 0; i < kappa; i++)
  {
    colony.add(new Bacteria());
  }
}
void food(){
	fill(0);
	ellipse(mouseX, mouseY, 30, 30);
}
class Bacteria
{
  //lots of java!
  int theX, theY, theColor;
  boolean alive;
  Bacteria() 
  {
    theX = 250;
    theY = 250;
    theColor = color((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255));
    alive = true;
  }
  void walk() 
  {
      if (theX < mouseX){
              theX+= (int)(Math.random() * 11) - 4;
       
      }else{
      
        theX+= (int)(Math.random() * 11) - 6;
      }
      if (theY < mouseY){
        theY+= (int)(Math.random() * 11) - 4;
      }else{
        theY+= (int)(Math.random() * 11) - 6;
      } 
  }
    void show() {
    if(get(theX, theY) == color(0)){
    	alive = false;
    }
    if(alive){
      fill(theColor);
      ellipse(theX % 500, theY % 500, 10, 10);
    }
    }
  }

//when NB3 reaches the pentaKill sprite, the pentakill becomes quardra.
//theX+= (int)(Math.random() * 21) - 10;
//theY+= (int)(Math.random() * 21) - 10;
//textSize(10);
	//fill(0);
	//text("food", mouseX, mouseY);
