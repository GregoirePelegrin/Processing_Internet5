class CircleGrid{
  float widthCell;
  float heightCell;
  float freq;
  
  CircleGrid(float f){
    this.widthCell = widthCircle;
    this.heightCell = heightCircle;
    this.freq = f;
  }
  
  void update(float t){
    this.widthCell = widthCircle * (1 + 1.0/3 * sin(this.freq*t));
    this.heightCell = widthCircle * (1 + 1.0/3 * sin(-this.freq*t));
  }
  
  void display(){
    if(this.freq >= 0){
      fill(255, 0, 0, 50);
    } else {
      fill(0, 0, 255, 50);
    }
    for(int i=0; i<=nbrCols; i++){
      for(int j=0; j<=nbrRows; j++){
       ellipse(i*width/nbrCols, j*height/nbrRows, this.widthCell, this.heightCell);
      }
    }
  }
}
