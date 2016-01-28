class Fish {
  float hookstatus;
  PImage fish, fish1, vfish;
  PVector loc, vel;

  Fish() {
    fish = loadImage("fish.png");
    fish1 = loadImage("fish1.png");
    vfish = loadImage("verticalfish.png");
    hookstatus = 0;
    loc = new PVector(random(width*-0.5, width*1.5), random(height/4, height*3/4));
    vel = new PVector(8, 0);
  }

  void swim() {
    if (hookstatus == 0) {
      move();
      bound();
    }
  }

  void move() {
    if (vel.x >= 0) {
      image(fish, loc.x, loc.y);
    } else {
      image(fish1, loc.x, loc.y);
    }
    loc.x += vel.x;
  }

  void bound() {
    if (loc.x <= width*-1 || loc.x >= width*2) {
      vel.x *= -1;
      loc.y = random(height/4, height*3/4);
    }
  }

  void hook(float x, float y, float lineX) {
    if (loc.x < lineX && lineX < loc.x+200 && loc.y < mouseY && mouseY < loc.y+180) {
      hookstatus = 1;
    }
    if (hookstatus == 1) {
      image(vfish, x, y);
    }
  }

  void reset() {
    loc = new PVector(random(width*-0.5, width*1.5), random(height/4, height*3/4));
    hookstatus = 0;
  }

  boolean isCaught() {
    if (hookstatus == 1 && mouseY < height/4) {
      return true;
    } else return false;
  }
}