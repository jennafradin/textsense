PImage img1, img2, img3, img4, img5;
int index = 1;
int count;
float vref, v_comp;
float posX=0;

int time = 0;
int trial = 1;
int event = 1;
int mod = 1;
Table table;

IntList slider_result;
int answer;
FloatList haptic;
Table tableResultNote;  //.csv file of the haptic list
boolean boollock=false;
HScrollbar hs1;

void setup(){
  //size(1500,1500);
  fullScreen();
  
  //load images into the experiment's folder
  img1 = loadImage("text_1.png");
  img2 = loadImage("text_2.png");
  img3 = loadImage("text_3.png");
  img4 = loadImage("text_4.png");
  img5 = loadImage("text_26.png");
  
  table = loadTable("2_afc_1.csv","header");
  count = table.getRowCount();
  println("Count: " + count);
  
  hs1 = new HScrollbar(650, 800, 550, 60, 60);
  haptic = new FloatList();
  tableResultNote = new Table();
  tableResultNote.addColumn("Grade");
}

void draw(){
  
  if(trial<100){
      background(0);
      switch_screen();
  } else {
      for(int i=0; i<haptic.size(); i++){
          TableRow newRow = tableResultNote.addRow();
          newRow.setFloat("Scale",haptic.get(i));
      }
      
      exit();
  }
  //hs1.update(); 
  //hs1.display();
  //resize_img(img1,img2);
  
  //if(event < 2){
  //    background(0);
  //    switch_screen();
  //} else {
  //    exit();
  //}
}
