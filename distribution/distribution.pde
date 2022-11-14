/* ===================
  This program, when completed, will populate 2 arrays randomly
  using different techniques and draw them as bar graphs as they
  change over time

  This assignment is broken up into 3 parts. The code you
  need to complete each part is clearly labeled. Do not
  move to a new part until you have completed the previous
  ones.

  PART 0: Add 1 to a radomly chosen index of an array in draw().

  PART 1: Display 1 array as a bar graph with a specified y-coordinte
          for the baseline of all the bars.

  PART 2: Randomly select an index from a second array using a
          different technique (described bellow).

  PART 3: Draw both arrays as bar graphs on the same screen,
          splitting the screen in half.

  PART 4: Write a method to calculate the average  of the
          elements in an array.

  PART 5: Using the average method you wrote, draw a line on each
          bar graph across the screen at the average value.
  =================== */


/* ===================
 Global variables & setup()

 LEAVE THESE ALONE
 =================== */
int[] values0;
int[] values1;
int dataSize;
int ySplit;

void setup() {
  size(600, 400);
  dataSize = 20;
  ySplit = height/2;
  values0 = new int[dataSize];
  values1 = new int[dataSize];
}//setup



void draw() {
  background(255);

  /* PART 0
    Pick a random int that is a valid index
    in the array values0.
  */
  int value = int(random(values0.length));
  /* PART 0
    Add 1 to the element in values0 at the
    randomly chosen index.
  */
  values0[value]++;

  /* PART 1
    Use drawBars to draw a bar graph representing values0.
    The bottom of each bar should be at ySplit (this is
    set in setup() )

    You will also have to modify drawBars below
  */
  drawBars(values0, width/values0.length, ySplit);

  /* PART 2
    Pick 2 random ints in the range [0, values1.length/2)
  */
  int v0 = int(random(values1.length/2));
  int v1 = int(random(values1.length/2));
  /* PART 2
    Add 1 to the element in values1 whose index is the sum
    of the 2 randomly chosen values above.
  */
  values1[v0+v1]++;

  /* PART 3
    Use drawBars to draw a bar graph representing values1.
    The bottom of each bar should be at the bottom of the screen.

    After this point, your program should be drawing 2 bar graphs.
  */
  drawBars(values1, width/values1.length, height);

  /* PART 4
    Complete getAverage below. Store the averages of
    each array in different variables.
  */
  float avg0 = getAverage(values0);
  float avg1 = getAverage(values1);
  //println("values0 average: " + avg0 + "\tvalues1 average: " + avg1);


  /* PART 5
    Draw 2 horizontal lines going acress the screen.

    One line should represent the average value of the elements
    in values0.

    One line should represent the average value of the elements in
    values1.

    The lines shoudl be draw over the matching bar graphs at the
    correct y-corrdinate.
  */
  line(0, ySplit - avg0, width, ySplit - avg0);
  line(0, height - avg1, width, height - avg1);

  //saveFrame("output/" + nf(frameCount, 4) + ".png");
}//draw

/* PART 1
  Currently, this method will successfully draw a
  bar graph representing the values in an array of ints.

  The base of each bar is currently the height of the screen.

  Modify this method to use yBaseline as the base of each bar
  instead.
*/
void drawBars(int[] data, int barWidth, int yBaseline) {
  int x = 0;
  for(int i=0; i<data.length; i++) {
    //rect(x, yBaseline-data[i], barWidth, data[i]);
    rect(x, yBaseline, barWidth, -data[i]);
    x+= barWidth;
  }//loop through array
}//drawValues

/* PART 4
  Complete this method, which should return the average
  of all the elements within the parameter array.
*/
float getAverage(int[] data) {
  float sum = 0;
  for(int i=0; i<data.length; i++) {
    sum+= data[i];
  }//loop
  return sum/data.length;
}//getAverage
