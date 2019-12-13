class Bullet extends Floater{
  public Bullet(Spaceship theShip){
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myPointDirection = theShip.getDir();
    double dRadians =myPointDirection*(Math.PI/180);
    myDirectionX = 5 * Math.cos(dRadians) + theShip.getXDir();
    myDirectionY = 5 * Math.sin(dRadians) + theShip.getYDir();
    myColor = 180;
  }
  public void show(){
   noStroke();
   fill(myColor);
   ellipse((float)myCenterX, (float)myCenterY, (float)5, (float)5);
  }
  public float getX(){return (float)myCenterX;}
  public float getY(){return (float)myCenterY;}
  public void move()
  {      
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY; 
  }
}
