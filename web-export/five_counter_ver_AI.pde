/**
 * 画面をクリックして座標を特定した後にa キーでCPU対戦、d キーで二人対戦でゲームがスタートします。<br>
 * r キーでリセットできます。クリックでその場所に碁石が置けます。<br>
 * 固まった場合は、ページをリロードしてください。<br><br>
 * AIとのバトルがメインです。<br>
 * 楽しんでくだされば幸いです...<br><br>
 * 画像　引用元（下記URL参照）<br>
   http://www.kabegami.com/shashin-bu/C00201/show/id/PHOT000000000003976E/<br>
   http://光速軌道アバタードライブ.gamerch.com/かぐや姫<br>
*/
PImage img;
/* @pjs preload="gomoku.jpg","sample.png";*/
int [][] Haco = new int[14][14]; 
int change = 0;
int stop_end = 0;
int count_draw = 0;
int judge_draw = 0;
int judge = 0;
int next_turn = 0;
int screen = 0;
int third1 = 0;
int third2 = 0;
int first1 = 0;
int first2 = 0;
int next1 = 0;
int next2 = 0;
int ex1 = 0;
int ex2 = 0;

void setup(){
  size(700,730);
    title();
}

void title(){
   background(0);
   img = loadImage("gomoku.jpg");
   image(img, 0, 120);
   fill(0, 255, 255);
   textSize(150);
   textAlign(CENTER, CENTER);
   text("五目並べ", width/2, 80);
   fill(0, 255, 255);
   textSize(50);
   textAlign(CENTER, CENTER);
   text("~vs.AI~", width/2+200, 180);
   fill(255, 255, 255);
   textSize(80);
   textAlign(CENTER, CENTER);
   text("GAME START", width/2, height/2+140);
   fill(255, 255, 255);
   textSize(30);
   textAlign(CENTER, CENTER);
   text("aボタンでCPU対戦　dボタンで二人対戦", width/2, height/2+245);
}

void backbord(){
  background(0);
  noStroke();
  smooth();
  fill(255,255,0);
  arc(width/2,height/2,width,height,0,TWO_PI);
  fill(0);
  arc(width/2-60,height/2,width,height,0,TWO_PI);
}

void bord(){
  for(int i=0;i<13;i++){
    strokeWeight(2);
    stroke(255);
    line(50+50*i,50,50+50*i,50*13);
    line(50,50+50*i,50*13,50+50*i);
  }
}

void draw(){
  if(screen == 2){
   AI();
  }
}

void keyPressed(){
  if(key == 'a'){
    if(screen==0){
      backbord();
      bord();
      screen = 2;
    }
  }
  if(key == 'd'){
    if(screen==0){
      backbord();
      bord();
      screen = 1;
    }
  }
  if(key == 'r'){
    setup();
    reset();
  }
}


void reset() {
  for (int i = 0; i < 14; i++) {
    for (int j = 0; j < 14; j++) {
      Haco[i][j] = 0;
    }
  }
   change = 0;
   stop_end = 0;
   count_draw = 0;
   judge_draw = 0;
   judge = 0;
   next_turn = 0;
   screen = 0;
}

void AI(){
   if(stop_end==0){
     if(change % 2 == 0 && Haco[7][7]==0){
              white_stone(7,7);
              Haco[7][7]=-1;
              change++;
             }
     if(change % 2 == 0 && Haco[7][7]==-1 && next_turn == 0){
           while(1>0){
           int s = int(random(6,9));
           int m = int(random(6,9));
           if(Haco[s][m]==0){  
              white_stone(s,m);
              Haco[s][m]=-1;
              change++;
              next_turn++;
              judge_white(s,m);
              break;
             } 
            }
           }
      if(change % 2 == 0 && first_search()==true){
              white_stone(first1,first2);
              Haco[first1][first2]=-1;
              if(judge_white(first1,first2)==1){
                  stop_end++;
                  show_text(-5);
                }else{
                  judge_draw++;
                }
                judge_draw1();
              change++;
             }
      if(change % 2 == 0 && first_disturb()==true){
              white_stone(first1,first2);
              Haco[first1][first2]=-1;
              if(judge_white(first1,first2)==1){
                  stop_end++;
                  show_text(-5);
                }else{
                  judge_draw++;
                }
                judge_draw1();
              change++;
             }
     if(change % 2 == 0 && exception2()==true){
              white_stone(first1,first2);
              Haco[first1][first2]=-1;
              if(judge_white(first1,first2)==1){
                  stop_end++;
                  show_text(-5);
                }else{
                  judge_draw++;
                }
                judge_draw1();
              change++;
             }
      if(change % 2 == 0 && exception1()==true){
              white_stone(first1,first2);
              Haco[first1][first2]=-1;
              if(judge_white(first1,first2)==1){
                  stop_end++;
                  show_text(-5);
                }else{
                  judge_draw++;
                }
                judge_draw1();
              change++;
             }
      if(change % 2 == 0 && next_disturb()==true){
              white_stone(next1,next2);
              Haco[next1][next2]=-1;
              if(judge_white(next1,next2)==1){
                  stop_end++;
                  show_text(-5);
                }else{
                  judge_draw++;
                }
                judge_draw1();
              change++;
             }
      if(change % 2 == 0 && next_search()==true){
              white_stone(next1,next2);
              Haco[next1][next2]=-1;
              if(judge_white(next1,next2)==1){
                  stop_end++;
                  show_text(-5);
                }else{
                  judge_draw++;
                }
                judge_draw1();
              change++;
             }
      if(change % 2 == 0 && third_search()==true){
              white_stone(third1,third2);
              Haco[third1][third2]=-1;
              if(judge_white(third1,third2)==1){
                  stop_end++;
                  show_text(-5);
                }else{
                  judge_draw++;
                }
                judge_draw1();
              change++;
             }
         if(change % 2 == 0 && third_disturb()==true){
              white_stone(third1,third2);
              Haco[third1][third2]=-1;
              if(judge_white(third1,third2)==1){
                  stop_end++;
                  show_text(-5);
                }else{
                  judge_draw++;
                }
                judge_draw1();
              change++;
             } 
      if(change % 2 == 0){
         while(1>0){
           int s2 = int(random(1,12));
           int m2 = int(random(1,12));
           if(Haco[s2][m2]==0){  
              white_stone(s2,m2);
              Haco[s2][m2]=-1;
              change++;
              judge_white(s2,m2);
              if(judge_white(s2,m2)==1){
                  stop_end++;
                  show_text(-5);
                }else{
                  judge_draw++;
                }
                judge_draw1();
              break;
           }
         }
      }
   }
}

boolean exception1(){//3個碁石が並んでいた時に片方に置いてない時に優先する
  for(int i=0;i<13;i++){
    for(int j=0;j<13;j++){
      if(j+4<=13 && Haco[i][j]==0 && Haco[i][j+1]==1 && Haco[i][j+2]==1 && Haco[i][j+3]==1 && Haco[i][j+4]==0){
        if(j>=0 && Haco[i][j]==0){
          first1 = i;
          first2 = j;
          return true;
        }
        if(j+4<=13 && Haco[i][j+4]==0){
          first1 = i;
          first2 = j+4;
          return true;
        }
      } 
      if(j+4<=13 && Haco[j][i]==0 && Haco[j+1][i]==1 && Haco[j+2][i]==1 && Haco[j+3][i]==1 && Haco[j+4][i]==0){
        if(j>=0 && Haco[j][i]==0){
          first1 = j;
          first2 = i;
          return true;
        }
        if(j+4<=13 && Haco[j+4][i]==0){
          first1 = j+4;
          first2 = i;
          return true;
        }
      }
       if(j+4<=13 && Haco[i][j]==0 && Haco[i+1][j+1]==1 && Haco[i+2][j+2]==1 && Haco[i+3][j+3]==1 && Haco[i+4][j+4]==0){
        if(i>=0 && j>=0 && Haco[i][j]==0){
          first1 = i;
          first2 = j;
          return true;
        }
        if(i+4<=13 && j+4<=13 && Haco[i+4][j+4]==0){
          first1 = i+4;
          first2 = j+4;
          return true;
        }
       }
       if(i+4<=13 && j-4>=0 && Haco[i][j]==0 && Haco[i+1][j-1]==1 && Haco[i+2][j-2]==1 && Haco[i+3][j-3]==1 && Haco[i+4][i-4]==0){
        if(i>=0 && j<=13 && Haco[i][j]==0){
          first1 = i;
          first2 = j;
          return true;
        }
        if(i+4<=13 && j-4>=0 && Haco[i+4][j-4]==0){
          first1 = i+4;
          first2 = j-4;
          return true;
        }
      }
    }
  }
  return false;
}
boolean exception2(){//ooo oと並んでる時にooo×oと置く
  for(int i=0;i<13;i++){
    for(int j=0;j<13;j++){
      if(j+4<=13 && Haco[i][j]==1 && Haco[i][j+1]==0 && Haco[i][j+2]==1 && Haco[i][j+3]==1 && Haco[i][j+4]==1){
          first1 = i;
          first2 = j+1;
          return true;
      } 
      if(j+4<=13 && Haco[i][j]==1 && Haco[i][j+1]==1 && Haco[i][j+2]==0 && Haco[i][j+3]==1 && Haco[i][j+4]==1){
          first1 = i;
          first2 = j+2;
          return true;
      } 
      if(j+4<=13 && Haco[i][j]==1 && Haco[i][j+1]==1 && Haco[i][j+2]==1 && Haco[i][j+3]==0 && Haco[i][j+4]==1){
          first1 = i;
          first2 = j+3;
          return true;
      } 
      if(j+4<=13 && Haco[j][i]==1 && Haco[j+1][i]==0 && Haco[j+2][i]==1 && Haco[j+3][i]==1 && Haco[j+4][i]==1){
          first1 = j+1;
          first2 = i;
          return true;
      }
      if(j+4<=13 && Haco[j][i]==1 && Haco[j+1][i]==1 && Haco[j+2][i]==0 && Haco[j+3][i]==1 && Haco[j+4][i]==1){
          first1 = j+2;
          first2 = i;
          return true;
      }
      if(j+4<=13 && Haco[j][i]==1 && Haco[j+1][i]==1 && Haco[j+2][i]==1 && Haco[j+3][i]==0 && Haco[j+4][i]==1){
          first1 = j+3;
          first2 = i;
          return true;
      }
       if(j+4<=13 && Haco[i][j]==1 && Haco[i+1][j+1]==0 && Haco[i+2][j+2]==1 && Haco[i+3][j+3]==1 && Haco[i+4][j+4]==1){
          first1 = i+1;
          first2 = j+1;
          return true;
       }
        if(j+4<=13 && Haco[i][j]==1 && Haco[i+1][j+1]==1 && Haco[i+2][j+2]==0 && Haco[i+3][j+3]==1 && Haco[i+4][j+4]==1){
          first1 = i+2;
          first2 = j+2;
          return true;
       }
        if(j+4<=13 && Haco[i][j]==1 && Haco[i+1][j+1]==1 && Haco[i+2][j+2]==1 && Haco[i+3][j+3]==0 && Haco[i+4][j+4]==1){
          first1 = i+3;
          first2 = j+3;
          return true;
       }
       if(i+4<=13 && j-4>=0 && Haco[i][j]==1 && Haco[i+1][j-1]==0 && Haco[i+2][j-2]==1 && Haco[i+3][j-3]==1 && Haco[i+4][i-4]==1){
          first1 = i+1;
          first2 = j-1;
          return true;
      }
       if(i+4<=13 && j-4>=0 && Haco[i][j]==1 && Haco[i+1][j-1]==1 && Haco[i+2][j-2]==0 && Haco[i+3][j-3]==1 && Haco[i+4][i-4]==1){
          first1 = i+2;
          first2 = j-2;
          return true;
      }
       if(i+4<=13 && j-4>=0 && Haco[i][j]==1 && Haco[i+1][j-1]==1 && Haco[i+2][j-2]==1 && Haco[i+3][j-3]==0 && Haco[i+4][i-4]==1){
          first1 = i+3;
          first2 = j-3;
          return true;
      }
      
      
      
      if(j+3<=13 && j+1<=13 && j+2<=13 && Haco[i][j]==1 && Haco[i][j+1]==0 && Haco[i][j+2]==1 && Haco[i][j+3]==1){
          first1 = i;
          first2 = j+1;
          return true;
      } 
      if(j+3<=13 && j+1<=13 && j+2<=13 && Haco[i][j]==1 && Haco[i][j+1]==1 && Haco[i][j+2]==0 && Haco[i][j+3]==1){
          first1 = i;
          first2 = j+2;
          return true;
      } 
      if(j+3<=13 && j+2<=13 && j+1<=13 && Haco[j][i]==1 && Haco[j+1][i]==0 && Haco[j+2][i]==1 && Haco[j+3][i]==1){
          first1 = j+1;
          first2 = i;
          return true;
      }
      if(j+3<=13 && j+2<=13 && j+1<=13 && Haco[j][i]==1 && Haco[j+1][i]==1 && Haco[j+2][i]==0 && Haco[j+3][i]==1){
          first1 = j+2;
          first2 = i;
          return true;
      }
       if(j+3<=13 && j+2<=13 && j+1<=13 && Haco[i][j]==1 && Haco[i+1][j+1]==0 && Haco[i+2][j+2]==1 && Haco[i+3][j+3]==1){
          first1 = i+1;
          first2 = j+1;
          return true;
       }
        if(j+3<=13 && j+2<=13 && j+1<=13 && Haco[i][j]==1 && Haco[i+1][j+1]==1 && Haco[i+2][j+2]==0 && Haco[i+3][j+3]==1){
          first1 = i+2;
          first2 = j+2;
          return true;
       }
       if(i+3<=13 && i+2<=13 && i+1<=13 && j-4>=0 && j-3>=0 && j-2>=0 && j-1>=0 && Haco[i][j]==1 && Haco[i+1][j-1]==0 && Haco[i+2][j-2]==1 && Haco[i+3][j-3]==1){
          first1 = i+1;
          first2 = j-1;
          return true;
      }
       if(i+3<=13 && i+2<=13 && i+1<=13 && j-4>=0 && j-3>=0 && j-2>=0 && j-1>=0 && Haco[i][j]==1 && Haco[i+1][j-1]==1 && Haco[i+2][j-2]==0 && Haco[i+3][j-3]==1){
          first1 = i+2;
          first2 = j-2;
          return true;
      }
    }
  }
  return false;
}
boolean first_search(){
  for(int i=0;i<13;i++){
    for(int j=0;j<13;j++){
      if(j+3<=13 && j+1<=13 && j+2<=13 && Haco[i][j]==-1 && Haco[i][j+1]==-1 && Haco[i][j+2]==-1 && Haco[i][j+3]==-1){
        if(j-1>=0 && Haco[i][j-1]==0){
          first1 = i;
          first2 = j-1;
          return true;
        }
        if(j+4<=13 && Haco[i][j+4]==0){
          first1 = i;
          first2 = j+4;
          return true;
        }
      } 
      if(j+3<=13 && j+2<=13 && j+1<=13 && Haco[j][i]==-1 && Haco[j+1][i]==-1 && Haco[j+2][i]==-1 && Haco[j+3][i]==-1){
        if(j-1>=0 && Haco[j-1][i]==0){
          first1 = j-1;
          first2 = i;
          return true;
        }
        if(j+4<=13 && Haco[j+4][i]==0){
          first1 = j+4;
          first2 = i;
          return true;
        }
      }
       if(j+3<=13 && j+2<=13 && j+1<=13 && Haco[i][j]==-1 && Haco[i+1][j+1]==-1 && Haco[i+2][j+2]==-1 && Haco[i+3][j+3]==-1){
        if(i-1>0 && j-1>0 && Haco[i-1][j-1]==0){
          first1 = i-1;
          first2 = j-1;
          return true;
        }
        if(i+4<13 && j+4<13 && Haco[i+4][j+4]==0){
          first1 = i+4;
          first2 = j+4;
          return true;
        }
       }
       if(i+3<=13 && i+2<=13 && i+1<=13 && j-3>=0 && j-2>=0 && j-1>=0 && Haco[i][j]==-1 && Haco[i+1][j-1]==-1 && Haco[i+2][j-2]==-1 && Haco[i+3][j-3]==-1){
        if(i-1>0 && j+1<13 && Haco[i-1][j+1]==0){
          first1 = i-1;
          first2 = j+1;
          return true;
        }
        if(i+4<13 && j-4>0 && Haco[i+4][j-4]==0){
          first1 = i+4;
          first2 = j-4;
          return true;
        }
      }
    }
  }
  return false;
}

boolean first_disturb(){
  for(int i=0;i<13;i++){
    for(int j=0;j<13;j++){
      if(j+3<=13 && j+1<=13 && j+2<=13 && Haco[i][j]==1 && Haco[i][j+1]==1 && Haco[i][j+2]==1 && Haco[i][j+3]==1){
        if(j-1>0 && Haco[i][j-1]==0){
          first1 = i;
          first2 = j-1;
          return true;
        }
        if(j+4<13 && Haco[i][j+4]==0){
          first1 = i;
          first2 = j+4;
          return true;
        }
      } 
      if(j+3<=13 && j+2<=13 && j+1<=13 && Haco[j][i]==1 && Haco[j+1][i]==1 && Haco[j+2][i]==1 && Haco[j+3][i]==1){
        if(j-1>0 && Haco[j-1][i]==0){
          first1 = j-1;
          first2 = i;
          return true;
        }
        if(j+4<13 && Haco[j+4][i]==0){
          first1 = j+4;
          first2 = i;
          return true;
        }
      }
       if(j+3<=13 && j+2<=13 && j+1<=13 && Haco[i][j]==1 && Haco[i+1][j+1]==1 && Haco[i+2][j+2]==1 && Haco[i+3][j+3]==1){
        if(i-1>0 && j-1>0 && Haco[i-1][j-1]==0){
          first1 = i-1;
          first2 = j-1;
          return true;
        }
        if(i+4<13 && j+4<13 && Haco[i+4][j+4]==0){
          first1 = i+4;
          first2 = j+4;
          return true;
        }
       }
       if(i+3<=13 && i+2<=13 && i+1<=13 && j-3>=0 && j-2>=0 && j-1>=0 && Haco[i][j]==1 && Haco[i+1][j-1]==1 && Haco[i+2][j-2]==1 && Haco[i+3][j-3]==1){
        if(i-1>0 && j+1>0 && Haco[i-1][j+1]==0){
          first1 = i-1;
          first2 = i+j;
          return true;
        }
        if(i+4<13 && j-4>0 && Haco[i+4][j-4]==0){
          first1 = i+4;
          first2 = j-4;
          return true;
        }
      }
    }
  }
  return false;
}

int judge_blue(int x, int y) {
  int ax = x;
  int ay = y;
  int count = 0;
  //横判定
  while(Haco[ax][ay] == 1){
    ax -= 1;
    count++;
    if (ax < 0) {
      break;
    }
  }
  ax = x + 1;
  ay = y;
  while(Haco[ax][ay] == 1){
    ax += 1;
    count++;
    if (ax > 13) {
      break;
    }
  }
  if (count == 5) {
    return 1;
  }
  
  //縦判定
  ax = x;
  ay = y;
  count = 0;
  while(Haco[ax][ay] == 1){
    ay -= 1;
    count++;
    if (ay < 0) {
      break;
    }
  }
  ax = x;
  ay = y + 1;
  while(Haco[ax][ay] == 1){
    ay += 1;
    count++;
    if (ay > 13) {
      break;
    }
  }
  if (count == 5) {
    return 1;
  }

  //右斜め下判定
  ax = x;
  ay = y;
  count = 0;
  while(Haco[ax][ay] == 1){
    ax -= 1;
    ay -= 1;
    count++;
    if (ay < 0 || ax < 0) {
      break;
    }
  }
  ax = x + 1;
  ay = y + 1;
  while(Haco[ax][ay] == 1){
    ax += 1;
    ay += 1;
    count++;
    if (ay > 13 || ax > 13) {
      break;
    }
  }
  if (count == 5) {
    return 1;
  }

  //右斜め上判定
  ax = x;
  ay = y;
  count = 0;
  while(Haco[ax][ay] == 1){
    ax += 1;
    ay -= 1;
    count++;
    if (ay < 0 || ax > 13) {
      break;
    }
  }
  ax = x - 1; 
  ay = y + 1;
  if(x - 1 > 0) {
    while(Haco[ax][ay] == 1){
      ax -= 1;
      ay += 1;
      count++;
      if (ay > 13 || ax < 0) {
        break;
      }
    }
  }
  if (count == 5) {
    return 1;
  }
  return 0;
}

int judge_white(int x, int y) {
  int ax = x;
  int ay = y;
  int count = 0;
  //横判定
  while(Haco[ax][ay] == -1){
    ax -= 1;
    count--;
    if (ax < 0) {
      break;
    }
  }
  ax = x + 1;
  ay = y;
  while(Haco[ax][ay] == -1){
    ax += 1;
    count--;
    if (ax > 13) {
      break;
    }
  }
  if (count == -5) {
    return 1;
  }

  //縦判定
  ax = x;
  ay = y;
  count = 0;
  while(Haco[ax][ay] == -1){
    ay -= 1;
    count--;
    if (ay < 0) {
      break;
    }
  }
  ax = x;
  ay = y + 1;
  while(Haco[ax][ay] == -1){
    ay += 1;
    count--;
    if (ay > 13) {
      break;
    }
  }
  if (count == -5) {
    return 1;
  }

  //右斜め下判定
  ax = x;
  ay = y;
  count = 0;
  while(Haco[ax][ay] == -1){
    ax -= 1;
    ay -= 1;
    count--;
    if (ay < 0 || ax < 0) {
      break;
    }
  }
  ax = x + 1 ;
  ay = y + 1;
  while(Haco[ax][ay] == -1){
    ax += 1;
    ay += 1;
    count--;
    if (ay > 13 || ax > 13) {
      break;
    }
  }
  if (count == -5) {
    return 1;
  }
  
  //右斜め上判定
  ax = x;
  ay = y;
  count = 0;
  while(Haco[ax][ay] == -1){
    ax += 1;
    ay -= 1;
    count--;
    if (ay < 0 || ax > 13) {
      break;
    }
  }
  ax = x - 1;
  ay = y + 1;
  if (x - 1 > 0) {
    while(Haco[ax][ay] == -1){
      ax -= 1;
      ay += 1;
      count--;
      if (ay > 13 || ax < 0) {
        break;
      }
    }
  }
  if (count == -5) {
    return 1;
  }
  return 0;
}

//引き分け判定
void judge_draw1() {
  if (count_draw == 13*13) {
    show_text(1);
  }
}

void show_text(int judge) {
  if (judge == 5) {
    img = loadImage("sample.png");
    image(img, -50, 120);
    fill(0, 255, 255);
    textSize(100);
    textAlign(CENTER, CENTER);
    text("You win!!", width/2, height/2);
    fill(0, 128, 255);
    textSize(50);
    textAlign(CENTER, CENTER);
    text("Play Again?", width/2, height-250);
  }
 if (judge == -5) {
    fill(0, 255, 255);
    textSize(100);
    textAlign(CENTER, CENTER);
    text("You lose!!", width/2, height/2);
    fill(0, 0, 255);
    textSize(50);
    textAlign(CENTER, CENTER);
    text("Play Again?", width/2, height-250);
  }
  if (judge == 4) {
    fill(0, 255, 255, 180);
    textSize(100);
    textAlign(CENTER, CENTER);
    text("blue win!!", width/2, height/2);
    fill(0, 0, 255, 180);
    textSize(50);
    textAlign(CENTER, CENTER);
    text("Play Again?", width/2, height-250);
  }
 if (judge == -4) {
    fill(0, 255, 255);
    textSize(100);
    textAlign(CENTER, CENTER);
    text("white win!!", width/2, height/2);
    fill(0, 0, 255);
    textSize(50);
    textAlign(CENTER, CENTER);
    text("Play Again?", width/2, height-250);
  }
  if (judge == 1) {
    fill(255, 0, 255);
    textSize(100);
    textAlign(CENTER, CENTER);
    text("draw!!", width/2, height/2);
    fill(0, 0, 255);
    textSize(50);
    textAlign(CENTER, CENTER);
    text("Play Again?", width/2, height-250);
  }
}
void mousePressed(){
  if(screen == 2){
    for(int i=0;i<13;i++){
      for(int j=0;j<13;j++){
        if (25+50*i<mouseX && mouseX<75+50*i && 
            25+50*j<mouseY && mouseY<75+50*j) {
              if(stop_end==0){
                if(Haco[i][j]==0){
                  if(change % 2 != 0){
                    blue_stone(i,j);
                    Haco[i][j]=1;
                  if(judge_blue(i,j)==1){
                    stop_end++;
                    show_text(5);
                  }else{
                    judge_draw++;
                  }
                  judge_draw1();
                  change++;
              }
            }
          }
        }
      }
    }
  }
  if(screen == 1){
    for(int i=0;i<13;i++){
      for(int j=0;j<13;j++){
        if (25+50*i<mouseX && mouseX<75+50*i && 
            25+50*j<mouseY && mouseY<75+50*j) {
              if(stop_end==0){
                if(Haco[i][j]==0){
                  if(change%2==0){
                    blue_stone(i,j);
                    Haco[i][j]=1;
                  if(judge_blue(i,j)==1){
                    stop_end++;
                    show_text(4);
                  }else{
                    judge_draw++;
                  }
                  judge_draw1();
                  change++;
                  }else{
                    white_stone(i,j);
                    Haco[i][j]=-1;
                    if(judge_white(i,j)==1){
                      stop_end++;
                      show_text(-4);
                  }else{
                    judge_draw++;
                  }
                  judge_draw1();
                  change++;
              }
            }
          }
        }
      }
    }
  }
}




void blue_stone(int i, int j){
  strokeWeight(1);
  noStroke();
  smooth();
  fill(156,167,226);
  ellipse(50+50*i,50+50*j,40,40);
}
void white_stone(int i, int j){
  strokeWeight(1);
  noStroke();
  smooth();
  fill(255);
  ellipse(50+50*i,50+50*j,40,40);
}
boolean next_search(){
  for(int i=0;i<13;i++){
    for(int j=0;j<13;j++){
      if(j+2<=13 && j+1<=13 && Haco[i][j]==-1 && Haco[i][j+1]==-1 && Haco[i][j+2]==-1){
        if(j-1>=0 && Haco[i][j-1]==0){
          next1 = i;  
          next2 = j-1;
          return true;
        }
        if(j+3<=13 && Haco[i][j+3]==0){
          next1 = i;  
          next2 = j+3;
          return true;
        }
      } 
      if(j+2<=13 && j+1<=13 && Haco[j][i]==-1 && Haco[j+1][i]==-1 && Haco[j+2][i]==-1){
        if(j-1>=0 && Haco[j-1][i]==0){
          next1 = j-1;
          next2 = i;
          return true;
        }
        if(j+3<=13 && Haco[j+3][i]==0){
          next1 = j+3;
          next2 = i;
          return true;
        }
      }
      if(i+2<=13 && i+1<=13 && j+2<=13 && j+1<=13 && Haco[i][j]==-1 && Haco[i+1][j+1]==-1 && Haco[i+2][j+2]==-1){
        if(i-1>0 && j-1>0 && Haco[i-1][j-1]==0){
          next1 = i-1;
          next2 = j-1;
          return true;
        }
        if(i+3<13 && j+3<13 && Haco[i+3][j+3]==0){
          next1 = i+3;
          next2 = j+3;
          return true;
        }
      }
       if(i+2<=13 && i+1<=13 && j-2>=0 && j-1>=0 && Haco[i][j]==-1 && Haco[i+1][j-1]==-1 && Haco[i+2][j-2]==-1){
        if(i-1>0 && j+1<13 && Haco[i-1][j+1]==0){
          next1 = i-1;
          next2 = j+1;
          return true;
        }
        if(i+3<13 && j-3>0 && Haco[i+3][j-3]==0){
          next1 = i+3;
          next2 = j-3;
          return true;
        }
      }
    }
  }
  return false;
}

boolean next_disturb(){
  for(int i=0;i<13;i++){
    for(int j=0;j<13;j++){
      if(j+2<=13 && j+1<=13 && Haco[i][j]==1 && Haco[i][j+1]==1 && Haco[i][j+2]==1){
        if(j-1>0 && Haco[i][j-1]==0){
          next1 = i;  
          next2 = j-1;
          return true;
        }
        if(j+3<13 && Haco[i][j+3]==0){
          next1 = i;  
          next2 = j+3;
          return true;
        }
      } 
      if(j+2<=13 && j+1<=13 && Haco[j][i]==1 && Haco[j+1][i]==1 && Haco[j+2][i]==1){
        if(j-1>0 && Haco[j-1][i]==0){
          next1 = j-1;
          next2 = i;
          return true;
        }
        if(j+3<13 && Haco[j+3][i]==0){
          next1 = j+3;
          next2 = i;
          return true;
        }
      }
      if(i+2<=13 && i+1<=13 && j+2<=13 && j+1<=13 && Haco[i][j]==1 && Haco[i+1][j+1]==1 && Haco[i+2][j+2]==1){
        if(i-1>0 && j-1>0 && Haco[i-1][j-1]==0){
          next1 = i-1;
          next2 = j-1;
          return true;
        }
        if(i+3<13 && j+3<13 && Haco[i+3][j+3]==0){
          next1 = i+3;
          next2 = j+3;
          return true;
        }
      }
       if(i+2<=13 && i+1<=13 && j-2>=0 && j-1>=0 && Haco[i][j]==1 && Haco[i+1][j-1]==1 && Haco[i+2][j-2]==1){
        if(i-1>0 && j+1<13 && Haco[i-1][j+1]==0){
          next1 = i-1;
          next2 = j+1;
          return true;
        }
        if(i+3<13 && j-3>0 && Haco[i+3][j-3]==0){
          next1 = i+3;
          next2 = j-3;
          return true;
        }
      }
    }
  }
  return false;
}



      
 
boolean third_search(){
  for(int i=0;i<13;i++){
    for(int j=0;j<13;j++){
      if(j+1<=13 && Haco[i][j]==-1 && Haco[i][j+1]==-1){
        if(j-1>=0 && Haco[i][j-1]==0){
          third1 = i;
          third2 = j-1;
          return true;
        }
        if(j+2<=13 && Haco[i][j+2]==0){
          third1 = i;
          third2 = j+2;
          return true;
        }
      } 
      if(j+1<=13 && Haco[j][i]==-1 && Haco[j+1][i]==-1){
        if(j-1>=0 && Haco[j-1][i]==0){
          third1 = j-1;
          third2 = i;
          return true;
        }
        if(j+2<=13 && Haco[j+2][i]==0){
          third1 = j+2;
          third2 = i;
          return true;
        }
      }
      if(i+1<=13 && j+1<=13 && Haco[i][j]==-1 && Haco[i+1][j+1]==-1){
        if(i-1>0 && j-1>0 && Haco[i-1][j-1]==0){
          third1 = i-1;
          third2 = j-1;
          return true;
        }
        if(i+2<13 && j+2<13 && Haco[i+2][j+2]==0){
          third1 = i+2;
          third2 = j+2;
          return true;
        }
      }
      if(i+1<=13 && j-1>=0 && Haco[i][j]==-1 && Haco[i+1][j-1]==-1){
        if(i-1>0 && j+1<13 && Haco[i-1][j+1]==0){
          third1 = i-1;
          third2 = j+1;
          return true;
        }
        if(i+2<13 && j-2>0 && Haco[i+2][j-2]==0){
          third1 = i+2;
          third2 = j-2;
          return true;
        }
      }
    }
  }
  return false;
}

boolean third_disturb(){
  for(int i=0;i<13;i++){
    for(int j=0;j<13;j++){
      if(j+1<=13 && Haco[i][j]==1 && Haco[i][j+1]==1){
        if(j-1>0 && Haco[i][j-1]==0){
          third1 = i;
          third2 = j-1;
          return true;
        }
        if(j+2<13 && Haco[i][j+2]==0){
          third1 = i;
          third2 = j+2;
          return true;
        }
      } 
      if(j+1<=13 && Haco[j][i]==1 && Haco[j+1][i]==1){
        if(j-1>0 && Haco[j-1][i]==0){
          third1 = j-1;
          third2 = i;
          return true;
        }
        if(j+2<13 && Haco[j+2][i]==0){
          third1 = j+2;
          third2 = i;
          return true;
        }
      }
      if(i+1<=13 && j+1<=13 && Haco[i][j]==1 && Haco[i+1][j+1]==1){
        if(i-1>0 && j-1>0 && Haco[i-1][j-1]==0){
          third1 = i-1;
          third2 = j-1;
          return true;
        }
        if(i+2<13 && j+2<13 && Haco[i+2][j+2]==0){
          third1 = i+2;
          third2 = j+2;
          return true;
        }
      }
      if(i+1<=13 && j-1>=0 && Haco[i][j]==1 && Haco[i+1][j-1]==1){
        if(i-1>0 && j+1<13 && Haco[i-1][j+1]==0){
          third1 = i-1;
          third2 = j+1;
          return true;
        }
        if(i+2<13 && j-2>0 && Haco[i+2][j-2]==0){
          third1 = i+2;
          third2 = j-2;
          return true;
        }
      }
    }
  }
  return false;
}



