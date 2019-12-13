Star[] no = new Star[200];
Spaceship yes = new Spaceship();
ArrayList <Asteroids> block = new ArrayList <Asteroids>();
ArrayList <Bullet> dots = new ArrayList <Bullet>();
boolean fow, back, left, right = false;
boolean space = false;
boolean upB, downB, rightB, leftB = false;
int health = 3;
public void setup() 
{
  size(800,800);
  for(int i = 0;i<no.length;i++)
    no[i] = new Star();
  for(int i = 0;i<10;i++)
    block.add(new Asteroids());
}
public void draw() 
{
  background(0);
  text("Health",10,40);
  textSize(40);
  text(":" + health,135,40);
  for(int i = 0; i < no.length;i++)
    no[i].show();
  for(int i = 0;i<block.size();i++){
    block.get(i).show();
    block.get(i).move();
    if(dist(yes.getX(), yes.getY(), block.get(i).getX(), block.get(i).getY()) <= 25){
      block.remove(i);
      health--;
    }
   }
  for(int i = 0;i<block.size();i++){
    for(int j = 0;j<dots.size();j++){
      if(dist((float)dots.get(j).getX(), (float)dots.get(j).getY(), block.get(i).getX(), block.get(i).getY()) <= 8){
        block.remove(i);
        dots.remove(j);
        break;
      }
    }
  }
  for(int i = 0;i<dots.size();i++){
    dots.get(i).show();
    dots.get(i).move();
  }
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
  if(upB == true)
    yes.moveU();
  if(downB == true)
    yes.moveD();
  if(leftB == true)
    yes.moveL();
  if(rightB == true)
    yes.moveR();
  if(health == 0){
    noLoop();
    textSize(60);
    text("You Lose", 280,400);
  }
     
  
  
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
  if(key == ' ')
    dots.add(new Bullet(yes));
  if(keyCode == UP)
    upB = true;
  if(keyCode == DOWN)
    downB = true;
  if(keyCode == RIGHT)
    rightB = true;
  if(keyCode == LEFT)
    leftB = true;
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
  if(keyCode == UP)
    upB = false;
  if(keyCode == DOWN)
    downB = false;
  if(keyCode == RIGHT)
    rightB = false;
  if(keyCode == LEFT)
    leftB = false;
  
}
