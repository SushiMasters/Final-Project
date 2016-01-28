float bx, by, mode, count;
int score, timer;
PImage bucket, boat, worm, bottle, can, hourglass;
Fish f;
Shark s;
Trash b, c;

void setup() {
  size(1280, 720);
  frameRate(30);

  f = new Fish();
  s = new Shark();
  b = new Trash();
  c = new Trash();

  bucket = loadImage("bucket.png");
  boat = loadImage("boat.png");
  worm = loadImage("worm.png");
  bottle = loadImage("bottle.png");
  can = loadImage("can.png");
  hourglass = loadImage("timer.png");

  bx = width/2;
  by = 0;
  mode = 0;
  score = 0;
  count = 0;
  timer = 0;
}

void draw() {
  if (mode == 0) {
    background(0);
    fill(255);
    textAlign(CENTER, TOP);
    textSize(100);
    text("[ M I N I G A M E  1 ]", width/2, height/2-250);
    textSize(75);
    text("FISHING", width/2, height/2-125);
    fill(150);
    textSize(50);
    text("click to continue...", width/2, height/2+200);
    fill(255);
    textSize(20);
    String des = "Catch 20 fish! Watch out for garbage and sharks.";
    text(des, 250, height/2, 800, height);
  }
  
  if (mode == 1) {
    //Water and sky
    noStroke();
    fill(105, 250, 255);
    rect(0, 0, width, height);
    fill(0, 85, 250, 150);
    rect(0, height/4, width, height);

    //Score
    image(bucket, 0, 20);
    fill(255);
    textAlign(CENTER);
    textSize(50);
    text(score, 70, 130);

    //Boat
    image(boat, bx, by);

    //Fishing Line
    strokeWeight(2);
    stroke(150);
    line(bx, by, bx, mouseY);

    //Worm
    image(worm, bx - 11, mouseY);

    //Shark
    s.swim();

    //Fish
    f.swim();
    f.hook(bx - 50, mouseY, bx);
    if (f.isCaught()) {
      score += 1;
      f.reset();
    }

    //Trash
    b.drift(bottle);
    c.drift(can);

    if (s.contact() || b.contact() || c.contact()) {
      f.reset();
      timer += 5;
      fill(255, 0, 0);
    }

    count += 1;
    if (count == 30) {
      timer += 1;
      count = 0;
    }
    image(hourglass, width - 330, 10);
    textSize(100);
    textAlign(LEFT);
    text(timer, width - 250, 100);

    fill(255);

    if (score == 20) {
      mode = 2;
    }
  }
  
  if (mode == 2) {
    background(0);
    fill(255);
    textAlign(CENTER, TOP);
    textSize(100);
    text("[ M I N I G A M E  1 ]", width/2, height/2-250);
    textSize(75);
    fill(0, 255, 0);
    text("COMPLETE", width/2, height/2-125);
    fill(150);
    textSize(50);
    text("click to continue...", width/2, height/2+200);
    fill(255);
    textSize(20);
    String des = "Great job! You caught the fish for the sushi!";
    text(des, 250, height/2, 800, height);
  }
}

void mousePressed() {
  if (mode == 0) {
    mode = 1;
  }
}