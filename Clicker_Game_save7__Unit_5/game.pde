void game() {
  background(0, 255, 0);
  //display target
  fill(255);
  stroke(0);
  strokeWeight(5);
  circle(x, y, d);
  //score
  textSize(30);
  fill(0);
  text("Score: " + score, width/2, 50);
  text("Lives: " +lives, width/2, 100);
  //pause button
  stroke(0);
  fill(255);
  circle(100, 100, 100);
  line(90, 70, 90, 125);
  line(110, 70, 110, 125);
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
    vx = vx * 1.05;
    vy = vy * 1.05;
    d = d - 3;
  } else if (dist(mouseX, mouseY, 100, 100) < 50) {
       circle(100, 100, 100); 
       fill(0);
       triangle(81, 73, 130, 98, 81, 123); 
       mode = PAUSE; 
  } else {
    lives = lives - 1;
    if (lives == 0) mode = GAMEOVER;
  }
}
