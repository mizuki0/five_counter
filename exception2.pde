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
       if(i+4<=13 && j+4<=13 && Haco[i][j]==1 && Haco[i+1][j+1]==0 && Haco[i+2][j+2]==1 && Haco[i+3][j+3]==1 && Haco[i+4][j+4]==1){
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
