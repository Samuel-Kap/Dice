//Die jeff;
//Die pp;
int nX=15;
int nY=20;
int dieVal = 6;
int sumDice = dieVal;
void setup()
{
  //pp= new Die(130, 15);
  //jeff= new Die( 10, 15);
  noLoop();
  size(500, 760);
}
void draw()
{
   dieVal=(int)((Math.random()*6)+1);
  background(0);
  for(int i = 0; i < 100; i++)
  {
    Die bob = new Die(nX,nY);
    bob.show();
    nX+=60;
    if(nX>=455){
      nY+=60;
      nX=15;
    }
  }
  //jeff.show();
  //pp.show();
  fill(225);
  text("Sum of dice all dice is " + sumDice, 5 ,10);
}
void mousePressed()
{ 
  nX=15;
  nY=20;
  sumDice=0;
  redraw();
}
class Die
{
  int myX, myY;
  
  Die(int x, int y)
  {
    roll();
    myX = x;
    myY =y;
  }
  void roll()
  {
    dieVal=(int)((Math.random()*6)+1);
  }

  void show()
  {
    
    dieVal=(int)((Math.random()*6)+1);
    fill((int)(Math.random()*200)+55,(int)(Math.random()*200)+55,(int)(Math.random()*200)+55);
    rect(myX, myY, 50, 50);
    if (dieVal==1) {
      sumDice= sumDice + 1;
      fill((int)(Math.random()*200)+55,(int)(Math.random()*200)+55,(int)(Math.random()*200)+55);
      rect(myX, myY, 50, 50);
      fill(0);
      ellipse(myX+25, myY+25, 5, 5);
    } else if (dieVal ==2) {
      sumDice= sumDice+2;
      fill((int)(Math.random()*200)+55,(int)(Math.random()*200)+55,(int)(Math.random()*200)+55);
      rect(myX, myY, 50, 50);
      fill(0);
      ellipse(myX+17, myY+25, 5, 5);
      ellipse(myX+32, myY+25, 5, 5);
    } else if (dieVal ==3) {
      sumDice= sumDice+3;
      fill((int)(Math.random()*200)+55,(int)(Math.random()*200)+55,(int)(Math.random()*200)+55);
      rect(myX, myY, 50, 50);
      fill(0);
      ellipse(myX+15, myY+15, 5, 5);
      ellipse(myX+25, myY+25, 5, 5);
      ellipse(myX+35, myY+35, 5, 5);
    } else if (dieVal ==4) {
      sumDice=sumDice+4;
      fill((int)(Math.random()*200)+55,(int)(Math.random()*200)+55,(int)(Math.random()*200)+55);
      rect(myX, myY, 50, 50);
      fill(0);
      ellipse(myX+15, myY+15, 5, 5);
      ellipse(myX+35, myY+35, 5, 5);
      ellipse(myX+35, myY+15, 5, 5);
      ellipse(myX+15, myY+35, 5, 5);
    } else if (dieVal ==5) {
      sumDice=sumDice+5;
      fill((int)(Math.random()*200)+55,(int)(Math.random()*200)+55,(int)(Math.random()*200)+55);
      rect(myX, myY, 50, 50);
      fill(0);
      ellipse(myX+15, myY+15, 5, 5);
      ellipse(myX+35, myY+35, 5, 5);
      ellipse(myX+35, myY+15, 5, 5);
      ellipse(myX+15, myY+35, 5, 5);
      ellipse(myX+25, myY+25, 5, 5);
    } else {
      sumDice=sumDice+6;
      fill((int)(Math.random()*200)+55,(int)(Math.random()*200)+55,(int)(Math.random()*200)+55);
      rect(myX, myY, 50, 50);
      fill(0);
      ellipse(myX+15, myY+15, 5, 5);
      ellipse(myX+35, myY+35, 5, 5);
      ellipse(myX+35, myY+15, 5, 5);
      ellipse(myX+15, myY+35, 5, 5);
      ellipse(myX+25, myY+15, 5, 5);
      ellipse(myX+25, myY+35, 5, 5);
    }
    
  }
}