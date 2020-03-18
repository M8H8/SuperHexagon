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

  int buttonX = width/2;
  int buttonY = height/3;
  int buttonWidth = width/3;
  int buttonHeight = height/5;

  buttonPressed(buttonX, buttonY, buttonWidth, buttonHeight); //Skapar knapparnas hitbox.

  //Ge knapparna egenskaper.
  if (buttonPressed[0]) menu = GAME; //Samma som att skriva if (buttonPressed[0] == true){ menu = MAINMENU; } 
  if (buttonPressed[1]) exit();
  //if (buttonPressed[2]) menu = 5;

  showButton(buttonX, buttonY, buttonWidth, buttonHeight); //Ritar knapparna.
}
