Die one;
Die two;
Die three;
Die four;
Die five;
Die six;
void setup()
{
  noLoop();
  size(500, 500);
}
void draw()
{
  background((int) (Math.random()*255), (int) (Math.random()*255), (int) (Math.random()*255));//your code here
  for (int i = 0; i < 400; i += 50) {
    for(int j = 0; j < 400; j += 50){
    one = new Die (50 + i, 50 + j);
    one.show();
    }
  }
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int diceRoll, myX, myY;

  Die(int x, int y) //constructor
  {
    diceRoll = (int) (Math.random()*6+1);
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
  }
}
