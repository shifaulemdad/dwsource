int[] xvals;
int[] yvals;
int MAX_POINTS = 1000;
int numPoints;

void setup() {
  size(600, 400);
  background(0);
  xvals = new int[MAX_POINTS];
  yvals = new int[MAX_POINTS];
  numPoints = 0;

  makeLines(xvals, yvals, 10);
  drawLines(xvals, yvals);
}//setup


void makeLines(int[] xs, int[] ys, int points) {
  for (int i=0; i < points; i++) {
    if (i >= xs.length) {
      return;
    }//end early if too many points
    
    xs[i] = int(random(width));
    ys[i] = int(random(height));
    numPoints++;
  }
}//makeLines

void drawLines(int[] xs, int[] ys) {
  stroke(255);
  strokeWeight(3);
  for (int i=1; i < numPoints; i++) {
    line(xs[i-1], ys[i-1], xs[i] ,ys[i]);
  }//for

}//drawLines
