//Minigame 2: Manufacture  //<>//
int gMode, timer, number;
float count;
Screen title, complete, fail;
Mat mat;
Nori nori;
Rice rice;
Fish fish;
Avocado avocado;
Sauce sauce;
Wasabi wasabi;
boolean ma, no, ri, fi, av, sa, wa;
int w, f, a;

void setup() {
  size(1280, 720);
  frameRate(30);
  number = 0;
  gMode=0;
  timer = 120;
  count = 0;

  mat = new Mat();
  nori = new Nori();
  rice = new Rice();
  fish = new Fish();
  avocado = new Avocado();
  sauce = new Sauce();
  wasabi = new Wasabi();

  ma = false;
  no = false;
  ri = false;
  fi = false;
  av = false;
  sa = false;
  wa = false;
}

void draw() {
  //Game: Setup

  //Title Screen
  if (gMode == 0) {
    title = new Screen();
    title.Title();
  }

  //Setup screen
  if (gMode == 1) {
    count +=1;
    if (count == 30) {
      timer -=1;
      count = 0;
    }


    //Display images & labels
    mat.display();
    nori.display();
    rice.display();
    fish.display();
    avocado.display();
    sauce.display();
    wasabi.display();

    if (ma == true) {
      if (no == true) {
        nori.nPlace();
      }
      if (ri == true) {
        rice.rPlace();
      }
      if (fi == true) {
        fish.fPlace();
      }
      if (av == true) {
        avocado.aPlace();
      }
      if (sa == true) {
        sauce.sPlace();
      }
      if (wa == true) {
        wasabi.wPlace();
      }
    }

    textSize(20);
    fill(255, 0, 0);
    String t = "TIME REMAINING: "+ timer;
    text(t, width/2, 712);

    //Game: order
    textSize(20);
    textAlign(CENTER);
    fill(0);
    String num = "ORDER #" + number + ": ";
    String order = "1 Nori "+"1 Rice "+f+" Fish "+a+" Avocado "+"1 Sauce "+w+" Wasabi";
    text(num + order, width/2, 23);

    stroke(0);
    rect(width/2, 670, 200, 40);
    fill(255);
    text("SEND TO WAITER", width/2, 675);
    rectMode(CENTER);

    if (number > 20) {
      gMode = 3;
    } 
    if (gMode == 3) {
      complete = new Screen();
      complete.Complete();
    }
    if (number <= 20 && timer<=0) {
      gMode = 4;
    }
    if (gMode == 4) {
      fail = new Screen();
      fail.Fail();
    }
  }
}
void mouseClicked() {
  if (mouseButton == LEFT && dist(mouseX, mouseY, width/2, 670)<=60) {
    newOrder();
  }
  if (gMode == 0) {
    gMode = 1;
    newOrder();
  }
  mat.check();
  nori.check();
  rice.check();
  fish.check();
  avocado.check();
  sauce.check();
  wasabi.check();
}

void newOrder() {
  w = int(random(2));
  f = int(random(2));
  a = int(random(2));

  ma = false;
  no = false;
  ri = false;
  fi = false;
  av = false;
  sa = false;
  wa = false;

  number +=1;
}