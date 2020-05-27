Walker w;

void settings(){
  size(800, 200);
}

void setup() {
  frameRate(30);
  w = new Walker();
}

void draw() {
  background(255);
  w.walk();
  w.display();
}
