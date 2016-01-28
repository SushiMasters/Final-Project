class Sushi {
  PVector loc, vel, gravity;
  PImage sushi;  //name variables

  Sushi(float x, float y) {  
    loc = new PVector(x, y);  //initialize PVectors
    vel = new PVector(25, -9);
    gravity = new PVector(0, 1);  

    sushi = loadImage("single sushi.png");  //load and resize image
    sushi.resize(35, 35);
  }

  void display() {  //display sushi image
    image(sushi, loc.x, loc.y);
  }
  
  void shoot() {  //shoot sushi and have a force of gravity act on it
    loc.add(vel);
    vel.add(gravity);
  }
  
  void getsEaten(){  //when it's eaten, it disappears to off the screen
    loc.x = 1300;
  }

  boolean touches(PVector mouth) {  //sushi touches mouth if it's within 30 pixels
    if (loc.dist(mouth) <=30) {
      return true;
    } else {
      return false;
    }
  }
}