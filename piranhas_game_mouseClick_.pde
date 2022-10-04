int nMover = 200; //creates integer number so we can use it in place of # of objects
Mover[] m = new Mover[nMover]; //variable = an area of variables, 10 slots
boolean clicked = false;
int living = nMover;

void setup()
{
 size(1200,1000); 
 surface.setTitle("om nom nom");
 for(int i = 0; i < m.length; i = i + 1) //creates a loop, beginning i = 0, with every step it increases value by 1
 {  //whatever we put here will be repeated 10 times, as directed by our area
   m[i] = new Mover();
 }
 //m[0] = new Mover();  //variable in only 1/10 slots
// m[1] = new Mover();  //variable in 2/10 slots etc

}

void hud()
{
 fill(color(255));
 text(living,550,100);
 textSize(50);
}

void draw()
{
  noStroke();
  fill(0,0,0,10);
  rect(0,0,width,height);
  for(int i = 0; i < m.length; i = i + 1) //nMover can also be replaced with m.length
  {
  m[i].update(); //activates update in class
  m[i].check();  //activates check
  m[i].display();  //activates display
  }
  drawMe();
  hud();
}

void drawMe()
{
  noStroke();
  fill(255,0,100,100);
  circle(mouseX,mouseY,30);
}

void mousePressed()
{
  for(int i = 0; i < m.length; i = i + 1) //nMover can also be replaced with m.length
  {
    m[i].bite();
  }
}
