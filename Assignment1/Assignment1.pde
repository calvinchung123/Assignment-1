void setup()
{
  size(1000,1000);
  
}
  int Sx =100;
  int Sy = 100;
  int state = 0;
void draw()
{
  background(255);
  switch(state)
  {
    case 0:
      background(#B4AD1B);
      translate(width/2, height/2);
      rotate(radians(frameCount));
      rectMode(CENTER);
      fill(0,0,0);
      rect(0,0,Sx,Sy);
      if (Sx != width && Sy != height) 
      {
        Sx=Sx+5;
        Sy=Sy+5;
      }
      else
      {
        state = 1;
      }
      break;
     
    case 1:
      text("state 1", 100, 100);
      break;
  } 
}