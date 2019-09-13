float X1 = 0;
float Y1 = 0;
float X2 = 0;
float Y2 = 0;
float X3 = 0;
float Y3 = 0;
float X4 = 0;
float X5 = 0;

boolean right = false;
boolean left = false;
boolean up = false;
boolean down = false;

void setup() {
  size(500, 300);
  background(31, 97, 141);
  fill(0);
  rect(0, 0, width, 50);
  X1 = width/2;
  Y1 = height/2;
  X2 = 260;
  Y2 = 110;
  X3 = 282;
  Y3 = 114;
  X4 = 230;
  X5 = 270;
}

void draw() {
  //changes position
  if (left) {
    X1 = X1 - 2;
    X2 = X2 - 2;
    X3 = X3 - 2;
    X4 = X4 - 2;
    X5 = X5 - 2;
  }
  if (right) {
    X1 = X1 + 2;
    X2 = X2 + 2;
    X3 = X3 + 2;
    X4 = X4 + 2;
    X5 = X5 + 2;
  }
  if (up) {
    Y1 = Y1 - 2;
    Y2 = Y2 - 2;
    Y3 = Y3 - 2;
  }
  if (down) {
    Y1 = Y1 + 2;
    Y2 = Y2 + 2;
    Y3 = Y3 + 2;
  }
  //draws submarine
  fill(93, 109, 126);
  stroke(93, 109, 126);
  rect(X2, Y2, 20, 8);
  rect(X2, Y2, 8, 25);
  ellipse(X1, Y1, 80, 40);
  fill(247, 220, 111);
  ellipse(X3, Y3, 5, 10);
  fill(0);
  ellipse(X1, Y1, 12, 12);
  ellipse(X4, Y1, 12, 12);
  ellipse(X5, Y1, 12, 12);
}

void keyPressed() {
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
