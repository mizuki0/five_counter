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


