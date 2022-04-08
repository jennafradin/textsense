// Defines the scroll bar that allowed the participant to attribute a score to a type of feedback. 
//This files contain the parameter, but also the graphical interface.

float posX=0;

class HScrollbar {
  int swidth, sheight;    // width and height of bar
  float xpos, ypos;       // x and y position of bar
  float spos, newspos;    // x position of slider
  float sposMin, sposMax; // max and min values of slider
  int loose;              // how loose/heavy
  boolean over;           // is the mouse over the slider?
  boolean locked;
  float ratio;

  HScrollbar (float xp, float yp, int sw, int sh, int l) {
    swidth = sw;
    sheight = sh;
    int widthtoheight = sw - sh;
    ratio = (float)sw / ((float)widthtoheight);
    xpos = xp;
    ypos = yp-sheight/2;
    spos = xpos + swidth/2 - sheight/2;
    newspos = spos;
    sposMin = xpos;
    sposMax = xpos + swidth - sheight;
    loose = 1;
  }

  void display() {      //This function allows to uptdate the display of the scroll bar each time the cursor is moved
     
    //for the static part of the scrollbar
    noStroke();
    fill(204);
    rect(xpos, ypos, swidth-50, sheight); 
    
   //for the red moving part of the scrollbar
   currentTime = millis() - start;
   timePosition = currentTime/timeSpan % 1;
   x = lerp(startX-200, endX, timePosition); 
   y = lerp(startY-5, endY-5, timePosition);
   
   fill(192,57,43);
   noStroke();
   //rect(x,y,50,30);
   rect(230,y,x,40);
   
  }
}

void pos_scrollbar(){
   if(mouseX>250 && mouseX<800 && mouseY>40 && mouseY< 210){
       hs1.display();
   }else if (mouseX>250 && mouseX<800 && mouseY>250 && mouseY<425){
       hs1.display();
   } else {
     start = millis();
   }
}
