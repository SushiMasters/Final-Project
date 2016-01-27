PImage restaurant, cannon;
float mode, theta, timer, x, y;
ArrayList<Sushi> sushi = new ArrayList <Sushi>();
Person emily, ethan, elsa, shiv;
PVector mouth;
int countDown;

void setup() {
  size(1280, 720, P3D);
  restaurant = loadImage("restaurant.jpg");
  cannon = loadImage("cannon.png");
  mouth = new PVector();

  mode = 0;
  countDown = 10;

  cannon.resize(250, 97); 
  restaurant.resize(1280, 720);

  shiv = new Person(x, y, 0);
  ethan = new Person(x, y, 1);
  emily = new Person(x, y, 2);
  elsa = new Person(x, y, 3);
}

void draw() {
  if (mode==0) {
    background(0);
    fill(255);
    textAlign(CENTER, TOP);
    textSize(100);
    text("[ M I N I G A M E  3 ]", width/2, height/2-250);
    textSize(75);
    text("DISSEMINATION", width/2, height/2-125);
    fill(150);
    textSize(50);     
    text("click to continue...", width/2, height/2+200);
    textAlign(LEFT);
    fill(255);
    textSize(20);
    String des = "Fill up the bellies of the hungry tech students with your powerful sushi cannon! Stuff them with 10 rolls to finish the sushi saga! Good luck, young sushi student.";
    text(des, 250, height/2, 800, height);
  } else if (mode ==1) {

    image(restaurant, 0, 0);
    textAlign(CENTER, TOP);
    textSize(50);
    fill(300, 300, 300);
    text(countDown + "more rolls until you finish your training!", width/2, height/2);

    //mouth.set(x+181, y+419);
    mouth.set(x+97, y+200);

    elsa.display();
    elsa.move();
    ethan.display();
    ethan.move();
    emily.display();
    emily.move();
    shiv.display();
    shiv.move();

    for (int i = 0; i < sushi.size(); i++) {
      Sushi s = sushi.get(i);
      s.shoot();
      if (s.touches(mouth)) {
        s.getsEaten();
        countDown -=1;
      }
    }

    theta = 0.3-atan2(600-mouseY, mouseX);

    pushMatrix();
    translate(0, 600);
    rotate(theta);
    image(cannon, -40, -100);
    popMatrix();
  }
}

void mousePressed() {
  if (mode == 0) {
    mode = 1;
    timer = frameCount;
  }

  if (mode == 1) {
    if (frameCount > timer + 3) {
      sushi.add(new Sushi(262*cos(theta)-50, 460+262*sin(theta)));
    }
  }
}