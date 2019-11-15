Star[] no = new Star[100];
Spaceship yes = new Spaceship();
boolean fow = false;
boolean back = false;
boolean left = false;
boolean right = false;
public void setup() 
{
  size(500,500);
  for(int i = 0;i<no.length;i++)
    no[i] = new Star();
}
public void draw() 
{
  background(0);
  yes.move();
  yes.show();
  if(fow == true)
    yes.accelerate(0.1);
  if(back == true)
    yes.accelerate(-0.1);
  if(left == true)
    yes.turn(-5);
  if(right == true)
    yes.turn(5);
  for(int i = 0; i < no.length;i++)
    no[i].show();
}
public void keyPressed()
{
  if(key == 'w')
  	fow = true;
  if(key == 's')
  	back = true;
  if(key == 'a')
  	left = true;
  if(key == 'd')
  	right = true;
  if(key == 'h')
    yes.hyperspace();
}
public void keyReleased()
{
  if(key == 'w')
    fow = false;
  if(key == 's')
    back = false;
  if(key == 'a')
    left = false;
  if(key == 'd')
    right = false;
}
