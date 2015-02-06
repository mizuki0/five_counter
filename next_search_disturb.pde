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



      
 
