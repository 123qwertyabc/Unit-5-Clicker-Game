float sliderY;
void options() {
  background(255);
  fill(255);
  if (mode == OPTIONS && skin1On == true) {
     rect(300, 400, 200, 200);
     circle(400, 500, 150);
  }
  if (mode == OPTIONS && skin2On == true) {
    rect(300, 400, 200, 200);
    image(skin2, 320, 420, 160, 160);
  }
  if (mode == OPTIONS && skin3On == true) {
    rect(300, 400, 200, 200);
    image(skin3, 320, 420, 160, 160);
  }
  strokeWeight(5);
  tactileBack();
  rect(550, 640, 200, 100);
  fill(0);
  textSize(50);
  text("Options", 400, 100);
  textSize(20);
  text("Back to menu", 650, 690);
  fill(255);
  tactileSkin1();
  skin1OnOff();
  rect(200, 200, 100, 100);
  fill(255);
  stroke(0);
  tactileSkin2();
  skin2OnOff();
  rect(350, 200, 100, 100);
  stroke(0);
  fill(255);
  tactileSkin3();
  skin3OnOff();
  rect(500, 200, 100, 100);
  stroke(0);
  fill(255);
  strokeWeight(2);
  circle(250, 250, 90);
  image(skin2, 355, 205, 90, 90);
  image(skin3, 505, 205, 90, 90);
  strokeWeight(5);
}

void optionsClicks() {
 if (mouseX>550 && mouseX<750 && mouseY > 640 && mouseY<740) {
    mode = INTRO;
}
}
