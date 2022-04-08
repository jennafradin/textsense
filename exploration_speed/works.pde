PImage img1, img2, img3, img4;  //Textures used for the experiment
int xpos,ypos; //to get position of the finger
int order = 0;
boolean first1 = false;  //to play or not the .wav files when exploring the top texture
boolean first2 = false;  //to play or not the .wav files when exploring the bottom texture
boolean tutos = false;
Table table; //.csv file with the randomized trials
int index = 1; //.csv files column counter
int count;
float v1,v2; //.csv files columns name

float x,y;   //Parameters for the scrollbar
float startX, startY, endX, endY;
float timeSpan;
int currentTime = 0;
int start;
float timePosition;

int time = 0;  //additional parameters to run the entire experiment: tuto block + non-tuto blocks
int trial = 1;
int event = 1; 

int mod = 1; 
int tuto = 1; 
int bool = 0;
boolean down = false;

int answer; 
int text_disp;
IntList result;
IntList realanswer;
IntList texture;
Table tableResultfeeling;
Table tabletexture;
Table tableRealAnswer;

HScrollbar hs1; 

void setup() {
  fullScreen();
 
  //load images into the experiment's folder
  img1 = loadImage("text_54.png");
  img2 = loadImage("text_24.png");
  img3 = loadImage("text_9.png");
  img4 = loadImage("text_3.png");
   
  initSound(); //initialisation soundfiles                                                                                                           
  
  //proportion for jenna's computer
  hs1 = new HScrollbar(250,500,600,40,30);  //call function that generates the scrollbar 
  startX = 240;
  startY = 485;
  endX = 570;
  endY = 485;
  timeSpan = 4000.0; //acquisition duration
  
 //parameter used to save the data
  result = new IntList();
  realanswer = new IntList();
  
  tableResultfeeling = new Table();
  tableResultfeeling.addColumn("result");
  
  tableRealAnswer = new Table();
  tableRealAnswer.addColumn("real_answer");
  
  tabletexture = new Table();
  tabletexture.addColumn("texture_displayed");
  
  table = loadTable("fullexpmatrix.csv","header");
  count = table.getRowCount();
  println("Count: " + count);
}

void draw(){
    
   if(event < 6) {
      background(0);
      switch_screen();
      
   }else {
      exit();
   }
   
   if(event==6) {
     for(int i=0; i<result.size(); i++){
         TableRow newRow = tableResultfeeling.addRow();
         TableRow newRow2 = tableRealAnswer.addRow();
         //TableRow newRow3 = tabletexture.addRow();
         
         newRow.setInt("result", result.get(i));
         newRow2.setInt("real_answer", realanswer.get(i));  
         //newRow3.setInt("texture_displayed", texture.get(i));  
    } 
    saveTable(tableResultfeeling, "data/results/resultfeeling_tuto.csv");
    saveTable(tableRealAnswer, "data/results/realanswer_tuto.csv");
    //saveTable(tabletexture, "data/results/texture.csv");
   }
}
