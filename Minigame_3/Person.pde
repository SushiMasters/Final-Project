class Person {
  PImage img;
  PVector pos, pace;
  PVector mouth;
  float y;  //name variables

  Person(int which) {  //have different images and y-positions for different people
    if (which == 0) {
      img = loadImage("shiv.png");
      y = 375;
    }
    if (which ==1) {
      img = loadImage("ethan.PNG");
      y = 390;
    }
    if (which ==2) {
      img = loadImage("emily.png");
      y = 410;
    }
    if (which==3) {
      img = loadImage("elsa.PNG");
      y = 425;
    }

    pos = new PVector(random(540, 1280), y);  //name PVectors
    pace = new PVector(random(-4, 4), 0);
    mouth = new PVector(pos.x+100, pos.y+80);
  }

  void display() {  //display and resize images of people
    image(img, pos.x, pos.y);  
    img.resize(198, 300);
  }

  void move() {  //have people turn around at at edge of screen and at 540
    mouth.x = pos.x+90;
    if (pos.x >= 1150) {
      pace.set(random(-4, -2), 0);
    } else if (pos.x <= 540) {
      pace.set(random(2, 4), 0);
    } 

    pos.add(pace);
  }
}