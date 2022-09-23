
void setup() {
  size(400, 400);
  int numTargets = 5;
  
  while (numTargets > 0) {
    int x = int(random(width));
    int y = int(random(height/2, height));
    targetLogo(x, y, 75);
    
    numTargets = numTargets - 1;
  }//target drawing
}//setup



void targetLogo(int cx, int cy, int targetSize) {

  fill(255, 0, 0);
  circle(cx, cy, targetSize);

  fill(255);
  circle(cx, cy, targetSize * 0.66);

  fill(255, 0, 0);
  circle(cx, cy, targetSize * 0.33);
}
