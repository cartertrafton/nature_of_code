
class Spring { 
  PVector anchor;
  float len;
  float k = 0.2;

  Spring(float x, float y, int l) {
    anchor = new PVector(x, y);
    len = l;
  } 

  void connect(Mover m) {
    PVector force = PVector.sub(m.position, anchor);
    float d = force.mag();
    float stretch = d - len;

    force.normalize();
    force.mult(-1 * k * stretch);
    m.applyForce(force);
  }

  void constrainLength(Mover m, float minlen, float maxlen) {
    PVector dir = PVector.sub(m.position, anchor);
    float d = dir.mag();
    if (d < minlen) {
      dir.normalize();
      dir.mult(minlen);
      m.position = PVector.add(anchor, dir);
      m.velocity.mult(0);
    } 
    else if (d > maxlen) {
      dir.normalize();
      dir.mult(maxlen);
      m.position = PVector.add(anchor, dir);
      m.velocity.mult(0);
    }
  }

  void display() { 
    stroke(0);
    fill(175);
    strokeWeight(2);
    rectMode(CENTER);
    rect(anchor.x, anchor.y, 10, 10);
  }

  void displayLine(Mover m) {
    strokeWeight(2);
    stroke(0);
    line(m.position.x, m.position.y, anchor.x, anchor.y);
  }
}
