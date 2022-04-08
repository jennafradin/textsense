void switch_screen(){ //switch between the pairwize texture presentation and the multiple choice responses screen
  if(trial%2==0) {
     event(mod);
     event_sound();
     pos_scrollbar();
     button();
     mousePressed(); 

  }else {
     if(trial == 1) {
       welcome_screen();
    }else {
       drawsquare();
    }
  }
}

void event(int mod){
  //--------------tuto------------------//
  if(event==1) { 
      if(trial == 2 || trial == 10 || trial == 18 || trial == 26 || trial == 34) {
          resize_text(img1,img1);

     }if(trial == 4 || trial == 12 || trial == 20 || trial == 28 || trial == 36) {
         resize_text(img2, img2);
  
     }if(trial == 6 || trial == 14 || trial == 22 || trial == 30 || trial == 38 ) {
         resize_text(img3, img3);
         
     }if(trial == 8 || trial == 16 || trial == 24 || trial == 32 || trial == 40 ) {
         resize_text(img4, img4);
     }
    
     if(trial == 40){
           textSize(25);
           text("Tutorial finished ! :)",450,630);
       }      
       
  //-----block 1: text 54 plastic with 3mm embossed dot---------//
  }if(event==2){
       resize_text(img1,img1);  
 
  //-----block 2: text24 regular denim-------//
  }if (event==3){
       resize_text(img2,img2);  
    
  //-----block 3: text9 black corduroy-------//
  }if (event==4){
       resize_text(img3,img3);  
  
  //-----block 4: text3 stretch denim-------//      
  }if (event==5){
       resize_text(img4,img4);    
  }
}

void mouseClicked() { //to switch screens and increments 
    //verifPos(mouseX,mouseY,first1,first2);
    if(mouseX>780 && mouseX<900 && mouseY>350 && mouseY<420){ //position "NEXT" button in the welcome screen    
           start = millis();
           trial++; 
   
   }if(mouseX>330 && mouseX<420 && mouseY>440 && mouseY<520){ //position of response square '1'
        if(trial<=40) {    //6 tuto
           start = millis();
           //event++;
           trial++; 
           index++;
           println("index",index);
           //println("tuto",tuto);
           first1 = false;
           first2 = false;
           
           start = millis();
           result.append(1);
           realanswer.append(answer); 
           println("trial",trial);
           //texture.append(text_disp);
           
       }if(trial>40){       //40 trials/block
           event++;
           //index++;
           trial= 1;
           first1 = false;
           first2 = false;
           println("trial",trial);
           
           start = millis();
           result.append(1);
           realanswer.append(answer); 
           println("trial",trial);
           //texture.append(text_disp);
       }
           
   }if(mouseX>580 && mouseX<670 && mouseY>440 && mouseY<520){ //position of response square '2'
       if(trial<=40) {
           trial++; 
           //event++;
           index++;
           first1 = false;
           first2 = false;
           start = millis();
           println("trial",trial);
           
      }if(trial>40){
           event++;
           trial=1;
           index++;
           first1 = false;
           first2 = false;
           start = millis();
           println("trial",trial);
      }
     
   }if(mouseX>850 && mouseX<900 && mouseY>200 && mouseY<280){ //position of the "next" button
           start = millis();
           trial++;
           index++;
           println("index",index);
           println("trial",trial);
   }
}
