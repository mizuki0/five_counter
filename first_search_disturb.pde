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

