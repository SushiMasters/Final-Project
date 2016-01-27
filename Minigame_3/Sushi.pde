class Sushi {
  PVector loc, vel, gravity;
  PImage sushi;

  Sushi(float x, float y) {
    loc = new PVector(x, y);
    vel = new PVector(25, -9);
    gravity = new PVector(0, 1);

    sushi = loadImage("single sushi.png");
    sushi.resize(35, 35);
  }

  void shoot() {
    image(sushi, loc.x, loc.y);

    loc.add(vel);
    vel.add(gravity);
  }

  void touches(PVector mouth) {
  }
}