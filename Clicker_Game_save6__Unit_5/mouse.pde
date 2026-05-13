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
