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
