void draw()
{
	//your code here
  for(int i = 0; i < particles.length; i++){
    particles[i].show();
    particles[i]. move();
  }
}
class NormalParticle
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
  void move(){
    myX = myX + (Math.cos(myAngle)*mySpeed);
    myY = myY + (Math.sin(myAngle)*mySpeed);
  }
  void show(){
    fill(255);
    ellipse((float)myX, (float)myY, 10,10);
  }
	//your code here
}
/*interface Particle
{
  public void show();
  public void move();
	//your code here
}
class OddballParticle implements Particle//uses an interface
{
	//your code here
  OddballParticle(){
    
  }
  void move(){
    
  }
  void show(){
    
  }
}
class JumboParticle //uses inheritance
{
	//your code here
}*/
