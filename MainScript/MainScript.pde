float time;
float widthCircle;
float heightCircle;
int nbrCols;
int nbrRows;

CircleGrid red;
CircleGrid blue;

void setup(){
  size(600, 600);
  frameRate(30);
  noStroke();
  
  time = 0;
  nbrCols = 10;
  nbrRows = nbrCols;
  
  widthCircle = width/nbrCols/2;
  heightCircle = height/nbrRows/2;
  
  red = new CircleGrid(1);
  blue = new CircleGrid(-1);
}

void draw(){
  background(0);
  
  red.update(time);
  blue.update(time);
  red.display();
  blue.display();
  
  time += 0.1;
}
