class Asteroids extends Floater{
	private int rot;
	public Asteroids(){
		corners = 6;
		int[] xC = {-11, -5, -11, 6, 13, 7};
		int[] yC = {-8, 0, 8, 10, 0, -8};
		xCorners = xC;
		yCorners = yC;
		myColor = 255;
		myCenterX = (int)(Math.random()*450);
		myCenterY = (int)(Math.random()*450);
    	myPointDirection = (int)(Math.random()*4);
    	myDirectionX = (int)(Math.random()*4);
    	myDirectionY = (int)(Math.random()*4);
		rot = (int)(Math.random()*9-4);
	}
	public void move()
	{
		turn(rot);
    super.move();
	}
  float getX() {return (float)myCenterX;}
  float getY() {return (float)myCenterY;}
}
