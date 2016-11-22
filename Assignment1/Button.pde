class Button
{
  int x1;
  int y1;
  int lengthb;
  int widthb;
  
  Button(int startX, int startY, int len, int wid)
  {
    x1=startX;
    y1=startY;
    lengthb=len;
    widthb= wid;
    
    
  }
  
  void drawButton()
  {  
      fill(0);
      stroke(#B4AD1B);    
      rect(x1,y1,lengthb,widthb);
  }
  
  
}