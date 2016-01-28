//Declare variables //<>//
int gMode, timer, number;
float count;
Screen title, complete, fail, pau, hel;
Mat mat;
Nori nori;
Rice rice;
Fish fish;
Avocado avocado;
Sauce sauce;
Wasabi wasabi;
boolean ma, no, ri, fi, av, sa, wa;
int w, f, a;
PImage pause, help; 

void setup() {
  //Setup game
  size(1280, 720);
  frameRate(30);
  number = 0;
  gMode=0;
  timer = 0;
  count = 0;

  //Intialize
  mat = new Mat();
  nori = new Nori();
  rice = new Rice();
  fish = new Fish();
  avocado = new Avocado();
  sauce = new Sauce();
  wasabi = new Wasabi();

  pause = loadImage("pause.png");
  help = loadImage("help.png");

  //Boolean to control when images show up
  ma = false;
  no = false;
  ri = false;
  fi = false;
  av = false;
  sa = false;
  wa = false;
}

void draw() {
  //Title Screen
  if (gMode == 0) {
    title = new Screen();
    title.Title();
  }

  //Setup screen
  if (gMode == 1) {

    //Display images & labels
    mat.display();
    nori.display();
    rice.display();
    fish.display();
    avocado.display();
    sauce.display();
    wasabi.display();

    //Check when to place item
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

    //Countdown
    count +=1;
    if (count == 30) {
      timer +=1;
      count = 0;
    }

    //Show timer
    fill(255, 0, 0);
    stroke(0);
    rect(width/2+125, 670, 250, 40);
    fill(255);
    textSize(20);
    String t = "TIME REMAINING: "+ timer;
    text(t, width/2+125, 675);
    rectMode(CENTER);

    //Pause/help
    image(pause, 10, 10);
    image(help, 10, 60);

    //Order
    textSize(20);
    textAlign(CENTER);
    fill(0);
    String num = "ORDER #" + number + ": ";
    String order = "1 Nori "+"1 Rice "+f+" Fish "+a+" Avocado "+"1 Sauce "+w+" Wasabi";
    text(num + order, width/2, 23);

    //Button to send roll
    stroke(0);
    rect(width/2-125, 670, 200, 40);
    fill(255);
    text("SEND TO WAITER", width/2-125, 675);
    rectMode(CENTER);

    //Complete task?
    if (number > 10) {
      gMode = 3;
    } 
    if (gMode == 3) {
      complete = new Screen();
      complete.Complete();
    }
    if (gMode == 4) {
      pau = new Screen();
      pau.Pause();
    }
    if (gMode == 5) {
      hel = new Screen();
      hel.Help();
    }
  }
}


void mouseClicked() {
  //New order by pressing "Send to Waiter" button
  if (mouseButton == LEFT && dist(mouseX, mouseY, width/2, 670)<=60) {
    newOrder();
  }

  //Pause screen
  if (mouseButton == LEFT && dist(mouseX, mouseY, 10, 10)<=25) {
    gMode = 4;
  }

  //Help screen
  if (mouseButton == LEFT && dist(mouseX, mouseY, 10, 60)<=25) {
    gMode = 5;
  }

  //New order when game starts
  if (gMode == 0 || gMode == 4 || gMode == 5) {
    gMode = 1;
    newOrder();
  }

  //Check if the item was selected
  mat.check();
  nori.check();
  rice.check();
  fish.check();
  avocado.check();
  sauce.check();
  wasabi.check();
}

void newOrder() {
  //Another order amount
  w = int(random(2));
  f = int(random(2));
  a = int(random(2));

  //Reset variables
  ma = false;
  no = false;
  ri = false;
  fi = false;
  av = false;
  sa = false;
  wa = false;

  //Move on to next order
  number +=1;
}