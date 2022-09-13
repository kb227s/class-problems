float _angle = 0;

void setup()
{
  size(800,600);
}

void draw()
{
  translate(width/2,height/2);
  strokeWeight(6);
  circle(0,0,height-100);
  circle(0,0,20);
  pushMatrix();
    rotate(radians(_angle));
    line(150,100,0,0);
  popMatrix();
  pushMatrix();
  rotate(radians(_angle)-10);
  line(40,90,0,0);
  popMatrix();
}
