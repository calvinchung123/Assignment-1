Button ButtonQ;
Button ButtonW;
Button ButtonO;
Button ButtonP;


void setup()
{
  size(1000,900);
  ButtonQ = new Button(150,750,200,50);
  ButtonW = new Button(150,850,200,50);
  ButtonO = new Button(850,750,200,50);
  ButtonP = new Button(850,850,200,50);
  
}
  float Sx1=100;
  float Sy1=100;
  int Sx =100;
  int Sy = 100;
  int state = 0;
  int Mx1=0;
  int My1=0;
  int rectx = 0;
  int rectx2 = 1000;
  float radary = 1000;
  float line1x=300;
  float line1y=700;
  float rad=0;
  float screenx1=500;
  float screenx2=0;
  float a = 300, b = 400;
  float fuel=0;
void draw()
{
  background(255);
  
  
  
  switch(state)
  {
    case 0:
    loadingScreen();
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
      if(radary >=750)
      {
        radary=radary-3.5;
      }
      if (keyPressed)
      {  
        if(key == 'q')
        {
          ButtonQ.buttonPressed = true;
          state = 2;
        }
        if(key == 'w')
        {
          ButtonW.buttonPressed = true;
          state =3;
        }
        if(key == 'o')
        {
          ButtonO.buttonPressed = true;
        }
        if(key == 'p')
        {
          ButtonP.buttonPressed = true;
        }
        
      }
      if(rectx2 <= 852)
      {  
         ButtonQ.drawButton();
         ButtonW.drawButton();
         ButtonO.drawButton();
         ButtonP.drawButton();
       
      }
       
       if(rectx2 <= 852)
      { 
        line(300,700,100,600);
        line(700,700,900,600);
        line(100,600,100,100);
        line(900,600,900,100);
        line(100,100,300,0);
        line(900,100,700,0);
      }
      if(radary<=750)
      {
         noFill();
         ellipse(500,750,50,50);
         ellipse(500,750,150,150);
         ellipse(500,750,250,250);
      }
        if(radary<=750)
      {  
        if(rad<=280)
        {
          rad=rad+3;
        }
        else
        {
          rad=0;
        }
      }
      rect(500,radary,300,300);
      if(radary<=750)
      {
         if(screenx2<800)
         {
           stroke(#B4AD1B);
           screenx2=screenx2+10;
         }
      }
       if(screenx2>=800)
         {
           for(int i=100; i<=500; i=i+50)
           {
             line(i,102,i,Sx1);
           }
           if(Sx1 <= height-310)
           {
               Sx1=Sx1+15;
           } 
           if(screenx2>=800)
           {
           for(int i=100; i<=600; i=i+50)
           {
             line(100,i,Sy1,i);
           }
           if(Sy1 <= width-510)
           {
               Sy1=Sy1+10;
           }   
     
         }  
         if(Sy1 >= width-510)
         {
           fill (#B4AD1B);
           ellipse(150,550,25,25);
           noFill();
         }
         if(Sy1 >= width-510)
         {
           fill (#B4AD1B);
           ellipse(450,150,25,25);
           noFill();
           stroke(255,0,0);
           line(150, 550, 450 - a, 150 + b);
         }
         if(a >= 0 )
         {
            a--;
         }
         if(b >= 0)
         {
             b -= 1.33;
         }
         else 
         {
           a=300;
           b=400;
         }
          stroke(#B4AD1B);
         ellipse(500,750,rad,rad);
         if(Sy1 >= width-510)
         {
              textSize(32);
              text("Distance to destination:",510,150);
              text("8.6 Light Years",510,180);
              text("Q - Fuel Check",510,250);
              text("W - Weapon Systems",510,300);
              text("O - ",510,350);
              text("P - Back",510,400);
              
             
         }
       }
             if(radary<=750)
           {    
                rectMode(CENTER);
                stroke(#B4AD1B);
                rect(500,350,screenx2,-500);
          }
         stroke(#B4AD1B);
        line(300,700,line1x,line1y);
        stroke(#B4AD1B);
        noFill();
        rect(rectx,900,300,400);
        rect(rectx2, 900, 300, 400);
      break;
     
      case 2:
      rectMode(CORNER);
      background (0);
      textSize(32);
      text("Fuel Update",400,800);
      fill(0,255,0);
      if(fuel<=800)
      {
         fuel=fuel+5;
      }
      if(fuel <=300)
      {
         fill(255,0,0);
      }
      else if(fuel <=600)
      {
        fill(255,255,0);
      }
      else if(fuel <=800)
      {
        fill (0,255,0);
      }
      rect(100,500,fuel,100);
      if(fuel>=800)
      {
        noFill();
        stroke(#B4AD1B);
        rect(250,100,500,200);
        fill(#B4AD1B);
        text("Fuel is at 100%",370,200);
      }
      if (keyPressed)
      {  
        if(key == 'q')
        {
          ButtonQ.buttonPressed = true;
          state = 2;
        }
        if(key == 'w')
        {
          ButtonW.buttonPressed = true;
          state =3;
        }
        if(key == 'o')
        {
          ButtonO.buttonPressed = true;
          state =4;
        }
        if(key == 'p')
        {
          ButtonP.buttonPressed = true;
          state=1;
        }
        
      }
      break;
      
      case 3:
      drawGame();
     
      
  }

}