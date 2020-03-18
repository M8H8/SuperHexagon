boolean leftKey;
boolean rightKey;
boolean upKey;
boolean downKey;
float speed = 1;
float xPos, yPos;
float xSpeed, ySpeed;
int runDrawLine = 0;
float degrees = 0;

void setup() {
  size(800, 500, P2D);
  frameRate(60);
}

/*
Denna draw kallar på alla funktioner som jag har definterat i de andra filerna
 */
void draw() {
  //Kallar på meny funktionen som också innehåller spel funktionen
  checkMenu();
}

/*
Ritar alla hexagons
 */
void drawHexagons(int howMany) {
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(degrees));
  fill(255);
  strokeWeight(10);
  stroke(255, 0, 0);
  for (int i = howMany+1; i > 1; i--) {
    hexagon(0, 0, pow(i, 2) * 15);
  }
  popMatrix();
}
/*
void draw() {
 background(255);
 if (checkGame == "game") {  
 drawLine();    
 xSpeed *= 0.85;
 ySpeed *= 0.85;
 setSpeed();
 drawPlayer();    //  Kallar på funktionen
 if (runDrawLine == 3600) {
 drawLine();
 runDrawLine = 0;
 }
 runDrawLine += 1;
 //hexagon(width/2, height/2, 10);
 } else {
 
 //meny
 }
 }
 */
