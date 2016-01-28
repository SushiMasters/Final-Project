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

  void display() {
    image(sushi, loc.x, loc.y);
  }
  
  void shoot() {
    loc.add(vel);
    vel.add(gravity);
  }
  
  void getsEaten(){
    loc.x = 1300;
  }

  boolean touches(PVector mouth) {
    if (loc.dist(mouth) <=60) {
      println("caught at " + loc.x + "," + loc.y);
      return true;
    } else {
      return false;
    }
  }
}