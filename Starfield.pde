Particle[] particles = new Particle[2000];
int myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
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
    fill(myColor);
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
    myX = mouseX;
    myY = mouseY;
    mySpeed = Math.random()*11;
    myAngle = Math.random()*(2*Math.PI);
    //declare variables
  }
  public void move(){
    myX = myX + (Math.cos(myAngle)*mySpeed);
    myY = myY + (Math.sin(myAngle)*mySpeed);
  }
  public void show(){
    //new color for every SET 
    noStroke();
    ellipse((float)myX, (float)myY, 2,2);
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
  OddballParticle(){ // make a boat?
    myX = 0;
    myY = 250; 
  }
  public void move(){
    myX = myX + 2;
    if(myX == 300){
      myX = 0;
    }
  }
  public void show(){
    fill(101,142,250);
    rect(-1,250,300,50);
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

void mousePressed(){
  myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  particles = new Particle[2000];
  for(int i = 0; i < particles.length; i++){
    particles[i] = new NormalParticle();

  }
  particles[0] = new OddballParticle();
  particles[1] = new JumboParticle();
}
