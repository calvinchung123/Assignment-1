  //general variables
  int counter=0;
  
  
  
  //bug variables
  
  float boxWidth=50;
  float xpos=250;
  float ypos=0;
  float xpos2=400;
  float ypos2=0;
  float xdirection=1;
  float ydirection=1;
  float xdirection2=1;
  float ydirection2=1;
  float xspeed = 3.0f;
  float yspeed= .7f;
  float xspeed2 =3.0f;
  float yspeed2 = .7f;
  
  //ship variables
  float shipx=200;
  float shipwidth = 100;
  float shipHeight = 20;

void drawGame()
{
  rectMode(CENTER);
 background(0);
   //draw bug
   fill( 0,255,0);
   noStroke();
   rect (xpos, ypos, boxWidth, boxWidth );
   
    xpos = xpos + ( xspeed * xdirection );
    ypos = ypos + ( yspeed * ydirection );

    if(ypos<=height-50 && counter!=150)
     {                     // move bug left/right
           if (xpos > width-boxWidth || xpos < boxWidth)
           {
                xdirection *= -1;
           }
           
           //move bug down
           if (ypos > height-boxWidth || ypos < 0)
           {
               ydirection *= -1;
           }
           //draw ship
           fill(0,0,255);
           rect(shipx, height-shipHeight,shipwidth,shipwidth);
                
           //control ship
           if (keyPressed)
           {
               if (key==CODED)
              {
                      if( keyCode == LEFT)
                      {  
                           if( shipx != 0)
                           {
                               shipx-=5;
                           }
                      }
                      if( keyCode == RIGHT)
                      {
                          if(shipx!=1000)
                          {
                               shipx+=5;
                          }
                      }// end if RIGHT key
                      if( keyCode == UP)
                      {
                          stroke(255,0,0);
                          line(shipx,height-70,shipx,0);
                          if(shipx+35>=xpos && shipx+35<=xpos+50)
                          {
                               counter=counter+10;
                               xpos=random(100,900);
                               ypos=0;
                               if(xspeed<=7)
                               {
                                    xspeed=xspeed+.2;
                               }
                               if(yspeed<=3)
                               {
                                     yspeed=yspeed+.2;
                               }
                          }
                          if(shipx+35>=xpos2 && shipx+35<=xpos2+50)
                          {
                               counter=counter+10;
                               xpos2=random(100,900);
                               ypos2=0;
                               if(xspeed<=7)
                               {
                                    xspeed2=xspeed2+.1;
                               }
                               if(yspeed<=3)
                               {
                                     yspeed2=yspeed2+.1;
                               }
                          }
                      }//end if for UP key
              }//end if for key==coded
             }//end if for keyPressed
             
             fill(255);
             text("score:",20,50);
             text(counter,120,50);
      
           if(counter>=50)
           {
                 fill( 0,255,0);
                 noStroke();
                 rect (xpos2, ypos2, boxWidth, boxWidth );
       
                 xpos2 = xpos2 + ( xspeed2 * xdirection2 );
                 ypos2 = ypos2 + ( yspeed2 * ydirection2 );
                 
                 
                  if (xpos2 > width-boxWidth || xpos2 < boxWidth)
                     {
                          xdirection2 *= -2;
                     }
                     //move bug down
                     if (ypos2 > height-boxWidth || ypos2 < 0)
                     {
                         ydirection2 *= -2;
                     }
           }  
   
     }//end if for whole function
     else
     {
       background(0);
       text("Press 'P' to continue",350,500);
     
        
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
     }
}