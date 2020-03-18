


void keyPressed() {
  if (keyCode == ESC) {
    key = 0;
    menu = MAINMENU;
  }

  if (keyCode == 'a' || keyCode == 'A') leftKey = true;
  if (keyCode == 'd' || keyCode == 'D') rightKey = true;
  if (keyCode == 'w' || keyCode == 'W') upKey = true;
  if (keyCode == 's' || keyCode == 'S') downKey = true;
}

void keyReleased() {
  if (keyCode == 'a' || keyCode == 'A') leftKey = false;
  if (keyCode == 'd' || keyCode == 'D') rightKey = false;
  if (keyCode == 'w' || keyCode == 'W') upKey = false;
  if (keyCode == 's' || keyCode == 'S') downKey = false;
}
