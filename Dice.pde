Die bob;
void setup()
{
  noLoop();
  size(500, 500);
}
void draw()
{
  int sum = 0;
  background((int) (Math.random()*255), (int) (Math.random()*255), (int) (Math.random()*255));//your code here
  for (int i = 0; i < 400; i += 50) {
    for (int j = 0; j < 400; j += 50) {
      bob = new Die (50 + i, 50 + j);
      bob.show();
      sum = sum + bob.diceRoll;
    }
  }
  fill(0);
  textSize(20);
  text("Total: " + sum, 210, 480);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myX, myY, diceRoll;

  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;//variable initializations here
  }
  void roll()
  {
    //your code here
  }
  void show()
  {
    int siz = 50;
    fill((int) (Math.random()*256), (int) (Math.random()*256), (int) (Math.random()*256));
    rect(myX, myY, siz, siz);
    fill(255);
    rect(200, 455, 100, 35);
    diceRoll = (int) (Math.random()*6+1);
    if (diceRoll==1) {

      ellipse(myX+25, myY+25, 10, 10);
    } else if (diceRoll==2) {

      ellipse(myX+12.5, myY+25, 10, 10);
      ellipse(myX+37.5, myY+25, 10, 10);
    } else if (diceRoll==3) {


      ellipse(myX+12.5, myY+25, 10, 10);
      ellipse(myX+25, myY+25, 10, 10);
      ellipse(myX+37.5, myY+25, 10, 10);
    } else if (diceRoll==4) {


      ellipse(myX+12.5, myY+12.5, 10, 10);
      ellipse(myX+37.5, myY+37.5, 10, 10);
      ellipse(myX+37.5, myY+12.5, 10, 10);
      ellipse(myX+12.5, myY+37.5, 10, 10);
    } else if (diceRoll==5) {


      ellipse(myX+25, myY+25, 10, 10);
      ellipse(myX+12.5, myY+12.5, 10, 10);
      ellipse(myX+37.5, myY+37.5, 10, 10);
      ellipse(myX+37.5, myY+12.5, 10, 10);
      ellipse(myX+12.5, myY+37.5, 10, 10);
    } else if (diceRoll==6) {


      ellipse(myX+12.5, myY+12.5, 10, 10);
      ellipse(myX+25, myY+12.5, 10, 10);
      ellipse(myX+37.5, myY+12.5, 10, 10);
      ellipse(myX+12.5, myY+37.5, 10, 10);
      ellipse(myX+25, myY+37.5, 10, 10);
      ellipse(myX+37.5, myY+37.5, 10, 10);
    }
  }
}
