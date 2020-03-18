


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
  int textSize = width/20;
  rectMode(CENTER);

  fill(255, 0, 0);
  for (int i = 0; i<buttonPressed.length; i++) {
    fill(255, 0, 0);
    rect(buttonX, buttonY*(i+1), buttonWidth, buttonHeight);
    fill(255);
    textSize(textSize);
    textAlign(CENTER);
    text(buttonNames[i], buttonX, buttonY*(i+1)+textSize/2.0);
  }
}
