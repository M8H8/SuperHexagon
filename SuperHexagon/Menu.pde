boolean[] buttonPressed;
final int MAINMENU = 0;
final int GAME = 1;
int menu = 0;
String[] buttonNames = {"Start Game", "Quit Game"};

void checkMenu() {

  if (menu == MAINMENU) {
    background(0);
    createButtons();
  } else if (menu == GAME) {
    //Kallar på spelet
    callGame();
  } else {
    println("MENU IS NOT MAIN MENU OR GAME");
  }
}

void createButtons() {
  int amountOfButtons = 2;
  buttonPressed = new boolean[amountOfButtons]; //Skapar en lista, amountOfButtons stor, av booliska värden (sant eller falskt).

  int buttonX = 391;
  int buttonY = 159;
  int buttonWidth = 354;
  int buttonHeight = 77;

  buttonPressed(buttonX, buttonY, buttonWidth, buttonHeight); //Skapar knapparnas hitbox.

  //Ge knapparna egenskaper.
  if (buttonPressed[0]) menu = MAINMENU; //Samma som att skriva if (buttonPressed[0] == true){ menu = MAINMENU; } 
  if (buttonPressed[1]) menu = GAME;
  //if (buttonPressed[2]) menu = 5;

  showButton(buttonX, buttonY, buttonWidth, buttonHeight); //Ritar knapparna.
}
void buttonPressed(int buttonX, int buttonY, int buttonWidth, int buttonHeight) {

  //Kollar om knappen är nedtryckt, om så lägg sant i buttonPressed listan.

  buttonX -= buttonWidth/2; //Samma som att skriva buttonX = buttonX - buttonWidth/2
  buttonY -= buttonHeight/2;

  for (int i = 0; i<buttonPressed.length; i++) { //buttonPressed.length är antalet värden i listan buttonPressed, dvs amountOfButtons många.
    if (mouseX > buttonX && mouseX < buttonX + buttonWidth) {
      if (mouseY > buttonY*(i+1) && mouseY < (buttonY + buttonHeight)*(i+1)) {
        if (mousePressed) {
          buttonPressed[i] = true;
        }
      }
    } else buttonPressed[i] = false;
  }
}

void showButton(int buttonX, int buttonY, int buttonWidth, int buttonHeight) {

  //Skapar knappar
  int textSize = 30;
  rectMode(CENTER);

  fill(255, 0, 0);
  for (int i = 0; i<buttonPressed.length; i++) {
    fill(255, 0, 0);
    rect(buttonX, buttonY*(i+1), buttonWidth, buttonHeight);
    fill(255);
    textSize(textSize);
    text(buttonNames[i], buttonX-83, (buttonY + (textSize/2)*(i+1)));
  }
}
