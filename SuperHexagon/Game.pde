

void callGame() {
  background(0);
  setSpeed();
  drawHexagons(4);      
  drawPlayer();    
  xSpeed *= 0.8; //
  ySpeed *= 0.8;
  degrees += 1;
}
