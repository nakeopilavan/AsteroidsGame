class Star //note that this class does NOT extend Floater
{
  private int myX, myY, myCol1,myCol2,myCol3;
  public Star(){
    myX = (int)(Math.random()*800);
    myY = (int)(Math.random()*800);
    myCol1 = (int)(Math.random()*255);
    myCol2 = (int)(Math.random()*255);
    myCol3 = (int)(Math.random()*255);
  }
  public void show()
  {
    noStroke();
    fill(myCol1,myCol2,myCol3);
    ellipse(myX,myY,5,5);
  }
  
}
