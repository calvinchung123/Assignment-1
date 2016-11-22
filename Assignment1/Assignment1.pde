void setup()
{
  size(1000,900);
  
}
  int Sx =100;
  int Sy = 100;
  int state = 0;
  int Mx1=0;
  int My1=0;
  int rectx = 0;
  int rectx2 = 1000;
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
      stroke(#B4AD1B, 100);
     if(Mx1 <= width)
     {
         Mx1=Mx1+15;
     } 
      for(int i=100;  i<1000; i=i+100)
      {
        line(0,i,Mx1,i);
      }
      
       if(My1 <= height)
       {
         My1=My1+15;
       } 
      for(int i=100;  i<1000; i=i+100)
      {
        line(i,0,i,My1); 
      }
      if(rectx <= 148)
      {
        rectx=rectx+2;
      }
      if(rectx2 >= 852)
      {
        rectx2=rectx2-2;
      }
      else if(rectx2 <= 852)
      {  
        fill(0);
        stroke(#B4AD1B);
        rect(150,750,200,50);
      }
      break;
  } 
  stroke(#B4AD1B);
  noFill();
  rect(rectx,900,300,400);
  rect(rectx2, 900, 300, 400);

}