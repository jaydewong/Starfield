Particle[] particles = new Particle[100];
// should make fireworks with mouseX and Y
void setup(){
  size(300,300);
  background(0);
  for(int i = 0; i < particles.length; i++){
    particles[i] = new NormalParticle();

  }
  particles[0] = new OddballParticle();
  particles[1] = new JumboParticle();
}

void draw()
{
  //your code here
  background(0);
  for(int i = 0; i < particles.length; i++){
    particles[i].show();
    particles[i]. move();
    
  }
}
class NormalParticle implements Particle
{
  double mySpeed;
  double myAngle;
  double myX;
  double myY;
  NormalParticle(){
    myX = 150;
    myY = 150;
    mySpeed = Math.random()*11;
    myAngle = Math.random()*(2*Math.PI);
    //declare variables
  }
  public void move(){
    myX = myX + (Math.cos(myAngle)*mySpeed);
    myY = myY + (Math.sin(myAngle)*mySpeed);
  }
  public void show(){
    fill(255);
    ellipse((float)myX, (float)myY, 10,10);
  }
  //your code here
}
interface Particle
{
  public void show();
  public void move();
  //your code here
}
class OddballParticle implements Particle//uses an interface
{
  //your code here
  double myX, myY, myAngle, mySpeed;
  OddballParticle(){
    myX = 150;
    myY = 150; 
  }
  public void move(){
    if(myX<300){
      myX = myX + 5;
    }
  }
  public void show(){
    fill(58, 246, 97);
    ellipse((float)myX, (float)myY, 20,20);
  }
}

class JumboParticle extends NormalParticle
{
  //your code here
  public void show(){
    ellipse((float)myX,(float)myY, 50,50);
  }
}
