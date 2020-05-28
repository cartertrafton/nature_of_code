
class Mover {

  PVector position;
  PVector velocity;
  PVector acceleration;
  float topspeed;

  Mover() {
    position = new PVector(random(width), random(height));
    velocity = new PVector(random(-2, 2), random(-2, 2));
    acceleration = new PVector(-0.001, 0.01);
    topspeed = 10;
  }

  void update() {
    velocity.add(acceleration);
    velocity.limit(topspeed);
    position.add(velocity);
  }

  void display() {
    stroke(0);
    strokeWeight(2);
    fill(127);
    ellipse(position.x, position.y, 48, 48);
  }

  void checkEdges() {

    if (position.x > width) {
      position.x = 0;
    } 
    else if (position.x < 0) {
      position.x = width;
    }

    if (position.y > height) {
      position.y = 0;
    } 
    else if (position.y < 0) {
      position.y = height;
    }
  }
}
