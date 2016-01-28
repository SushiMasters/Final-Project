//Create class
class Fish {
  //Initialize variables
  float hookstatus;
  PImage fish, fish1, vfish;
  PVector loc, vel;

  //Constructor
  Fish() {
    //Initialize variables
    fish = loadImage("fish.png");
    fish1 = loadImage("fish1.png");
    vfish = loadImage("verticalfish.png");
    hookstatus = 0;
    loc = new PVector(random(width*-0.5, width*1.5), random(height/4, height*3/4));
    vel = new PVector(15, 0);
  }

  //Compound function (move and bound)
  void swim() {
    if (hookstatus == 0) {
      move();
      bound();
    }
  }

  //Display and move fish
  void move() {
    if (vel.x >= 0) {
      image(fish, loc.x, loc.y);
    } else {
      image(fish1, loc.x, loc.y);
    }
    loc.x += vel.x;
  }

  //Reverse direction at off-screen boundaries
  void bound() {
    if (loc.x <= width*-1 || loc.x >= width*2) {
      vel.x *= -1;
      loc.y = random(height/4, height*3/4);
    }
  }

  //Hook fish
  void hook(float x, float y, float lineX) {
    if (loc.x < lineX && lineX < loc.x+200 && loc.y < mouseY && mouseY < loc.y+180) {
      hookstatus = 1;
    }
    if (hookstatus == 1) {
      image(vfish, x, y);
    }
  }

  //Reset position and hookstatus
  void reset() {
    loc = new PVector(random(width*-0.5, width*1.5), random(height/4, height*3/4));
    hookstatus = 0;
  }

  //For when fish is brought above water
  boolean isCaught() {
    if (hookstatus == 1 && mouseY < height/4) {
      return true;
    } else return false;
  }
}