void intro() {
  background(255);
  fill(255);
  tactileStart();
  rect(300, 500, 200, 100);
  fill(255);
  tactileOptions();
  rect(300, 650, 200, 100);
  textSize(50);
  fill(0);
  strokeWeight(5);
  text("Start", 400, 550);
  text("Options", 400, 700);
  textSize(100);
  text("CLICKR", 400, 200);
}
void introClicks() {
  if (mouseX>300 && mouseX<500 && mouseY > 500 && mouseY<600){ 
    mode = GAME;
  if (mouseX>300 && mouseX<500 && mouseY > 650 && mouseY<750) {
    mode = OPTIONS;
  }
  }
}
