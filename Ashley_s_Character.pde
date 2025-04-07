float x, y, r, g, b;

void setup() {
  //canvas
  size(640, 640);
  background(255, 0, 150);
  rectMode(CENTER);
}

void draw() {
  x = random(width);
  y = random(height);
  r = random(50, 200);
  g = random(0, 50);
  b = random(50, 200);
  fill(r, g, b, 100);
  circle(x, y, random(50,150));

  //hair
  strokeWeight(5);
  fill(70, 60, 60);
  ellipse(318, 350, 500, 600);

  //head
  colorMode(RGB, 80);
  strokeWeight(5);
  fill(70, 60, 60, 150);
  ellipse(320, 320, 400, 400);
  rect(320, 85, 1, 70);

  //body
  colorMode(RGB, 200);
  strokeWeight(3);
  fill(130, 90, 190);
  ellipse(320, 720, 300, 400);

  //nose
  colorMode(RGB, 200);
  strokeWeight(3);
  fill(255);
  ellipse(320, 320, 40, 50);

  //eye shadow
  strokeWeight(0);
  fill(255, 0, 90, 70);
  ellipse(230, 270, 70, 90);
  ellipse(410, 270, 70, 90);

  //eyes
  colorMode(RGB, 255);
  strokeWeight(3);
  fill(255);
  ellipse(230, 280, 70, 90);
  ellipse(410, 280, 70, 90);

  //eye color
  colorMode(RGB, 150);
  fill(20, 80, 90, 60);
  ellipse(240, 300, 30, 40);
  ellipse(420, 300, 30, 40);

  //Pupils
  colorMode(RGB, 255);
  fill(0);
  ellipse(250, 300, 10, 20);
  ellipse(430, 300, 10, 20);

  //mouth
  colorMode(RGB, 255);
  strokeWeight(3);
  fill(0);
  ellipse(320, 420, 70, 90);

  //tongue
  strokeWeight(3);
  fill(255, 0, 0);
  ellipse(332, 451, 70, 30);

  //eyebrows
  colorMode(RGB, 255);
  strokeWeight(3);
  fill(70, 60, 60);
  rect(230, 200, 60, 10);
  rect(410, 200, 60, 10);
}
