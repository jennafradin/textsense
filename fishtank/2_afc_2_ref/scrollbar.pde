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
    ratio = (float)sw / (float)widthtoheight;
    xpos = xp;
    ypos = yp-sheight/2;
    spos = xpos + swidth/2 - sheight/2;
    newspos = spos;
    sposMin = xpos;
    sposMax = xpos + swidth - sheight;
    loose = l;
  }

  void update() {
    if (overEvent()) {
      over = true;
    } else {
      over = false;
    }
    if (mousePressed && over) {
      locked = true;
      boollock = true;
        if(mouseX-650<=0){
         posX=0;
       }if(mouseX-650>=1200){
         posX=10;
       }else{
          posX=((mouseX-650)/120);
     }
    }
    if (!mousePressed && !boollock) {
      locked = false;
    }
    if(!mousePressed && boollock && mouseX>860 && mouseX<990 && mouseY>900 && mouseY<950){
      haptic.append(posX);
      println(haptic);
      boollock = false;
    }
    if (locked) {
      newspos = constrain(mouseX-sheight/2, sposMin, sposMax);
    }
    if (abs(newspos - spos) > 1) {
      spos = spos + (newspos-spos)/loose;
    }
  }

  float constrain(float val, float minv, float maxv) {
    return min(max(val, minv), maxv);
  }

  boolean overEvent() {
    if (mouseX > xpos && mouseX < xpos+swidth &&
       mouseY > ypos && mouseY < ypos+sheight) {
      return true;
    } else {
      return false;
    }
  }

  void display() {
    noStroke();
    fill(204);
    rect(xpos, ypos, swidth, sheight);
    if (over || locked) {
      fill(0, 0, 0);
    } else {
      fill(102, 102, 102);
    }
    rect(spos, ypos, sheight, sheight);
    
    String s1 = "Compare the 2 visual textures";
    String s2 = "Similar";
    String s3 = "Not Similar";
    textSize(35);
    fill(255,255,255);
    text(s1,950,650);
    text(s2,630,740);
    text(s3,1200,740);
  }

  float getPos() {
    // Convert spos to be values between
    // 0 and the total width of the scrollbar
    //println(spos * ratio);
    return spos * ratio;
  }
}
