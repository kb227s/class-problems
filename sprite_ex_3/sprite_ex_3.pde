Sprite s;

void setup()
{
  size(800,600);
  s = new Ghost();
  s.location.x = (-width/2)+100;
  s.location.y = height/2-200;
  String[] files = {"ghosts1.svg","ghosts2.svg"}; //created 2 element arrays w/ those filenames
  s.addAnimation(files,15);
  String[] files1 = {"ghosts1.svg","ghosts2.svg"}; //for changing its direction when it flips, would make new svg files
  s.addAnimation(files1,15);
  String[] files2 = {"ghostsUp.svg"}; //for jump
  s.addAnimation(files2,15);
  String[] files3 = {"ghostsDown.svg"}; //for jump
  s.addAnimation(files3,15);
  
  s.currentAni = 0;
  
}

void draw()
{
  background(255);
  translate(width/2,height/2);
  s.update();
  s.check();
  s.display();
}

void keyPressed()
{
  s.jump();
  s.check();
}
