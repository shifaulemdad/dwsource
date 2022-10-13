int x;

void setup() {
  x = 25;

  size(500, 500);
}//setup

void draw() {
  background(255);
  circle(x, 25, 50);
  x++;
}//draw
