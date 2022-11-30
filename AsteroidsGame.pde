spaceship woosh = new spaceship();
public ArrayList <asteroid> list = new ArrayList<asteroid>();

public void setup()
{
  translate(250, 250);
  size(500, 500);
  for(int i = 0; i < 20; i++)
  {list.add(new asteroid());}
}

public void draw()
{
    background(0);
    for(int i = 0; i < 500; i++)
    {
    star x = new star();
    x.show();
    }
  
  //asteroids
  for(int i = 0; i < list.size(); i++)
  {
      list.get(i).show();
      list.get(i).move();
      if(dist((float)list.get(i).getCenterX(), (float)list.get(i).myCenterY, (float)woosh.myCenterX, (float)woosh.myCenterY) < 10 )
    {
      list.remove(i);
    }
  }    
  
  woosh.show();
  woosh.move();
  }

public void keyPressed()
{
if (key == 'w') {woosh.accelerate(0.5); }
if (key == 'a') {woosh.turn(-20);       }
if (key == 's') {woosh.accelerate(-0.5);}
if (key == 'd') {woosh.turn(20);        }

//hyperdrive
if (key == 'x') {woosh.hyperdrive();    }  
}
