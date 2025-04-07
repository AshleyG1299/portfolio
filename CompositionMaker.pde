void setup() {
      size(650,700);
      background(0);
}

void draw() {
      colorMode(RGB,255);
      strokeWeight(random(5));
      stroke(random(150,255));
      fill(random(250), random(50), random(255), random(255));
      int randomNumber = ceil(random(10));
      rect (random(255), random(displayWidth), random(displayHeight),
      random(displayWidth/randomNumber),
      random(displayHeight/randomNumber)); 
      ellipse(random(displayWidth), random(displayHeight),
      random(displayWidth/randomNumber),
      random(displayHeight/randomNumber)); 
      triangle(random(displayWidth), random(displayHeight),
      random(displayWidth), random(displayHeight),random(displayWidth), random(displayHeight));
}

void mousePressed() {
      noLoop();
      saveFrame(timeStamp() + ".png");
}

void mouseReleased() {
      loop();
}

String timeStamp() {
      int d = day();    
      int m = month();  
      int y = year();   
      int s = second(); 
      int n = minute(); 
      int h = hour();    
      
     return String.valueOf(m) + "-" + String.valueOf(d)+ "-" + 
     String.valueOf(y)+ "_" + String.valueOf(h) + "." + String.valueOf(n) 
     + "." + String.valueOf(s);
    }
