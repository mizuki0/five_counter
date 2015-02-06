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

