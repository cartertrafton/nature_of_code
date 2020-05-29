Oscillator[] oscillators = new Oscillator[10];

void setup()  {   
  size(640,360);  
  smooth();  
  for (int i = 0; i < oscillators.length; i++) {
    oscillators[i] = new Oscillator();
  }
  background(255);  
}   

void draw() {     
  background(255);  
  for (int i = 0; i < oscillators.length; i++) {
    oscillators[i].oscillate();
    oscillators[i].display();
  }
}   
