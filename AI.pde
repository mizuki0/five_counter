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

