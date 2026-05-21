void mouseReleased() {
  if (mode == INTRO) {
    introClicks();
  } else if (mode == GAME) {
    gameClicks();
  } else if (mode == OPTIONS) {
    optionsClicks();
  } else if (mode == PAUSE) {
    pauseClicks();
  } else if (mode == GAMEOVER) {
    gameoverClicks();
  }
  if (mode == OPTIONS && mouseX>200 && mouseX<300 && mouseY>200 && mouseY < 300) {
    skin1On = true;
    skin2On = false;
    skin3On = false;
  }
  if (mode == OPTIONS && mouseX>350 && mouseX<450 && mouseY>200 && mouseY < 300) {
    skin2On = true;
    skin1On = false;
    skin3On = false;
  }
  if (mode == OPTIONS && mouseX>500 && mouseX<600 && mouseY>200 && mouseY < 300) {
    skin3On = true;
    skin1On = false;
    skin2On = false;
  }
  }
void tactileStart() {
  if (mouseX>300 && mouseX<500 && mouseY > 500 && mouseY<600)
    {
      fill(255, 255, 0);
    }
  }
void tactileOptions() {
  if (mouseX>300 && mouseX<500 && mouseY > 650 && mouseY<750)
    {
      fill(255, 255, 0);
    }
  }
void tactileBack() {
 if (mouseX>550 && mouseX<750 && mouseY > 640 && mouseY<740) {
    fill(255, 255, 0);
  }
  }
void tactileSkin1() {
  if (mouseX>200 && mouseX<300 && mouseY>200 && mouseY < 300) {
    fill(255, 255, 0);
  }
}
void tactileSkin2() {
  if (mouseX>350 && mouseX<450 && mouseY>200 && mouseY < 300) {
    fill(255, 255, 0);
  }
}
void tactileSkin3() {
  if (mouseX>500 && mouseX<600 && mouseY>200 && mouseY < 300) {
    fill(255, 255, 0);
  }
}
void skin1OnOff() {
  if (skin1On == true) {
    stroke(255, 0, 0);
    strokeWeight(7);
  } else {
    stroke(0);
    strokeWeight(5);
  }
}
void skin2OnOff() {
  if (skin2On == true) {
    stroke(255, 0, 0);
    strokeWeight(7);
  } else {
    stroke(0);
    strokeWeight(5);
  }
}
void skin3OnOff() {
  if (skin3On == true) {
    stroke(255, 0, 0);
    strokeWeight(7);
  } else {
    stroke(0);
    strokeWeight(5);
  }
}
