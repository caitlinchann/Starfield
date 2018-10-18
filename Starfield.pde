NormalParticle[] bob;
void setup()
{
  size(300,300);
  bob = new NormalParticle[300];
  for(int i = 0; i < bob.length; i++)
  {
    bob[i] = new NormalParticle();
  }
  {
    bob[0] = new Oddball();
  }
  bob[1] = new Jumbo();
}
void draw()
{
  background(0);
  for(int i = 0; i < bob.length; i++)
  {
    bob[i].move();
    bob[i].show();
  }
}
class NormalParticle implements Particle
{
  double myX,myY,myAngle,mySpeed;
  int myColor;
  NormalParticle()
  {
    myX = myY = 150;
    myAngle = Math.PI*2*Math.random();
    mySpeed = (Math.random()*3);
    myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  }
  void move()
  {
    myX = myX + Math.cos(myAngle)*mySpeed;
    myY = myY + Math.sin(myAngle)*mySpeed;
  }
  void show()
  {
    fill(myColor);
    ellipse((float)myX,(float)myY,5,5);
  }
}
interface Particle
{
  public void show();
  public void move();
}
class Oddball extends NormalParticle
{
  double myX, myY, mySpeed, myAngle;
  Oddball()
  {
    myX = 0;
    myY = 150;
  }
  public void show()
  {
    fill(255);
    rect((float)myX,(float)myY,10,10);
  }
  public void move()
  {
    myX = myX + 1;
  }
}
class Jumbo extends NormalParticle
{
  public void show()
  {
    fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    ellipse((float)myX, (float)myY, 50,50);
  }
}


