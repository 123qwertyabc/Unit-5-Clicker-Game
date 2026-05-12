void game() {
  background(0, 255, 0);
  //pause button
  stroke(0);
  fill(255);
  circle(100, 100, 100);
  //score
  textSize(30);
  fill(0);
  text("Score: " + score, width/2, 50);
  text("Lives: " +lives, width/2, 100);
  //display target
  fill(255);
  stroke(0);
  strokeWeight(5);
  circle(x, y, d);
  //movement
  x = x + vx;
  y = y + vy;
  
  //bouncing
  // || means or
  if ( x < d/2 || x > width-d/2) {
    vx = vx * -1;
  }
  if ( y < d/2 || y > height-d/2) {
    vy = vy * -1;
  }
}

void gameClicks() {
  if ( dist(mouseX, mouseY, x, y) < d/2) {
    score = score + 1;
    vx = vx * 1.1;
    vy = vy * 1.1;
    d = d - 5;
  } else if (dist(mouseX, mouseY, 100, 100) < 50) {
       mode = PAUSE; 
  } else {
    lives = lives - 1;
    if (lives == 0) mode = GAMEOVER;
  }
}
