class Person {
  PImage shiv, ethan, emily, elsa;
  PVector pos, pace;

  Person(float x, float y) {
    shiv = loadImage("shiv.png");
    ethan = loadImage("ethan.png");
    emily = loadImage("emily.png");
    elsa = loadImage("elsa.png");

    pos = new PVector(random(640, 1280), 50);
    pos.add(pace);
  }

  void move() {
    if (pos.x >= 1280) {
      pace = new PVector(random(-4, -2), 0);
    } else if (pos.x <= 640) {
      pace = new PVector(random(2, 4), 0);
    }
  }
}