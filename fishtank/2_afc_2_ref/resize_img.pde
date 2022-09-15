
void resize_img(PImage img1, PImage img2) {
  img1.resize(0, 180);
  int Start1 =  new Float(img1.height/0.13).intValue();
  int Width1 = img1.height-Start1;
  copy(img1, Start1, 0, Width1, img1.height, 1550, 300, Width1, img1.height);  //1300 300
 
  img2.resize(0, 180);
  int Start2 =  new Float(img2.height/0.13).intValue();
  int Width2 = img2.height-Start2;
  copy(img2, Start2, 0, Width2, img2.height, 2200, 300, Width2, img2.height); //2000 300
}

//void resize_img(PImage img1, PImage img2, PImage img3){
//    img1.resize(0,140);
//    int Start1 = new Float(img1.height/0.13).intValue();
//    int Width1 = img1.height - (Start1-70);
//    copy(img1, Start1, 0, Width1, img1.height, 1100, 300, Width1, img1.height);
    
//    img2.resize(0, 140);
//    int Start2 =  new Float(img2.height/0.13).intValue();
//    int Width2 = img2.height-(Start2-70);
//    copy(img2, Start2, 0, Width2, img2.height, 1600, 300, Width2, img2.height);
    
//    img3.resize(0, 140);
//    int Start3 =  new Float(img2.height/0.13).intValue();
//    int Width3 = img2.height-(Start2-70);
//    copy(img2, Start3, 0, Width3, img3.height, 2100, 300, Width3, img3.height);    
//}
