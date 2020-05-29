Mover m;
Spring spring;

void setup() {
  size(640,360);
  spring = new Spring(width/2,10,100); 
  m = new Mover(width/2,100); 

}

void draw()  {
  background(255); 
  PVector gravity = new PVector(0,2);
  m.applyForce(gravity);
  
  spring.connect(m);
  spring.constrainLength(m,30,200);
  
  m.update();
  m.drag(mouseX,mouseY);
  
  spring.displayLine(m); 
  m.display(); 
  spring.display(); 
  
  fill(0);
  text("click and drag mover",10,height-5);
}

void mousePressed()  {
  m.clicked(mouseX,mouseY);
}

void mouseReleased()  {
  m.stopDragging(); 
}
