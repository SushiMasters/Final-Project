class Trash {
  PVector loc, vel;

  Trash() {
    loc = new PVector(random(width*-0.5, width*1.5), random(height/2, height*3/4));
    vel = new PVector(-3, sin(loc.x*.01) * 3);
  }

  void drift(PImage img) {
    image(img, loc.x, loc.y);
    loc.add(vel);
    
    if (loc.y > height/4) {
      vel.y = sin(loc.x*.01) * 3;
    } else {
      vel.y = 1;
    }
    
    if (loc.x <= width*-1 || loc.x >= width*2) {
      vel.x *= -1;
      loc.y = random(height/4, height*3/4);
    }
  }
  
  boolean contact() {
    if(f.hookstatus == 1 && bx > loc.x && bx < loc.x+150 && mouseY > loc.y && mouseY < loc.y+150) {
      return true;
    } else return false;
  }
}