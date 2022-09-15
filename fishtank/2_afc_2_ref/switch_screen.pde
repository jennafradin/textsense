
void drawsquare(){
  String s1 = "Which haptic texture best matches";
  String s2 = "the visual one?";
  String s3 = "1";
  String s4 = "2";
  
  fill(255, 255, 255);
  textAlign(CENTER);
  textSize(40);
  //text(s1,480,300);
  //text(s2,480,350);
  text(s1,520,280);
  text(s2,520,320);
  
  fill(51,118,255);
  //rect(300,330,90,90);
  rect(330,440,90,90);

  fill(255,106,51);
  //rect(500,330,90,90);
  rect(580,440,90,90);
  textSize(55);
  
  fill(255,255,255);
  //text(s3,345,390);
  //text(s4,545,390);
  text(s3,375,505);
  text(s4,625,505);
}

void button(){
  fill(150,150,150,95);
  //rect(870,650,130,50);
  rect(860,900,130,50);

  
  fill(255,255,255);
  textAlign(CENTER);
  textSize(28);
  text("NEXT",930,935);
}

void welcome_screen(){
  String s5 = "You will see and touch a series of textures presented in pairs";
  String s6 = "Your objective is will be to find";
  String s7 = "the congruent visuo-haptic texture";
  String s8 = "NEXT"; 
  
  fill(255,255,255);
  textAlign(CENTER);
  textSize(38);
  text(s5,1000,450);
  text(s6,1000,500);
  text(s7,1000,550);
  
  fill(150,150,150);
  rect(1380,650,130,65);

  fill(255,255,255);
  text(s8,1445,695);
}
