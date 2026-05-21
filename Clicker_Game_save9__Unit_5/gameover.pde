void gameover() {
  background(255, 0, 0);
  textSize(100);
  fill(0);
  text("Game Over", 400, 400);
  textSize(50);
  text("High Score: " + highscore, width/2, height/1.1);
}

void gameoverClicks () {
  mode = INTRO;
  lives = 5;
  vx = 1;
  vy = 1;
  score = 0;
  d = 300;
}
