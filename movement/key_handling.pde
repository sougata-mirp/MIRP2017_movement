void keyPressed() {
  if (key == UP)       up = true;
  if (key == LEFT)     left = true;
  if (key == RIGHT)    right = true;
  if (key == DOWN )    down = true;
}
void keyReleased() {
  if (key == UP)       up = false;
  if (key == LEFT)     left = false;
  if (key == RIGHT)    right = false;
   if (key == DOWN )    down = false;
}

float radiusIncrement = 1.0;

void detectKeys() {
  println(ballRadius);
  if (left)
    ballX = ballX - ballRadius;
  if (right) 
    ballX=ballX + ballRadius;
  if(up)
    ballY=ballY -ballRadius;
    if(down)
    ballY=ballY+ballRadius;
}