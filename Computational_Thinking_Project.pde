// Project on Computational Thinking - Abstraction
//"irrelevant" and "Important" clouds represent both types of information

void setup() {
  size(900, 900);
  background(150,10,100); // magenta?
}

void draw() {
  float s = random(900); // for "screen"
  float p = random(900); // for "point"
  boolean isIrrelevantthoughts = random(1) > 0.5;
  drawCloud(s, p, isIrrelevantthoughts);
  drawAbstract("Focus on the important information only and ignore irrelevant details.");
  }

// perameters so both types of clouds get drawn
void drawCloud(float x, float y, boolean isIrrelevantthoughts) { 
  if (isIrrelevantthoughts) {
    fill(0); // grey clouds
  } else {
    fill(255); // white clouds
}
  
  // perameters for clouds
  noStroke();
  
  ellipse(x, y, 80, 60);
  ellipse(x - 40, y + 10, 60, 40);
  ellipse(x + 40, y + 10, 60, 40); 
  ellipse(x - 55, y + 25, 50, 30);
  ellipse(x + 55, y + 25, 50, 30);
  ellipse(x, y + 30, 80, 35);
  
// wording inside clouds
String thoughtMessage;
  if (isIrrelevantthoughts) {
    thoughtMessage = "irrelevant"; // displayed on grey clouds only
  } else {
    thoughtMessage = "important"; // displayed on white clouds only
}

  fill(100);
  textSize(25);
  textAlign(CENTER, CENTER);
  text(thoughtMessage, x, y + 10);
}

//square shape behind abstraction sentence
void drawAbstract(String words){
   fill(200, 255, 55, 255);
   rectMode(CENTER);
   rect(width/2, height/2, 450, 450, 50);
   
//perameters for abstraction sentence
   fill(0);
   textSize(65);
   textAlign(CENTER, CENTER);
   text(words, width/2, height/2, 450, 450);
 }
