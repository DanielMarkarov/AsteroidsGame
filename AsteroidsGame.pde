floater[] array = new floater[25];
spaceship woosh = new spaceship();
void setup()
{
  translate(250, 250);
  size(500, 500);

  //asteroids
  for(int i = 0; i < array.length; i++)
  {
  array[i] = new floater();
  }
}

void draw()
{
    background(0);
    for(int i = 0; i < 500; i++)
    {
    star x = new star();
    x.show();
    }
  //asteroids
  for(int i = 0; i < array.length; i ++)
  {
//    array[i].show();    
  }
  
  //spaceship
  woosh.show();
  woosh.move();
  }

public void keyPressed()
{
if (key == 'w') {woosh.accelerate(0.5);         }
if (key == 'a') {woosh.turn(-20);                }
if (key == 's') {woosh.accelerate(-0.5);        }
if (key == 'd') {woosh.turn(20);                }

//hyperdrive
if (key == 'x') {woosh.hyperdrive();}  
}
