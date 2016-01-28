class Shark {
  PImage shark, shark1;
  PVector loc, vel;

  Shark() {
    shark = loadImage("shark.png");
    shark1 = loadImage("shark1.png");
    loc = new PVector(random(width*-0.5, width*1.5), random(height/4, height*3/4));
    vel = new PVector(-10, 0);
  }

  void swim() {
    move();
    bound();
  }

  void move() {
    if (vel.x >= 0) {
      image(shark, loc.x, loc.y);
    } else {
      image(shark1, loc.x, loc.y);
    }
    loc.x += vel.x;
  }

  void bound() {
    if (loc.x <= width*-1 || loc.x >= width*2) {
      vel.x *= -1;
      loc.y = random(height/4, height*3/4);
    }
  }
  
  boolean contact() {
    if(f.hookstatus == 1 && bx > loc.x && bx < loc.x+600 && mouseY > loc.y && mouseY < loc.y+241) {
      return true;
    } else return false;
  }
}