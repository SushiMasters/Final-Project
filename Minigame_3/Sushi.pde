class Sushi {
  PVector loc, vel, gravity;
  PImage sushi;

  Sushi(float x, float y) {
    loc = new PVector(x, y);
    vel = new PVector(10, -5);
    gravity = new PVector(0, 2);

    sushi = loadImage("single sushi.png");
  }

  void shoot() {
    image(sushi, loc.x, loc.y);
    
    loc.add(vel);
    vel.add(gravity);
  }
}