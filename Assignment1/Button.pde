class Button
{
  int x1;
  int y1;
  int lengthb;
  int widthb;
  boolean buttonPressed = false;
  
  Button(int startX, int startY, int len, int wid)
  {
    x1=startX;
    y1=startY;
    lengthb=len;
    widthb= wid;
    
    
  }
  
  void drawButton()
  {  
      if(buttonPressed == true) 
      {
        fill(#B4AD1B);
        stroke(#B4AD1B);    
        rect(x1,y1,lengthb,widthb);
        
      }
      else 
      {
        fill(0);
        stroke(#B4AD1B);    
        rect(x1,y1,lengthb,widthb);
      }
  }
  
  
}
void loadingScreen()
{
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
      
}