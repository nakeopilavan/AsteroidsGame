class Spaceship extends Floater  
{   
    public Spaceship(){
      corners = 4;
      int[] xC = {-8, 16, -8, -2};
      int[] yC = {-8, 0, 8, 0};
      xCorners = xC;
      yCorners = yC;
      myColor = 255;
      myCenterX = myCenterY = 250;
      myPointDirection = myDirectionX = myDirectionY = 0;
    } 
    public void hyperspace(){
      myCenterX = (int)(Math.random()*500);
      myCenterY = (int)(Math.random()*500);
      myPointDirection = (Math.random()*360);
      myDirectionX = myDirectionY = 0;
    }
    public float getX(){return (float)myCenterX;}
    public float getY(){return (float)myCenterY;}
}
