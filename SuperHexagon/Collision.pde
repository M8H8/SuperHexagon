


void collision() {
  loadPixels();
  for (int x = 0; x < width; x++) {
    for (int y = 0; y < height; y++) {
      int index = y * width + x;
      if (pixels [index] == color(255, 0, 0)) continue;
    }
  }
  updatePixels();
}
