float offset = 20;
float hexAngle = 0;
float[]x1 = {-250, -550, -700, 250, 550, 700};
float[]y1 = {-150, 150, -150, 150, -200, 200};
float[]x2 = {700, -250, -550, -700, 250, 550};
float[]y2 = {200, -150, 150, -150, 150, -200};
float rotationSpeed = 1;

void drawLine() {
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(hexAngle));
  fill(255);
  stroke(5);
  for (int i = 0; i < x1.length; i++) {
    fill(255,0,0);
    line(x1[i], y1[i], x2[i], y2[i]);    //Hexagon
    println(x1[i]+" "+ y1[i]+" "+ x2[i] +" "+ y2[i]);
  }
  popMatrix();
  if (hexAngle >= 360) hexAngle = 0;
  hexAngle+=rotationSpeed;
  println(hexAngle);
}
