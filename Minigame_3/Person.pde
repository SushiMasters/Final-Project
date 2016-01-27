class Person {
  PImage img;
  PVector pos, pace, mouth;

  Person(float  x, float y, int which) {
    if (which == 0) {
      img = loadImage("shiv.png");
    }
    if (which ==1) {
      img = loadImage("ethan.png");
    }
    if (which ==2) {
      img = loadImage("emily.png");
    }
    if (which==3) {
      img = loadImage("elsa.png");
    }

    pos = new PVector(random(640, 1280), 550);
    mouth = new PVector(181, 419);
  }

  void display() {
      image(img, pos.x, pos.y);
  }
  
  void move() {
    pos.add(pace);
    if (pos.x >= 1280) {
      pace = new PVector(random(-4, -2), 0);
    } else if (pos.x <= 640) {
      pace = new PVector(random(2, 4), 0);
    }
  }
}