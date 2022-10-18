float cx, cy, ly, sy;
int radius;
int amp;

void setup() {
  size(600, 400);
  background(0);
  cx = 0;
  cy = height/2;
  sy = height/2;
  ly = height/2;
  amp = 100;
  radius = 2;
  stroke(255);
}//setup

void draw() {
  //background(0);
  fill(255);
  circle(cx, ly, radius * 2);
  fill(255, 0, 0);
  circle(cx, cy, radius * 2);
  fill(0, 0, 255);
  circle(cx, sy, radius * 2);
  cx+=1; //cx = cx + 1
  cy = amp * cos( radians(cx) ) + height/2;
  sy = amp * sin( radians(cx) ) + height/2;

  if (cx > width) {
    cx = 0;
  }//rest cx
  
}//draw
