class Ghost extends Sprite
{
  boolean isJump = false; //wont jump at beginning
  
  Ghost()
  {
   super(); //makes Ghost know everything that Sprite knows
  }
  
  void jump()
  {
   this.velocity.y = -10; 
   this.acceleration.y = .2;  //gravity for jump
   isJump=true; //will jump when jump
  }
  
  void check()
  {
   //float actualY = screenX(this.location.x,this.location.y); //to make it stop at ground after jump
   if(location.y > (height/2)-200)
   {
    this.acceleration.y = 0;
    this.velocity.y = 0;
    this.location.y = height/2-200;
    println("landed");
    this.isJump = false;
   }
   
   if(this.isJump)
   {
     if(this.velocity.y < 0)
     {
       this.currentAni = 2;  //up
     }
     else
     {
       this.currentAni = 3;  //down
     }
   }
   else
   {
     this.currentAni = 0;  //ground, displays first ani (0)
   }
  }
}
  
