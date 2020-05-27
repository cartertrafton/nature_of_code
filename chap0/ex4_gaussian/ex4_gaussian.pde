void settings(){
  size(640, 360);

}

void setup(){
  background(255);

}

void draw(){
  float xloc = randomGaussian();
  float sd = 60;
  float mean = width/2;
  xloc = ( xloc * sd ) + mean; 
  
  fill(0, 10);
  noStroke();
  ellipse(xloc, height/2, 16, 16); 
}
