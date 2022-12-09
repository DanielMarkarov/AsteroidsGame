class asteroid extends floater
{ 
  private double turnSpeed;
  public asteroid()
  {
    turnSpeed = (Math.random()*10+2);
    
    myCenterX = (int)(Math.random() * 250);
    myCenterY = (int)(Math.random() * 250);   
    corners = 4;  //the number of corners, a triangular floater has 3   
    xCorners = new int[corners];   
    yCorners = new int[corners];
      xCorners[0] = 5;
      xCorners[1] = 5;
      xCorners[2] = -5;
      xCorners[3] = -5;
     
      yCorners[0] = -5;
      yCorners[1] = 5;
      yCorners[2] = 5;
      yCorners[3] = -5;
    
    myColor = 255;   
    myXspeed = myYspeed = (int)(Math.random()*2+1); //holds the speed of travel in the x and y directions   
    myPointDirection = (int)(Math.random()*360); //
  }
  
  public void move()   //move the floater in the current direction of travel
  {      
    super.turn(Math.random()*4-2);   
    super.accelerate(0.01);
    super.move();
  }   
  
  public double getCenterX()
  {
    return myCenterX;
  }
  
  public double getCenterY()
  {
    return myCenterY;
  }
}
