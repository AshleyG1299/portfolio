// Confetti 
// Built on code from The Coding Train / Daniel Shiffman
// Your Ashley Godoy, 3/16/25
// my shape is a lollipop!

Confetti[] confetti = new Confetti[100];

boolean partyTime = false;

void setup(){
  size(800, 800);
  
  for (int i = 0; i < confetti.length; i++) {
    confetti[i] = new Confetti();
  }
}

void mousePressed() {
  partyTime = true;
  for (Confetti c : confetti){
   c.burst(mouseX, mouseY);
    }
}

void draw(){
  background(255);
  
  if (partyTime) {
  for (Confetti c : confetti){
    c.update();
    c.show();
    }
  }
}
