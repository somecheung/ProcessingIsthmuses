
void gridT() {

  int flipper = -1;

  // Columns of sky
  for (int gridY = stepY/2; gridY <= height; gridY += stepY) {
    for (int gridX = stepX/2; gridX <= width; gridX += stepX*3) {
      image(images[0], gridX, gridY, stepY, stepX);
    }
  }

  // Rows of sky
  for (int gridY = stepY/2; gridY <= height; gridY += stepY*3) {
    for (int gridX = stepX/2; gridX <= width; gridX += stepX) {
      image(images[0], gridX, gridY, stepY, stepX);
    }
  }

  for (int gridY = stepY/2 + stepY; gridY <= height; gridY += stepY*3) { 
    for (int gridX = stepX/2 + stepY; gridX <= width; gridX += stepX*3) {
     
      for (int y = 0; y < 2; y++) {
        for (int x = 0; x < 2; x++) {
          int r = int(random(1, images.length));

          pushMatrix();
          translate(gridX + x * stepX, gridY + y * stepY);

          if (flipper == 1) {
            rotate(PI);
          }
          image(images[r], 0, 0, stepY, stepX);
          popMatrix();
        }

        flipper *= -1;
      }
      
    }
  }

}