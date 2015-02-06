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

