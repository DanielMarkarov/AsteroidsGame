class spaceship extends floater
{
  public spaceship()
  {
    myCenterX = myCenterY = 250; //holds center coordinates   
    corners = 4;  //the number of corners, a triangular floater has 3   
    xCorners = new int[corners];   
    yCorners = new int[corners];
      xCorners[0] = 10;
      xCorners[1] = -7;
      xCorners[2] = 0;
      xCorners[3] = -7;
     
      yCorners[0] = 0;
      yCorners[1] = 7;
      yCorners[2] = 0;
      yCorners[3] = -7;
    
    myColor = 255;   
    myXspeed = myYspeed = 0; //holds the speed of travel in the x and y directions   
    myPointDirection = 0; //
  }
    
  public void hyperdrive()
  {
    myXspeed = myYspeed = 0;
    myCenterX = Math.random()*500;
    myCenterY = Math.random()*500;
  }

}
