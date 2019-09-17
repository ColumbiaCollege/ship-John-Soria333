//creates floats
float X1 = 0;
float Y1 = 0;
float X2 = 0;
float Y2 = 0;
float X3 = 0;
float Y3 = 0;
float X4 = 0;
float X5 = 0;
//establishes booleans for directions
boolean right = false;
boolean left = false;
boolean up = false;
boolean down = false;
// sets starting values and images
void setup() {
  size(700, 500);
  background(31, 97, 141);
  fill(0);
  rect(0, 0, width, 50);
 // fill(245, 243, 206);
  //ellipse(600, 25, 30, 30);
  X1 = width/2;
  Y1 = height/2;
  X2 = 360;
  Y2 = 210;
  X3 = 382;
  Y3 = 214;
  X4 = 330;
  X5 = 370;
  noStroke();
}

void draw() {
  //wipe(VERY IMPORTANTE)
  background(31, 97, 141);
  rect(0, 0, width, 100);
  fill(245, 243, 206);
  ellipse(600, 45, 60, 60);
  //changes position
  if (left) {
    X1 = X1 - 5;
    X2 = X2 - 5;
    X3 = X3 - 5;
    X4 = X4 - 5;
    X5 = X5 - 5;
  }
  if (right) {
    X1 = X1 + 5;
    X2 = X2 + 5;
    X3 = X3 + 5;
    X4 = X4 + 5;
    X5 = X5 + 5;
  }
  if (up) {
    Y1 = Y1 - 5;
    Y2 = Y2 - 5;
    Y3 = Y3 - 5;
  }
  if (down) {
    Y1 = Y1 + 5;
    Y2 = Y2 + 5;
    Y3 = Y3 + 5;
  }
  //draws submarine
  fill(93, 109, 126);
  rect(X2, Y2, 20, 8);
  rect(X2, Y2, 8, 25);
  ellipse(X1, Y1, 80, 40);
  fill(247, 220, 111);
  ellipse(X3, Y3, 5, 10);
  fill(0);
  ellipse(X1, Y1, 12, 12);
  ellipse(X4, Y1, 12, 12);
  ellipse(X5, Y1, 12, 12);
  
  //creates boundaries
  if (X1 < 40) {
    X1 = 40;
  }
  if (X1 > 660) {
    X1 = 660;
  }
  if (X2 < 50) {
    X2 = 50;
  }
  if (X2 > 670) {
    X2 = 670;
  }
  if (X3 < 72) {
    X3 = 72;
  }
  if (X3 > 692) {
    X3 = 692;
  }
  if (X4 < 20) {
    X4 = 20;
  }
  if (X4 > 640) {
    X4 = 640;
  }
  if (X5 < 60) {
    X5 = 60;
  }
  if (X5 > 680) {
    X5 = 680;
  }
  if (Y1 < 120) {
    Y1 = 120;
  }
  if (Y1 > 480) {
    Y1 = 480;
  }
  if (Y2 < 80) {
    Y2 = 80;
  }
  if (Y2 > 440) {
    Y2 = 440;
  }
  if (Y3 < 84) {
    Y3 = 84;
  }
  if (Y3 > 444) {
    Y3 = 444;
  }
  //only moves when key is pressed
  //(WASD movements)
  if (keyPressed == true) {
    if (key == 'a') {
    left = true;
  }
  if (key == 'd') {
    right = true;
  }
  if (key == 'w') {
    up = true;
  }
  if (key == 's') {
    down = true;
  }
  }
  else {
    left = false;
    right = false;
    up = false;
    down = false;
  }
}
