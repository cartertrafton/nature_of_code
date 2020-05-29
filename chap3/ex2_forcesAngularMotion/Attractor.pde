
class Attractor {
  float mass;         
  PVector position;   
  float g;

  Attractor() {
    position = new PVector(width/2, height/2);
    mass = 20;
    g = 0.4;
  }


  PVector attract(Mover m) {
    PVector force = PVector.sub(position, m.position);            
    float distance = force.mag();                                
    distance = constrain(distance, 5.0, 25.0);                 
    force.normalize();                                           
    float strength = (g * mass * m.mass) / (distance * distance); 
    force.mult(strength);                                        
    return force;
  }

  void display() {
    stroke(0);
    strokeWeight(2);
    fill(127);
    ellipse(position.x, position.y, 48, 48);
  }
}
