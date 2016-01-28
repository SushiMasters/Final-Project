class Person {
  PImage img;
  PVector pos, pace;
  PVector mouth;
  float y;

  Person(int which) {
    if (which == 0) {
      img = loadImage("shiv.png");
      y = 375;
    }
    if (which ==1) {
      img = loadImage("ethan.png");
      y = 390;
    }
    if (which ==2) {
      img = loadImage("emily.png");
      y = 410;
    }
    if (which==3) {
      img = loadImage("elsa.png");
      y = 425;
    }

    pos = new PVector(random(540, 1280), y);//random(375, 425)
    pace = new PVector(random(-4, 4), 0);
    mouth = new PVector(pos.x+100, pos.y+80);
  }

  void display() {
    image(img, pos.x, pos.y);
    img.resize(198, 300);
  }

  void move() {
    mouth.x = pos.x+90;
    if (pos.x >= 1150) {
      pace.set(random(-4, -2), 0);
    } else if (pos.x <= 540) {
      pace.set(random(2, 4), 0);
    } 

    pos.add(pace);
  }
}