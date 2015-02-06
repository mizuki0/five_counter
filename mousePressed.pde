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
