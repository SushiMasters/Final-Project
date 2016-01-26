//Minigame 2: Manufacture  //<>//
int gMode, timer, number;
Title screen;
Ingredients mat, rice, nori, sauce, wasabi, fish, avocado;
boolean ma, ri, no, sa, wa, fi, av;
int w, f, a;

void setup() {
  size(1280, 720);

  gMode=0;
  timer = second();
  number = 1;

  mat = new Ingredients();
  rice = new Ingredients();
  nori = new Ingredients();
  sauce = new Ingredients();
  wasabi = new Ingredients();
  fish = new Ingredients();
  avocado = new Ingredients();

  ma = false;
  ri = false;
  no = false;
  sa = false;
  wa = false;
  fi = false;
  av = false;
}

void draw() {
  println("Mat: " + ma + "  Rice: " + ri + "  Nori: " + no + "  Sauce: " + "  Wasabi: " + wa + "  Fish: " + fi + "  Avo: " + av); 
  //Game: Setup

  //Title Screen
  if (gMode == 0) {
    screen = new Title();
    screen.display();
  }

  //Setup screen
  if (gMode == 1) {
    timer = second();
    int number = 1; 

    //Display images & labels
    mat.display();
    rice.display();
    nori.display();
    sauce.display();
    wasabi.display();
    fish.display();
    avocado.display();

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
      if (ri == true) {
        rice.rPlace();
      }
      if (no == true) {
        nori.nPlace();
      }
      if (sa == true) {
        sauce.sPlace();
      }
      if (wa == true) {
        wasabi.wPlace();
      }
      if (fi == true) {
        fish.fPlace();
      }
      if (av == true) {
        avocado.aPlace();
      }
    }
    if (ri == true) {
      textSize(20);
      fill(255, 0, 0);
      text("RICE", 180, 180);
    }
    if (no == true) {
      textSize(20);
      fill(255, 0, 0);
      text("NORI", 180, 365);
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
  }
}

void mouseClicked() {

  if (mouseButton == LEFT && dist(mouseX, mouseY, width/2, 670)<=40) {
    newOrder();
  }
  if (gMode ==1 && dist(mouseX, mouseY, width/2, height/2) <= 500) {
    ma = true;
  }
  if (gMode == 1 && dist(mouseX, mouseY, 180, 180) <= 75) {
    ri = true;
  }
  if (gMode == 1 && dist(mouseX, mouseY, 180, 365) <= 75) {
    no = true;
  }
  if (gMode == 1 && dist(mouseX, mouseY, 180, 600) <= 75) {
    sa = true;
  }
  if (gMode == 1 && dist(mouseX, mouseY, width-180, 170) <= 75) {
    wa = true;
  }
  if (gMode == 1 && dist(mouseX, mouseY, width-180, 365) <= 75) {
    fi = true;
  }
  if (gMode == 1 && dist(mouseX, mouseY, width-180, 620) <= 75) {
    av = true;
  }
  if (gMode == 0) {
    gMode = 1;
    newOrder();
  }
}

void newOrder() {
  w = int(random(3));
  f = int(random(2));
  a = int(random(3));
}