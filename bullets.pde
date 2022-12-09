class bullet extends floater
{
  public bullet(spaceship woosh)
  {
    myCenterX = woosh.getCenterX();
    myCenterY = woosh.getCenterY();
    myXspeed = myYspeed  = 0;
    myPointDirection = woosh.getMyPointDirection();
    accelerate(6);
  }
  
  public void show()
  {
    fill(#4C81D8);
    translate((float)myCenterX, (float)myCenterY);
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    rotate(dRadians);
        ellipse(0, 0, 5, 5);
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }
}
