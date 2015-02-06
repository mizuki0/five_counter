boolean exception1(){//3個碁石が並んでいた時に片方に置いてない時に優先する
  for(int i=0;i<13;i++){
    for(int j=0;j<13;j++){
      if(j+1j+4<=13 && Haco[i][j]==0 && Haco[i][j+1]==1 && Haco[i][j+2]==1 && Haco[i][j+3]==1 && Haco[i][j+4]==0){
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
