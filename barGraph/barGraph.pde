int[] values;

void setup() {
  size(300, 200);

  values = new int[10];
  randomArray(values, 50, height);

  drawBars(values, width/values.length);
  //saveFrame("cw04_bars_invert.png");
}//setup


void randomArray(int[] data, int low, int high) {
  for (int i=0; i<data.length; i++) {
    data[i] = int(random(low, high));
  }//array loop
}//randomArray

void drawBars(int[] data, int barWidth) {
  int x = 0;
  int maxI = maxIndex(data);
  for(int i=0; i<data.length; i++) {
    if (i == maxI) {
      fill(255, 255, 0);
    }//max value fill
    else {
      fill(255);
    }//otehr value fill
    rect(x, height, barWidth, -data[i]);
    //rect(x, 0, barWidth, data[i]);
    x+= barWidth;
  }//loop through array
}//drawValues

int maxIndex(int[] data) {
  int maxPos = 0;
  int maxVal = data[0];
  for (int i=1; i < data.length; i++) {
    if (data[i] > maxVal) {
      maxVal = data[i];
      maxPos = i;
    }//update new max
  }//for array
  return maxPos;
}//maxIndex
