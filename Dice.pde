Dice aDice, bDice, cDice, dDice, eDice, fDice, gDice, hDice, iDice, jDice;
int numberCounter; 
color aColor;


void setup()
{
  size(550,300);
  textAlign (CENTER,CENTER);
  aDice = new Dice(150, 100);
  bDice = new Dice(200,100);
  cDice = new Dice (250,100);
  dDice = new Dice (300,100);
  eDice = new Dice (350,100);
  fDice = new Dice (150,150);
  gDice = new Dice (200,150);
  hDice = new Dice (250, 150);
  iDice = new Dice (300, 150);
  jDice = new Dice (350, 150);
  numberCounter = 1;
  
}
void draw()
{
  aDice.show();
  bDice.show();
  cDice.show();
  dDice.show();
  eDice.show();
  fDice.show();
  gDice.show();
  hDice.show();
  iDice.show();
  jDice.show();
}
void mousePressed()
{
  aColor = color (random(255), random(255), random(255));
  numberCounter = 0;
  aDice.toss();
  bDice.toss();
  cDice.toss();
  dDice.toss();
  eDice.toss();
  fDice.toss();
  gDice.toss();
  hDice.toss();
  iDice.toss();
  jDice.toss();
  {
    background(190);
  }
}
class Dice
{
  int face;
  int myX, myY;
  Dice (int x_, int y_)
  {
    myX= x_;
    myY= y_;
    toss();
  }
  void toss()
  {
    
      face = (int) (Math.random()*6)+1;
      
       if (face == 1) { numberCounter++;} 
    if (face == 2) { numberCounter+= 2;}
    if (face == 3) { numberCounter+= 3;}
    if (face == 4) { numberCounter+= 4;}
    if (face == 5) { numberCounter+= 5;}
    if (face == 6) { numberCounter+= 6;}
     
        
    
  }
  void show()
  {
    fill(aColor);
    square(myX,myY,40);
    fill(255,255,255);
    text("CLICK TO TOSS",275,60);
    text("TOTAL NUMBER OF DOTS", 275, 200);
   
  {
    text(numberCounter, 275,225); 
  }
  {   
    if(face == 1) {
      fill(0);
      ellipse(myX + 20 , myY + 20 , 7, 7);
    }
    if(face == 2) {
      fill(0);
      ellipse(myX + 10, myY + 20, 7, 7);
      ellipse(myX + 30, myY + 20, 7, 7);
    }
    if(face == 3) {
      fill(0);
      ellipse(myX + 10, myY + 30, 7, 7);
      ellipse(myX +20, myY + 10, 7 , 7);
      ellipse(myX + 30, myY + 30, 7, 7);
    }
   if(face == 4) {
     fill(0);
     ellipse(myX + 10, myY + 10, 7 , 7);
     ellipse(myX + 10, myY + 30, 7 , 7);
     ellipse(myX + 30, myY + 10, 7 , 7);
     ellipse(myX + 30, myY + 30, 7, 7);
  }
  if(face == 5) {
    fill(0);
    ellipse(myX + 10, myY + 10, 7 , 7);
    ellipse(myX + 10, myY + 30, 7 , 7);
    ellipse(myX + 30, myY + 10, 7 , 7);
    ellipse(myX + 30, myY + 30, 7 , 7);
    ellipse(myX + 20, myY + 20, 7 , 7);
  }
    if(face == 6) {
    fill(0);
    ellipse(myX + 9, myY + 10, 7 , 7);
    ellipse(myX + 9, myY + 30, 7 , 7);
    ellipse(myX + 31, myY + 10, 7 , 7);
    ellipse(myX + 31, myY + 30, 7 , 7);
    ellipse(myX + 20, myY + 10, 7 , 7);
    ellipse(myX + 20, myY + 30, 7 , 7);
  }
  }

  }
}
    
