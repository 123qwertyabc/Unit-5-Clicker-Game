// Bryson Kwong
// Clicker Game
boolean skin1On;
boolean skin2On;
boolean skin3On;
PImage skin2;
PImage skin3;
//MODE VARIABLES
int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;
final int OPTIONS = 4;
//TARGET VARIABLES---------------------------------------------------------------
float x, y, d;  
float vx, vy; //target velocity
int score, lives, highscore;
//COLOR PALLETTE
void setup () {
  size(800, 800);
  textAlign(CENTER, CENTER);
  mode = INTRO;
  highscore = 0;
  sliderY = 400;
  skin2 = loadImage("skin2.jpg");
  skin3 = loadImage("skin3.png");
  
  //target initialization
  x=width/2;
  y=height/2;
  d=300;
  score = 0;
  lives = 3;
  vx = random(-5, 5);
  vy = random(-5, 5);
}

void draw() {
  println("X: " + mouseX + " Y: " + mouseY);
  if (mode == INTRO) {
    intro();
  } else if (mode == OPTIONS) {
    options();
  } else if (mode == GAME){
    game();
  } else if (mode == PAUSE){
    pause();
  } else if (mode == GAMEOVER){
    gameover();
  } else {
    println("Error Mode = " + mode);
  }
  if (score > highscore) {
    highscore = score;
  }
}
