class Person {
  PImage shiv, ethan, emily, elsa;
  PVector pos, vel;

  Person(float x, float y) {
    shiv = loadImage("shiv.png");
    ethan = loadImage("ethan.png");
    emily = loadImage("emily.png");
    elsa = loadImage("elsa.png");

    pos = new PVector(random(640, 1280), 50);
    pos.add(vel);
  }

  void move() {
    if (pos.x >= 1280) {
      vel = new PVector(random(-4, -2), 0);
    } else if (pos.x <= 640) {
      vel = new PVector(random(2, 4), 0);
    }
  }
}