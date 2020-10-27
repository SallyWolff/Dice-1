Dice aDice, bDice, cDice, dDice, eDice, fDice, gDice, hDice, iDice, jDice;
int numberCounter;


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
  int heads;
  int myX, myY;
  Dice (int x_, int y_)
  {
    myX= x_;
    myY= y_;
    toss();
  }
  void toss()
  {
    
    if(Math.random() < 0.166) { 
      heads = 1;}
    if((Math.random() < 0.333) && (Math.random() > 0.166)) {
      heads = 2; }
    if((Math.random() < 0.5) && (Math.random() > 0.333)) {
      heads = 3; }
    if((Math.random() < 0.666) && (Math.random() > 0.5)) {
      heads = 4; }
    if((Math.random() < 0.833) && (Math.random() > 0.666)) {
      heads = 5; }
    if((Math.random() < 1) && (Math.random() > 0.833)) {
      heads = 6; }
      
       if (heads == 1) { numberCounter++;} 
    if (heads == 2) { numberCounter+= 2;}
    if (heads == 3) { numberCounter+= 3;}
    if (heads == 4) { numberCounter+= 4;}
    if (heads == 5) { numberCounter+= 5;}
    if (heads == 6) { numberCounter+= 6;}
     
        
    
  }
  void show()
  {
    fill(255,255,255);
    square(myX,myY,40);
    fill(255,255,255);
    text("CLICK TO TOSS",275,60);
    text("TOTAL NUMBER OF DOTS", 275, 200);
   
  {
    text(numberCounter- 1, 275,225); 
  }
  {   
    if(heads == 1) {
      fill(0);
      ellipse(myX + 20 , myY + 20 , 7, 7);
    }
    if(heads == 2) {
      fill(0);
      ellipse(myX + 10, myY + 20, 7, 7);
      ellipse(myX + 30, myY + 20, 7, 7);
    }
    if(heads == 3) {
      fill(0);
      ellipse(myX + 10, myY + 30, 7, 7);
      ellipse(myX +20, myY + 10, 7 , 7);
      ellipse(myX + 30, myY + 30, 7, 7);
    }
   if(heads == 4) {
     fill(0);
     ellipse(myX + 10, myY + 10, 7 , 7);
     ellipse(myX + 10, myY + 30, 7 , 7);
     ellipse(myX + 30, myY + 10, 7 , 7);
     ellipse(myX + 30, myY + 30, 7, 7);
  }
  if(heads == 5) {
    fill(0);
    ellipse(myX + 10, myY + 10, 7 , 7);
    ellipse(myX + 10, myY + 30, 7 , 7);
    ellipse(myX + 30, myY + 10, 7 , 7);
    ellipse(myX + 30, myY + 30, 7 , 7);
    ellipse(myX + 20, myY + 20, 7 , 7);
  }
  if(heads == 6) {
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
