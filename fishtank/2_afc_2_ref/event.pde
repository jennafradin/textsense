void switch_screen(){
 if(trial==1){
   welcome_screen();
 } else {
   event(mod);
   button();
   hs1.update(); 
   hs1.display();
   mousePressed();
 }
}

void event(int mod){
  
  TableRow row = table.getRow(index);
  vref = row.getInt("vref");
  v_comp = row.getInt("v_comp");
  
///////---------------texture 1 -----------------////
  if(vref==1 && v_comp==1) {
    resize_img(img1, img1);
    
  }if(vref==1 && v_comp==2) {
    resize_img(img1, img2);  
    
  }if(vref==1 && v_comp==3) {
    resize_img(img1, img3);
    
  }if(vref==1 && v_comp==4) {
    resize_img(img1, img4);
    
  }if(vref==1 && v_comp==5) {
    resize_img(img1, img5);
    
///////---------------texture 2 -----------------////
            
  }if(vref==2 && v_comp==1) {
    resize_img(img2, img1);
    
  }if(vref==2 && v_comp==2) {
    resize_img(img2, img2);    
    
  }if(vref==2 && v_comp==3) {
    resize_img(img2, img3);
    
  }if(vref==2 && v_comp==4) {
     resize_img(img2, img4);
    
  }if(vref==2 && v_comp==5) {
    resize_img(img2, img5);
    
///////---------------texture 3 -----------------////
            
  }if(vref==3 && v_comp==1) {
    resize_img(img3, img1);
    
  }if(vref==3 && v_comp==2) {
    resize_img(img3, img2);
    
  }if(vref==3 && v_comp==3) {
    resize_img(img3, img3);    
    
  }if(vref==3 && v_comp==4) {
    resize_img(img3, img4);
    
  }if(vref==3 && v_comp==5) {
    resize_img(img3, img5);
     
///////---------------texture 4 -----------------////
            
  }if(vref == 4 && v_comp == 1) {
    resize_img(img4, img1);
    
 }if(vref == 4 && v_comp == 2) {
    resize_img(img4, img2);
    
  }if(vref == 4 && v_comp == 3) {
    resize_img(img4, img3);
    
  }if(vref == 4 && v_comp == 4) {
    resize_img(img4, img4);    
    
  }if(vref == 4 && v_comp == 5) {
    resize_img(img4, img5);
    
///////---------------texture 5 -----------------////
            
  }if(vref == 5 && v_comp == 1) {
    resize_img(img5, img1);
    
  }if(vref == 5 && v_comp == 2) {
    resize_img(img5, img2);
    
  }if(vref == 5 && v_comp == 3) {
    resize_img(img5, img3);
    
  }if(vref == 5 && v_comp == 4) {
    resize_img(img5, img4);
        
  }if(vref == 5 && v_comp == 5) {
    resize_img(img5, img5);
  }
}

void mouseClicked() { //to switch screens and increments 
    //verifPos(mouseX,mouseY,firsvref,firsv_comp);
    if(mouseX>860 && mouseX<990 && mouseY>900 && mouseY<950){ //position of the "next" button
           //if(trial<=80){
                trial++; 
                index++;
                hs1.display();

   }if(mouseX>1380 && mouseX<1540 && mouseY>650 && mouseY<720){ //position "NEXT" button in the welcome screen  
            trial++; 
            //index++;
      }
}
