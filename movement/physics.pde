void updateBallVelocity() {

  ballVy += gravity;
  // Add control for movement keys here
}

void updateBallPosition() {
  ballX += ballVx;
  ballY += ballVy;
}

void resolveCollisions() {
  // Resolving Collisions with floor (bottom wall).
  if (ballX > displayHeight-ballRadius){
    ballX = displayHeight-ballRadius;
    ballVx *= -restitutionCoeff;
  }
   if (ballX < ballRadius){
    ballX = ballRadius;
    ballVx *= -restitutionCoeff;
  }
  if (ballY > displayHeight-ballRadius){
    ballY = displayHeight-ballRadius;
    ballVy *= -restitutionCoeff;
  }
   if (ballY < ballRadius){
    ballY = ballRadius;
    ballVy *= -restitutionCoeff;
  }
  // Resolve Collisions with all other walls.
}