void resize_text(PImage img1, PImage img2) { //to resize 2 textures and aligned them

     img1.resize(0,180);
     int Start1 = new Float(img1.height/0.35).intValue();
     int Width1 = img1.height-Start1;
     copy(img1, Start1,0,Width1,img1.height,700,40,Width1,img1.height);
     
     ////resize img2
     img2.resize(0,180);
     int Start2 = new Float(img2.height/0.35).intValue();
     int Width2 = img2.height-Start1;
     copy(img2, Start2,0,Width2,img2.height,700,250,Width2,img2.height);  
     
}
