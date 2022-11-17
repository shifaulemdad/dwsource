Ball b;
int score;

void setup() {
  size(600, 400);
  background(0);
  score = 0;

  b = new Ball();
}//setup

void draw() {
  background(0);
  b.display();
  b.move();
}//draw

void keyPressed() {
  if (key == ' ') {
    b.reset();
  }//reset
  else if (key == CODED) {
    if (keyCode == UP) {
      b.changeSpeed(0, -1);
    }//up
    else if (keyCode == DOWN) {
      b.changeSpeed(0, 1);
    }//down
    else if (keyCode == LEFT) {
      b.changeSpeed(-1, 0);
    }//left
    else if (keyCode == RIGHT) {
      b.changeSpeed(1, 0);
    }//right
  }//non ASCII keys
}

void mousePressed() {
  if ( b.onBall(mouseX, mouseY) ) {
    score+= b.getScoreValue();
    b.reset();
    println(score);
  }//hit
}//mousePressed
