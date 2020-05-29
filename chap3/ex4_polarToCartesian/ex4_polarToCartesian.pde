
float r;
float theta;

void setup() {
  size(640, 360);
  r = height * 0.45;
  theta = 0;
}

void draw() {
  
  background(255);
    
  translate(width/2, height/2);
  
  float x = r * cos(theta);
  float y = r * sin(theta);
  
  ellipseMode(CENTER);
  fill(127);
  stroke(0);
  strokeWeight(2);
  line(0,0,x,y);
  ellipse(x, y, 48, 48);
  
  theta += 0.02;
}
