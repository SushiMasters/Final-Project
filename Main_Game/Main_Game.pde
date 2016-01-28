//GLOBAL
float mode, count;
int score, timer;
<<<<<<< HEAD
PImage title, bucket, boat, worm, bottle, can, hourglass, helpicon, help, back;
=======
Screen oneTitle, oneEnd, twoTitle, twoEnd, threeTitle, threeEnd, complete;

//MINIGAME 1
float bx, by;
PImage bucket, boat, worm, bottle, can, hourglass, helpicon, help, back;
>>>>>>> origin/Development
Fish f;
Shark s;
Trash b, c;


//MINIGAME 2
int number;
Mat mat;
Nori nori;
Rice rice;
Salmon salmon;
Avocado avocado;
Sauce sauce;
Wasabi wasabi;
boolean ma, no, ri, fi, av, sa, wa;
int w, fis, a;


//MINIGAME 3
PImage restaurant, cannon;  //BEGINNING OF MINIGAME 3
float theta, counter;
ArrayList<Sushi> sushi = new ArrayList <Sushi>();
Person emily, ethan, elsa, shiv;
int countDown;  //name variables

void setup() {
  title = loadImage("title.jpg");

  //MINIGAME 1
  size(1280, 720);
  frameRate(30);

  //Initialize

  //M1-------------------------------------------------------------------------------------------------------------
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
  helpicon = loadImage("help.png");
  help = loadImage("helpscreen.jpg");
  back = loadImage("back.png");

  bx = width/2;
  by = 0;
  mode = 0;
  score = 0;
  count = 0;
  timer = 0;


  //M2-------------------------------------------------------------------------------------------------------------
  number = 0;

  mat = new Mat();
  nori = new Nori();
  rice = new Rice();
  salmon = new Salmon();
  avocado = new Avocado();
  sauce = new Sauce();
  wasabi = new Wasabi();

  //Boolean to control when images show up
  ma = false;
  no = false;
  ri = false;
  fi = false;
  av = false;
  sa = false;
  wa = false;


  //MINIGAME 3-------------------------------------------------------------------------------------------------------------
  restaurant = loadImage("restaurant.jpg");  //load images
  cannon = loadImage("cannon.png");  

  //initialize variables
  countDown = 10;

  cannon.resize(250, 97);   //resize images
  restaurant.resize(1280, 720);

  shiv = new Person(0);  //load people
  ethan = new Person(1);
  emily = new Person(2);
  elsa = new Person(3);
}

void draw() {
<<<<<<< HEAD
  if (mode == 0) {
    image(title, 0, 0);
  }

  //MINIGAME 1
  //Title screen
  if (mode == 1) {
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
    text("Catch 10 fish! Watch out for garbage and sharks.", width/2, height - 300);
=======
  //Title screen for M1-------------------------------------------------------------------------------------------------------------
  if (mode == 0) {
    oneTitle = new Screen();
    oneTitle.Title1();
>>>>>>> origin/Development
  }

  if (mode == 2) {
    //Water and sky
    rectMode(LEFT);
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

    //Help?
    image(helpicon, width - 50, 25);
    //If help icon is clicked
    if (mousePressed && mouseX > width - 50 && mouseX < width - 20 && mouseY > 25 && mouseY < 55) {
      mode = 3;
    }

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
    //If fish has been brought above water
    if (f.isCaught()) {
      score += 1;
      f.reset();
    }

    //Trash
    b.drift(bottle);
    c.drift(can);

    //If fish is on hook and is in contact with obstacle
    if (s.contact() || b.contact() || c.contact()) {
      f.reset();
      timer += 5;
      fill(255, 0, 0);
    }

    //Timer
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

    //End game
<<<<<<< HEAD
    if (score == 1) {
      mode = 4;
=======
    if (score ==1) {
      mode = 3;
>>>>>>> origin/Development
    }
  }

  //Help screen
  if (mode == 3) {
    image(help, 0, 0);
    image(back, width - 100, height - 100);
    if (mousePressed && mouseX > width - 100 && mouseX < width && mouseY > height - 100 && mouseY < height) {
      mode = 1;
    }
  }

<<<<<<< HEAD

  //MINIGAME 2
  if (mode == 4) {
    background(0);
    fill(255);
    textAlign(CENTER, TOP);
    textSize(100);
    text("[ M I N I G A M E  2 ]", width/2, height/2-250);
    textSize(75);
    text("MANUFACTURING", width/2, height/2-125);
    fill(150);
    textSize(50);
    text("click to continue...", width/2, height/2+200);
    textAlign(CENTER);
    fill(255);
    textSize(20);
    String des = "In this stage, you'll be making 10 pieces of sushi. Click on the ingredient and then the mat to deposit the ingredient. Speed and accuracy are qualities essential to every aspiring sushi chef.";
    text(des, 300, height/2, width - 300, height);
  }

  //Setup screen
  if (mode == 5) {

    //Display images & labels
    mat.display();
    nori.display();
    rice.display();
    salmon.display();
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
=======
  //End screen for M1
  if (mode == 3) {
    oneEnd = new Screen();
    oneEnd.End1();
  } else

    //MINIGAME 2-------------------------------------------------------------------------------------------------------------
    //Title Screen
    if (mode == 4) {
      twoTitle = new Screen();
      twoTitle.Title2();
    } else if (mode == 5) {
      //M2 Setup screen

      //Display images & labels
      mat.display();
      nori.display();
      rice.display();
      salmon.display();
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
          salmon.fPlace();
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
>>>>>>> origin/Development
      }

      //Countdown
      count +=1;
      if (count == 30) {
        timer +=1;
        count = 0;
      }

<<<<<<< HEAD
    //Timer
    count +=1;
    if (count == 30) {
      timer +=1;
      count = 0;
    }

    //Show timer
    fill(255, 0, 0);
    stroke(0);
    rect(755, 670, 250, 40);
    fill(255);
    textSize(20);
    String t = "TIME: "+ timer;
    text(t, width/2+125, 675);
    rectMode(CENTER);

    //Order
    textSize(20);
    textAlign(CENTER);
    fill(0);
    String num = "ORDER #" + number + ": ";
    String order = "1 Nori "+"1 Rice "+fis+" salmon "+a+" Avocado "+"1 Sauce "+w+" Wasabi";
    text(num + order, width/2, 23);

    //Button to send roll
    stroke(0);
    rect(width/2-125, 670, 200, 40);
    fill(255);
    text("SEND TO WAITER", width/2-125, 675);
    rectMode(CENTER);

    //Complete task?
    if (number == 5) {
      mode = 6;
    }
  }


  //MINIGAME 3
  if (mode==6) {  //TITLE SCREEN
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
    textAlign(CENTER);
    fill(255);
    textSize(30);
    String des = "Click to shoot sushi into the mouths of hungry tech students with your powerful sushi cannon. Stuff them with 10 rolls to finish the sushi saga! Good luck, young seaweed snacker.";
    text(des, width/2, height/2+300, 800, height);
  } else if (mode == 7) {
=======
      //Show timer
      rectMode(CENTER);
      fill(255, 0, 0);
      rect(width/2+125, 670, 250, 40);
      fill(255);
      textSize(20);
      String t = "TIME: "+ timer;
      text(t, width/2+125, 675);

      //Button to send roll
      fill(0);
      rect(width/2-125, 670, 200, 40);
      text("SEND TO WAITER", width/2-125, 675);

      //Order
      fill(0);
      textAlign(CENTER);
      String num = "ORDER #" + number + ": ";
      String order = "1 Nori "+"1 Rice "+fis+" salmon "+a+" Avocado "+"1 Sauce "+w+" Wasabi";
      text(num + order, width/2, 23);

      //Complete task?
      if (number > 10) {
        mode = 6;
      }
    }

  //Triggers end screen
  if (mode == 6) {
    twoEnd = new Screen();
    twoEnd.End2();
  }


  //MINIGAME 3-------------------------------------------------------------------------------------------------------------
  if (mode==7) {  //TITLE SCREEN
    threeTitle = new Screen();
    threeTitle.Title3();
  } else if (mode ==8) {
>>>>>>> origin/Development

    image(restaurant, 0, 0);  //make background and show sushi you need to win
    textAlign(LEFT);
    textSize(30);
    fill(300, 300, 300);
    text(countDown + " more rolls...", 25, height -50);

    shiv.display();  //show people and make them move
    shiv.move();
    ethan.display();
    ethan.move();
    emily.display();
    emily.move();
    elsa.display();
    elsa.move();

    for (int i = 0; i < sushi.size(); i++) {  //display and shoot sushi
      Sushi s = sushi.get(i);
      s.display();
      s.shoot();
      if (s.touches(elsa.mouth)||s.touches(ethan.mouth)||s.touches(emily.mouth)||s.touches(shiv.mouth)) { //if sushi touches any mouth, it'll get eaten and countDown will decrease
        countDown -=1;
        s.getsEaten();
      }
    }

    theta = 0.3-atan2(600-mouseY, mouseX); //set theta to constant depending on your mouse location

    pushMatrix();  //temporarily set origin to 0,600 and rotate cannon by theta around that axis
    translate(0, 600);
    rotate(theta);
    image(cannon, -40, -100);
    popMatrix();

    if (countDown == 0) {  //when you shoot enough sushi into mouths, then the game ends
      mode = 8;
    }
  }

<<<<<<< HEAD
  if (mode == 8) {  //END SCREEN
    background(0);
    fill(255);
    textAlign(CENTER, TOP);
    textSize(100);
    text("[ T H E   E N D ]", width/2, height/2-250);
    textSize(75);
    text("CONGRATULATIONS", width/2, height/2-125);
    fill(150);
    textSize(50);     
    text("click for your score...", width/2, height/2+200);
    textAlign(CENTER);
    fill(255);
    textSize(50);
    String des = "You have finished your training, young salmon snippet.";
    text(des, width/2, height/2+400, 800, height);
  }

  if (mode == 9) {  //SCORE SCREEN
    background(0);
    fill(255);
    textAlign(CENTER, TOP);
    textSize(100);
    text("[ S C O R E ]", width/2, height/2-250);
    textSize(50);
    text("You are a...", width/2, height/2-125);
    fill(150);
    textSize(50);     
    text("click to beat your score...", width/2, height/2+200);
    textAlign(LEFT);
    fill(255);
    textSize(40);
    String des = "Sushi Master                  <60 seconds         Sushi Novice               60-90 seconds         Sushi Apprentice       90-120 seconds         Sashimi Wannabe         >120 seconds";
    text(des, width/2, height/2+300, 800, height);
=======
  if (mode ==9) {  //END SCREEN
    threeEnd = new Screen();
    threeEnd.End3();
  }

  if (mode ==10) {  //SCORE SCREEN
    complete = new Screen();
    complete.Complete();
>>>>>>> origin/Development
  }
}


//Gamemodes:
//1: Minigame 1 title screen
//2: Minigame 1 gameplay
//3: Minigame 1 help screen
//4: Minigame 2 title screen
//5: Minigame 2 gameplay
//6: Minigame 3 title screen
//7: Minigame 3 gameplay
//8: Minigame 3 end screen
//9: Scores

void mouseClicked() {
<<<<<<< HEAD
  if (mode == 0 && mouseX > 30 && mouseX < 280 && mouseY > 550 && mouseY < height) {
    mode = 1;
    counter = frameCount;
  }

  if (mode == 1 && frameCount > counter + 1) { //Counter prevents skipping title screens
    mode = 2;
  }

  //MINIGAME 2
  if (mode == 4) {
    mode = 5;
=======
  //Minigame screens-------------------------------------------------------------------------------------------------------------
  if (mode == 0) { //M1 Title
    mode = 1; //M1
  } else if (mode == 3) { //M1 End
    mode = 4;  
  } else if (mode == 4) { //M2 Title
    mode = 5; //M2
>>>>>>> origin/Development
    newOrder();
  } else if (mode == 6) { //M2 End
    mode = 7; 
  } else if (mode == 7) { //M3 Title
    mode = 8; //M3
    counter = frameCount;
  } else if ( mode == 9) {  //M3 End
    mode = 10; //End screen
  } else if (mode == 10) {
    mode = 0; //Restart to M1 Title
  }
<<<<<<< HEAD

  //MINIGAME 3
  if (mode == 6) {
    mode = 7;
    counter = frameCount;
  }

  if (mode == 7 && frameCount > counter + 1) {
    sushi.add(new Sushi(262*cos(theta)-50, 460+262*sin(theta)));
  }
  if (mode == 8) {  //show score if you click on end screen
    mode = 9;
    counter = frameCount;
  }

  //Reset game
  if (mode == 9 && frameCount > counter + 1) {
    mode = 0;
    timer = 0;
    score = 0;
    number = 0;
  }

  //New order by pressing "Send to Waiter" button
  if (mouseButton == LEFT && dist(mouseX, mouseY, width/2-125, 670)<=60 && mode == 5) {
    newOrder();
  }

  //Check if the item was selected
  mat.check();
  nori.check();
  rice.check();
  salmon.check();
  avocado.check();
  sauce.check();
  wasabi.check();
=======
  
  //M2-------------------------------------------------------------------------------------------------------------
  //New order by pressing "Send to Waiter" button
  if (mouseButton == LEFT && dist(mouseX, mouseY, width/2-125, 670)<=60 && mode == 5) {
    newOrder();
  }
  //Check if the item was selected
  mat.check();
  nori.check();
  rice.check();
  salmon.check();
  avocado.check();
  sauce.check();
  wasabi.check();
}


void mousePressed() {
  //MINIGAME 3-------------------------------------------------------------------------------------------------------------
  if (mode == 8) {  //you can only click-shoot sushi after 3 frames have passed since you started the game
    if (frameCount > counter + 3) {
      sushi.add(new Sushi(262*cos(theta)-50, 460+262*sin(theta)));
    }
  }
>>>>>>> origin/Development
}



//MINIGAME 2
void newOrder() {
  //Another order amount
  w = int(random(2));
  fis = int(random(2));
  a = int(random(2));

  //Reset variables
  ma = false;
  no = false;
  ri = false;
  sa = false;
  av = false;
  sa = false;
  wa = false;

  //Move on to next order
  number +=1;
}