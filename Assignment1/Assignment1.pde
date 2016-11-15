void setup()
{
  size(1000,1000);
  
}
  int Sx =100;
  int Sy = 100;
  int state = 0;
  int Mx1=0;
  int My1=0;
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
      rotate(radians(-frameCount));
      rectMode(CENTER);
      textSize(Sx/10);
      fill(255); 
      text("Loading...",-120,0);
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
      background(0);
      stroke(#B4AD1B);
     if(Mx1 <= width)
     {
         Mx1=Mx1+10;
     } 
      for(int i=100;  i<1000; i=i+100)
      {
        line(0,i,Mx1,i);
      }
      
       if(My1 <= height)
     {
         My1=My1+10;
     } 
      for(int i=100;  i<1000; i=i+100)
      {
        line(i,0,i,My1);
      }
      
      
    /*  if(Mx != width && My != height) 
      {
          line(Mx1,My1,Mx1,My2);
          
      }*/
      break;
  } 
}