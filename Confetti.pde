class Confetti {
  
  float x, y;
  float xspeed, yspeed;
  
  Confetti(){
    x = -1000;
    y = -1000;
    xspeed = 0;
    yspeed = 0;
    
  }
  
  void burst(float mx, float my) {
    x = mx;
    y = my;
    xspeed = random(-10, 10);
    yspeed = random(-10, 10);
    
  }
  
  void update() {
    x = x + xspeed;
    y = y + yspeed;
    
    yspeed = yspeed + 0.5;
    
  }
  
  void show() {
    fill(random(255), random (255), random(255), 100);
    rectMode(CENTER);
    circle(x, y, 30);
    rect(x, y, 10, 35);
    stroke(255);
  }
}
