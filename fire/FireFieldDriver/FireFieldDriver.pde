//State variable constants
int DIRT = 0;
int FIRE = 1;
int BURNT = 2;
int GRASS = 3;

//Helpful color values
color DIRT_COLOR = #81582F;
color FIRE_COLOR = #F20C0C;
color BURNT_COLOR = #810707;
color GRASS_COLOR = #49B90D;

//Driver variables
boolean burning = false;
int grassDensity = 75;
int numTracts = 20;
int tractLength = 20;
Field f;


void setup() {
  size(700, 700);
  frameRate(10);
  f = new Field(numTracts, tractLength, grassDensity);
  f.showLand();
}//setup

void draw() {
  f.showLand();
  if (burning) {
    f.liveFire();
  }//burning
}//draw



void keyPressed() {
  if (key == ' ') {
    burning = !burning;
  }//start burning
  else if (key == 'r') {
    burning = false;
    f.setupLand(grassDensity);
  }
}
