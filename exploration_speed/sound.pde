import processing.sound.*;
Delay delay;

//--------4cm/s--------// V4 reference
SoundFile text54_ref;
SoundFile text24_ref;
SoundFile text9_ref;
SoundFile text3_ref; 

//---------2cm/s-------// v1
SoundFile text54_v1;
SoundFile text24_v1;
SoundFile text9_v1;
SoundFile text3_v1; 

//---------3cm/s-------// v2
SoundFile text54_v2;
SoundFile text24_v2;
SoundFile text9_v2;
SoundFile text3_v2; 

//---------5cm/s-------// v3
SoundFile text54_v3;
SoundFile text24_v3;
SoundFile text9_v3;
SoundFile text3_v3; 

//---------6cm/s-------// v4
SoundFile text54_v4;
SoundFile text24_v4;
SoundFile text9_v4;
SoundFile text3_v4;

void initSound(){
  delay = new Delay(this);
  
  //-----ref--------//
  text54_ref = new SoundFile(this, "text54_ref.wav");
  text24_ref = new SoundFile(this, "text24_ref.wav");
  text9_ref = new SoundFile(this, "text9_ref.wav");
  text3_ref = new SoundFile(this, "text3_ref.wav");

  //-----v1-------//
  text54_v1 = new SoundFile(this, "text54_v1.wav");
  text24_v1 = new SoundFile(this, "text24_v1.wav");
  text9_v1 = new SoundFile(this, "text9_v1.wav");
  text3_v1 = new SoundFile(this, "text3_v1.wav");
  
  //-----v2-------//
  text54_v2 = new SoundFile(this, "text54_v2.wav");
  text24_v2 = new SoundFile(this, "text24_v2.wav");
  text9_v2 = new SoundFile(this, "text9_v2.wav");
  text3_v2 = new SoundFile(this, "text3_v2.wav");
  
  //-----v3-------//
  text54_v3 = new SoundFile(this, "text54_v3.wav");
  text24_v3 = new SoundFile(this, "text24_v3.wav");
  text9_v3 = new SoundFile(this, "text9_v3.wav");
  text3_v3 = new SoundFile(this, "text3_v3.wav");
  
  //-----v4-------//
  text54_v4 = new SoundFile(this, "text54_v4.wav");
  text24_v4 = new SoundFile(this, "text24_v4.wav");
  text9_v4 = new SoundFile(this, "text9_v4.wav");
  text3_v4 = new SoundFile(this, "text3_v4.wav");
  
}
