/*
drawPlayer ritar rektangeln som man kan styra
*/
void drawPlayer() {
  addSpeed();
  strokeWeight(0);
  translate(width/2, height/2);
  rectMode(CENTER);                   
  fill(255, 183, 252);
  rect(xPos, yPos, 50, 50);
}
/*
setSpeed avgör om man trycker på en specifik knapp så kommer figuren röra på sig
*/
void setSpeed() {
  if (leftKey  == true) {
    xSpeed -= speed; 
    println("MOVE LEFT");
  }  
  if (rightKey == true) {
    xSpeed += speed; 
    println("MOVE RIGHT");
  }
  if (upKey    == true) {
    ySpeed -= speed; 
    println("MOVE UP");
  }
  if (downKey  == true) {
    ySpeed += speed; 
    println("MOVE DOWN");
  }
}

void addSpeed() {
  xPos += xSpeed;
  yPos += ySpeed;
}
