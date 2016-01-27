//Minigame 2: Manufacture  //<>//
int gMode, timer, number;
Screen title, complete;
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
  number = 0;
  gMode=0;
  timer = second();

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
    timer = second();

    //Display images & labels
    mat.display();
    nori.display();
    rice.display();
    fish.display();
    avocado.display();
    sauce.display();
    wasabi.display();

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

    if (no == true) {
      textSize(20);
      fill(255, 0, 0);
      text("NORI", 180, 365);
    }
    if (ri == true) {
      textSize(20);
      fill(255, 0, 0);
      text("RICE", 180, 180);
    }
    if (fi == true) {
      textSize(20);
      fill(255, 0, 0);
      text("FISH", width-180, 365);
    }
    if (av == true) {
      textSize(20);
      fill(255, 0, 0);
      text("AVOCADO", width-180, 620);
    }
    if (sa == true) {
      textSize(20);
      fill(255, 0, 0);
      text("SAUCE", 180, 600);
    }
    if (wa == true) {
      textSize(20);
      fill(255, 0, 0);
      text("WASABI", width-180, 170);
    }
    if (number > 20) {
      gMode = 3;
    }
  }
  if (gMode == 3) {
    complete = new Screen();
    complete.Complete();
  }
}

void mouseClicked() {
  if (mouseButton == LEFT && dist(mouseX, mouseY, width/2, 670)<=40) {
    newOrder();
  }
  if (gMode ==1 && dist(mouseX, mouseY, width/2, height/2) <= 500) {
    ma = true;
  }
  if (gMode == 1 && dist(mouseX, mouseY, 180, 365) <= 75) {
    no = true;
  }
  if (gMode == 1 && dist(mouseX, mouseY, 180, 180) <= 75) {
    ri = true;
  }
  if (gMode == 1 && dist(mouseX, mouseY, width-180, 365) <= 75) {
    fi = true;
  }
  if (gMode == 1 && dist(mouseX, mouseY, width-180, 620) <= 75) {
    av = true;
  }
  if (gMode == 1 && dist(mouseX, mouseY, 180, 600) <= 75) {
    sa = true;
  }
  if (gMode == 1 && dist(mouseX, mouseY, width-180, 170) <= 75) {
    wa = true;
  }

  if (gMode == 0) {
    gMode = 1;
    newOrder();
  }
}

void newOrder() {
  w = int(random(1));
  f = int(random(1));
  a = int(random(1));

  ma = false;
  no = false;
  ri = false;
  fi = false;
  av = false;
  sa = false;
  wa = false;

  number +=1;
}