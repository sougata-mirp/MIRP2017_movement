int displayWidth=500, displayHeight=500;

float MAX_VELOCITY = 10;

float bgColor = 255;

float gravity = 0.0;
float ballX, ballY;
float ballVx = 8, ballVy = 3;
float ballRadius = 10;
color ballColor = color(100, 255, 70, 230);

float restitutionCoeff = 0.95;

char UP = 'w', LEFT = 'a', RIGHT = 'd', DOWN = 's';
boolean up, left, right, down;

//boolean keys[] = new boolean [4];

void setup() {
  size(displayWidth, displayHeight);
  ballX=displayWidth/3;
  ballY=displayHeight/5;
  ballVx = 8;
  ballVy = 1;
}

void draw() {
  background(bgColor);
  detectKeys();
  drawBall();
  updateBallVelocity();
  updateBallPosition();
  resolveCollisions();
}

void drawBall() {
  fill(ballColor);
  ellipse(ballX, ballY, 2*ballRadius, 2*ballRadius);
}