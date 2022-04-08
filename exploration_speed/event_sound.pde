int verifPos(int xpos,int ypos,boolean first1, boolean first2) {
  xpos = mouseX;
  ypos = mouseY;
  if(xpos>365 && xpos<700 && ypos>40 && ypos<210 && first1==false) {
      first1 = false;
      return 1;
      
  } if(xpos>365 && xpos<700 && ypos>250 && ypos<425 && first2==false){
      first2 = false;
      return 2;
  } else {
      return 0;
  }
}

void event_sound(){
  
      TableRow row = table.getRow(index);
      v1 = row.getInt("v1");
      v2 = row.getInt("v2");
 
       order = verifPos(xpos,ypos, first1, first2);
       //print(order);
 
      //----tutorial------//
      if(event==1){
       //case1    
         if(v1==4 && v2==1) {   //repeat for all possible combinations
             println(order);
            if(order == 1){
              text54_ref.play(1,1,1);
              println("reftuto_41");
              first1 = true;
              order = 0;
          } if(order == 2){
              text54_v1.play(1,1,1);
              println("tuto41");
              first2 = true;
              order = 0;
          } if(order == 0 && mouseX>700 & first1 == true){
              text54_v1.stop();
              text54_ref.stop();
         }
         answer = 1;
         //case 2
        }if(v1==4 && v2==2) {   
            if(order == 1){
              text54_ref.play(1,1,1);
              println("reftuto_42");
              first1 = true;
              order = 0;
         } if(order == 2){
              text54_v2.play(1,1,1);
              println("tuto42");
              first2 = true;
              order = 0;
         } if(order == 0 && mouseX>700 && first1 == true){
              text54_ref.stop();
              text54_v2.stop();  
         }
         answer = 1;
         //case3
        } if(v1==4 && v2==3) {  
            if(order == 1){
              text54_ref.play(1,1,1);
              println("reftuto_43");
              first1 = true;
              order = 0;
         } if(order == 2){
              text54_v3.play(1,1,1);
              println("tuto43");
              first2 = true;
              order = 0;
         } if(order == 0 && mouseX>700){
              text54_ref.stop();
              text54_v3.stop();  
         }
         answer = 1;
          //case4
        } if(v1==4 && v2==5) {   
            if(order == 1){
              text54_ref.play(1,1,1);
              println("reftuto_45");
              first1 = true;
              order = 0;
         } if(order == 2){
              text54_v3.play(1,1,1);
              println("tuto45");
              first2 = true;
              order = 0;
         } if(order == 0 && mouseX>700){
              text54_ref.stop();
              text54_v3.stop();  
         }
         answer = 1;
          //case5
       } if(v1==1 && v2==4) {   
            if(order == 1){
              text54_v1.play(1,1,1);
              println("tuto14");
              first1 = true;
              order = 0;
          } if(order == 2){
              text54_ref.play(1,1,1);
              println("reftuto_14");
              first2 = true;
              order = 0;
          } if(order == 0 && mouseX>700){
              text54_ref.stop();
              text54_v1.stop();  
         }
         answer = 2;
          //case6
       } if(v1==2 && v2==4) {   
            if(order == 1){
              text54_v2.play(1,1,1);
              println("tuto24");
              first1 = true;
              order = 0;
          } if(order == 2){
              text54_ref.play(1,1,1);
              println("reftuto24");
              first2 = true;
              order = 0;
          } if(order == 0 && mouseX>700){
              text54_ref.stop();
              text54_v2.stop();  
         }
         answer = 2;
          //case7
       }if(v1==3 && v2==4) {   
            if(order == 1){
              text54_v3.play(1,1,1);
              println("tuto34");
              first1 = true;
              order = 0;
          } if(order == 2){
              text54_ref.play(1,1,1);
              println("reftuto_34");
              first2 = true;
              order = 0;
          } if(order == 0 && mouseX>700){
              text54_ref.stop();
              text54_v3.stop();  
         }
         answer = 2;
          //case8
       }if(v1==5 && v2==4) {   
            if(order == 1){
              text54_v4.play(1,1,1);
              println("tuto_54");
              first1 = true; 
              order = 0;
         } if(order == 2){
              text54_ref.play(1,1,1);
              println("reftuto_54");              
              first2 = true;
              order = 0;
         } if(order == 0 && mouseX>700){
              text54_ref.stop();
              text54_v4.stop();  
         }
         answer = 2;
        }  
       //-----------Texture 54-----------//
      } if(event==2){
       //case1    
         if(v1==4 && v2==1) {   //repeat for all possible combinations
            if(order == 1){
              text54_ref.play(1,1,1);
              println("event2_ref");
              first1 = true;
              order = 0;
          } if(order == 2){
              text54_v1.play(1,1,1);
              println("event2_1");
              first2 = true;
              order = 0;
          }if(order == 0 && mouseX>700){
              text54_ref.stop();
              text54_v1.stop();  
         }
         answer = 1;
         //case 2
        }if(v1==4 && v2==2) {   
            if(order == 1){
              text54_ref.play(1,1,1);
              println("event2_ref");
              first1 = true;
              order = 0;
          } if(order == 2){
              text54_v2.play(1,1,1);
              println("event2_2");
              first2 = true;
              order = 0;
          } if(order == 0 && mouseX>700){
              text54_ref.stop();
              text54_v2.stop();  
         }
         answer = 1;
         //case3
       } if(v1==4 && v2==3) {  
            if(order == 1){
              text54_ref.play(1,1,1);
              println("event2_ref");
              first1 = true;
              order = 0;
         } if(order == 2){
              text54_v3.play(1,1,1);
              println("event2_3");
              first2 = true;
              order = 0;
          }if(order == 0 && mouseX>700){
              text54_ref.stop();
              text54_v3.stop();  
         }
         answer = 1;
          //case4
        } if(v1==4 && v2==5) {   
            if(order == 1){
              text54_ref.play(1,1,1);
              println("event2_ref");
              first1 = true;
              order = 0;
          } if(order == 2){
              text54_v4.play(1,1,1);
              println("event2_5");
              first2 = true;
              order = 0;
          } if(order == 0 && mouseX>700){
              text54_ref.stop();
              text54_v4.stop();  
         }
         answer = 1;
          //case5
       } if(v1==1 && v2==4) {   
            if(order == 1){
              text54_v1.play(1,1,1);
              println("event2_1");
              first1 = true;
              order = 0;
         }  if(order == 2){
              text54_ref.play(1,1,1);
              println("event2_ref");
              first2 = true;
              order = 0;
         }  if(order == 0 && mouseX>700){
              text54_ref.stop();
              text54_v1.stop();  
         }
         answer = 1;
          //case6
       } if(v1==2 && v2==4) {   
            if(order == 1){
              text54_v2.play(1,1,1);
              println("event2_2");
              first1 = true;
              order = 0;
          } if(order == 2){
              text54_ref.play(1,1,1);
              println("event2_ref");
              first2 = true;
              order = 0;
          } if(order == 0 && mouseX>700){
              text54_ref.stop();
              text54_v2.stop();  
         }
         answer = 2;
          //case7
       }if(v1==3 && v2==4) {   
            if(order == 1){
              text54_v3.play(1,1,1);
              println("event2_3");
              first1 = true;
              order = 0;
          } if(order == 2){
              text54_ref.play(1,1,1);
              println("event2_ref");
              first2 = true;
              order = 0;
          } if(order == 0 && mouseX>700){
              text54_ref.stop();
              text54_v3.stop();  
         }
         answer = 2;
          //case8
       }if(v1==5 && v2==4) {   
            if(order == 1){
              text54_v4.play(1,1,1);
              println("event2_5");
              first1 = true;
              order = 0;
         } if(order == 2){
              text54_ref.play(1,1,1);
              println("event2_ref");
              first2 = true;
              order = 0;
         } if(order == 0 && mouseX>700){
              text54_ref.stop();
              text54_v4.stop();  
         }
         answer = 2;
       }   
       
      //--------text24---------//
    } if(event==3){
       //case1    
          if(v1==4 && v2==1) {   //repeat for all possible combinations
              if(order == 1){
                text24_ref.play(1,1,1);
                println("event3_ref");
                first1 = true;
                order = 0;
           } if(order == 2){
                text24_v1.play(1,1,1);
                println("event3_1");
                first2 = true;
                order = 0;
           } if(order == 0 && mouseX>700){
              text24_ref.stop();
              text24_v1.stop();  
         }
         answer = 1;
           //case 2
         }if(v1==4 && v2==2) {   
              if(order == 1){
                text24_ref.play(1,1,1);
                println("event3_ref");
                first1 = true;
                order = 0;
            }if(order == 2){
                text24_v2.play(1,1,1);
                println("event3_2");
                first2 = true;
                order = 0;
            }if(order == 0 && mouseX>700){
              text24_ref.stop();
              text24_v2.stop();  
         }
           answer = 1;
           //case3
         } if(v1==4 && v2==3) {  
              if(order == 1){
                text24_ref.play(1,1,1);
                println("event3_ref");
                first1 = true;
                order = 0;
            } if(order == 2){
                text24_v3.play(1,1,1);
                println("event3_3");
                first2 = true;
                order = 0;
            } if(order == 0 && mouseX>700){
                text24_ref.stop();
                text24_v3.stop();  
           }
           answer = 1;
            //case4
         } if(v1==4 && v2==5) {   
              if(order == 1){
                text24_ref.play(1,1,1);
                println("event3_ref");
                first1 = true;
                order = 0;
            } if(order == 2){
                text24_v3.play(1,1,1);
                println("event3_5");
                first2 = true;
                order = 0;
            } if(order == 0 && mouseX>700){
                text24_ref.stop();
                text24_v3.stop();  
         }
         answer = 1;
            //case5
         } if(v1==1 && v2==4) {   
              if(order == 1){
                text24_v1.play(1,1,1);
                println("event3_1");
                first1 = true;
                order = 0;
            } if(order == 2){
                text24_ref.play(1,1,1);
                println("event3_ref");
                first2 = true;
                order = 0;
            } if(order == 0 && mouseX>700){
                text24_ref.stop();
                text24_v1.stop();  
         }
         answer = 2;
            //case6
         } if(v1==2 && v2==4) {   
              if(order == 1){
                text24_v2.play(1,1,1);
                println("event3_2");
                first1 = true;
                order = 0;
            } if(order == 2){
                text24_ref.play(1,1,1);
                println("event3_ref");
                first2 = true;
                order = 0;
            }  if(order == 0 && mouseX>700){
                text24_ref.stop();
                text24_v2.stop();  
            }
            answer = 2;
            //case7
          }if(v1==3 && v2==4) {   
              if(order == 1){
                text24_v3.play(1,1,1);
                println("event3_3");
                first1 = true;
                order = 0;
           } if(order == 2){
                text24_ref.play(1,1,1);
                println("event3_ref");
                first2 = true;
                order = 0;
            }if(order == 0 && mouseX>700){
                text24_ref.stop();
                text24_v3.stop();  
           }
           answer = 2;
            //case8
         }if(v1==5 && v2==4) {   
              if(order == 1){
                text24_v4.play(1,1,1);
                println("event3_5");
                first1 = true;
                order = 0;
            } if(order == 2){
                text24_ref.play(1,1,1);
                println("event3_ref");
                first2 = true;
                order = 0;
            } if(order == 0 && mouseX>700){
                text24_ref.stop();
                text24_v4.stop();  
            }
            answer = 2;
         }  
       //------------------text9-------------------//
     } if(event==4){
       //case1    
        if(v1==4 && v2==1) {   //repeat for all possible combinations
           if(order == 1){
              text9_ref.play(1,1,1);
              println("event4_ref");
              first1 = true;
              order = 0;
          }if(order == 2){
              text9_v1.play(1,1,1);
              println("event4_1");
              first2 = true;
              order = 0;
          }if(order == 0 && mouseX>700){
              text9_ref.stop();
              text9_v1.stop();  
         }
         answer = 1;
         //case 2
       }if(v1==4 && v2==2) {   
            if(order == 1){
              text9_ref.play(1,1,1);
              println("event4_ref");
              first1 = true;
              order = 0;
          }if(order == 2){
              text9_v2.play(1,1,1);
              println("event4_2");
              first2 = true;
              order = 0;
          }if(order == 0 && mouseX>700){
              text9_ref.stop();
              text9_v2.stop();  
         }
         answer = 1;
         //case3
      } if(v1==4 && v2==3) {  
            if(order == 1){
              text9_ref.play(1,1,1);
              println("event4_ref");
              first1 = true;
              order = 0;
          } if(order == 2){
              text9_v3.play(1,1,1);
              println("event4_3");
              first2 = true;
              order = 0;
          } if(order == 0 && mouseX>700){
              text9_ref.stop();
              text9_v3.stop();  
         }
         answer = 1;
          //case4
        } if(v1==4 && v2==5) {   
            if(order == 1){
              text9_ref.play(1,1,1);
              println("event4_ref");
              first1 = true;
              order = 0;
           }if(order == 2){
              text9_v4.play(1,1,1);
              println("event4_5");
              first2 = true;
              order = 0;
           }if(order == 0 && mouseX>700){
              text9_ref.stop();
              text9_v4.stop();  
          }
          answer = 1;
          //case5
        } if(v1==1 && v2==4) {   
            if(order == 1){
              text9_v1.play(1,1,1);
              println("event4_1");
              first1 = true;
              order = 0;
          }if(order == 2){
              text9_ref.play(1,1,1);
              println("event4_ref");
              first2 = true;
              order = 0;
          }if(order == 0 && mouseX>700){
              text9_ref.stop();
              text9_v1.stop();  
         }
         answer = 2;
          //case6
        } if(v1==2 && v2==4) {   
            if(order == 1){
              text9_v2.play(1,1,1);
              println("event4_2");
              first1 = true;
              order = 0;
          } if(order == 2){
              text9_ref.play(1,1,1);
              println("event4_ref");
              first2 = true;
              order = 0;
          } if(order == 0 && mouseX>700){
              text9_ref.stop();
              text9_v2.stop();  
         }
         answer = 2;
          //case7
        }if(v1==3 && v2==4) {   
            if(order == 1){
              text9_v3.play(1,1,1);
              println("event4_3");
              first1 = true;
              order = 0;
           }if(order == 2){
              text9_ref.play(1,1,1);
              println("event4_ref");
              first2 = true;
              order = 0;
           }if(order == 0 && mouseX>700){
              text9_ref.stop();
              text9_v3.stop();  
         }
         answer = 2;
          //case8
       }if(v1==5 && v2==4) {   
            if(order == 1){
              text9_v4.play(1,1,1);
              println("event4_5");
              first1 = true;
              order = 0;
           }if(order == 2){
              text9_ref.play(1,1,1);
              println("event4_ref");
              first2 = true;
              order = 0;
           }if(order == 0 && mouseX>700){
              text9_ref.stop();
              text9_v4.stop();  
         }
         answer = 2;
       }   
     //--------------text3-----------------//  
    } if(event==5){
       //case1    
        if(v1==4 && v2==1) {   //repeat for all possible combinations
            if(order == 1){
              text3_ref.play(1,1,1);
              println("event5_ref");
              first1 = true;
              order = 0;
           }if(order == 2){
              text3_v1.play(1,1,1);
              println("event5_1");
              first2 = true;
              order = 0;
          }if(order == 0 && mouseX>700){
              text3_ref.stop();
              text3_v1.stop();  
         }
         answer = 1;
         //case 2
       }if(v1==4 && v2==2) {   
            if(order == 1){
              text3_ref.play(1,1,1);
              println("event5_ref");
              first1 = true;
              order = 0;
           }if(order == 2){
              text3_v2.play(1,1,1);
              println("event5_2");
              first2 = true;
              order = 0;
           }if(order == 0 && mouseX>700){
              text3_ref.stop();
              text3_v2.stop();  
         }
         answer = 1;
         //case3
       } if(v1==4 && v2==3) {  
            if(order == 1){
              text3_ref.play(1,1,1);
              println("event5_ref");
              first1 = true;
              order = 0;
          } if(order == 2){
              text3_v3.play(1,1,1);
              println("event5_3");
              first2 = true;
              order = 0;
           }if(order == 0 && mouseX>700){
              text3_ref.stop();
              text3_v3.stop();  
         }
         answer = 1;
          //case4
        } if(v1==4 && v2==5) {   
            if(order == 1){
              text3_ref.play(1,1,1);
              println("event5_ref");
              first1 = true;
              order = 0;
          } if(order == 2){
              text3_v4.play(1,1,1);
              println("event5_5");
              first2 = true;
              order = 0;
          } if(order == 0 && mouseX>700){
              text3_ref.stop();
              text3_v4.stop();  
         }
         answer = 1;
          //case5
       } if(v1==1 && v2==4) {   
            if(order == 1){
              text3_v1.play(1,1,1);
              println("event5_1");
              first1 = true;
              order = 0;
          } if(order == 2){
              text3_ref.play(1,1,1);
              println("event5_ref");
              first2 = true;
              order = 0;
          } if(order == 0 && mouseX>700){
              text9_ref.stop();
              text9_v1.stop();  
         }
         answer = 2;
          //case6
       } if(v1==2 && v2==4) {   
            if(order == 1){
              text3_v2.play(1,1,1);
              println("event5_2");
              first1 = true;
              order = 0;
          } if(order == 2){
              text3_ref.play(1,1,1);
              println("event5_ref");
              first2 = true;
              order = 0;
          } if(order == 0 && mouseX>700){
              text3_ref.stop();
              text3_v2.stop();  
         }
         answer = 2;
          //case7
       }if(v1==3 && v2==4) {   
            if(order == 1){
              text3_v3.play(1,1,1);
              println("event5_3");
              first1 = true;
              order = 0;
          } if(order == 2){
              text3_ref.play(1,1,1);
              println("event5_ref");
              first2 = true;
              order = 0;
          } if(order == 0 && mouseX>700){
              text3_ref.stop();
              text3_v3.stop();  
         }
         answer = 2;
          //case8
       }if(v1==5 && v2==4) {   
            if(order == 1){
              text3_v4.play(1,1,1);
              println("event5_5");
              first1 = true;
              order = 0;
         } if(order == 2){
              text3_ref.play(1,1,1);
              println("event5_ref");
              first2 = true;
              order = 0;
          } if(order == 0 && mouseX>700){
              text3_ref.stop();
              text3_v4.stop();  
         }
         answer = 2;
       }    
    }  
  
}
