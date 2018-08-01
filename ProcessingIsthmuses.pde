PImage[] images = new PImage[7];


float[] angles = { 
  0.0, 90.0, 270.0, 180.0
};

int stepX = 100;
int stepY =100;

int x = 150;
int y = 150;

int count = 0;

void setup() {
  size(1000, 1000);

  imageMode(CENTER);

  for (int i=0; i<images.length; i++) {
    images[i] = loadImage(nf(i, 2) + ".jpg");
  }

  noLoop();
}

void draw() {
  background(255);
  gridT();
  saveFrame("###.jpg");
}


