PImage restaurant, cannon;  //BEGINNING OF MINIGAME 3
float mode, theta, timer;
ArrayList<Sushi> sushi = new ArrayList <Sushi>();
Person emily, ethan, elsa, shiv;
int countDown;  //name variables

void setup() {
  size(1280, 720, P3D);  //set canvas size
  restaurant = loadImage("restaurant.jpg");  //load images
  cannon = loadImage("cannon.png");  

  mode = 0;  //initialize variables
  countDown = 10;

  cannon.resize(250, 97);   //resize images
  restaurant.resize(1280, 720);

  shiv = new Person(0);  //load people
  ethan = new Person(1);
  emily = new Person(2);
  elsa = new Person(3);
}

void draw() {
  if (mode==0) {  //TITLE SCREEN
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
    text(des, 250, height/2, 800, height);
    
  } else if (mode ==1) {

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

    if (countDown ==0) {  //when you shoot enough sushi into mouths, then the game ends
      mode = 2;
    }
  }

  if (mode ==2) {  //END SCREEN
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
    text(des, 250, height/2, 800, height);
  }

  if (mode ==3) {  //SCORE SCREEN
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
    text(des, 250, height/2-50, 800, height);
  }
}

void mousePressed() {
  if (mode == 0) {  //start game when you click on title screen
    mode = 1;
    timer = frameCount;
  }

  if (mode == 1) {  //you can only click-shoot sushi after 3 frames have passed since you started the game
    if (frameCount > timer + 3) {
      sushi.add(new Sushi(262*cos(theta)-50, 460+262*sin(theta)));
    }
  }

  if ( mode == 2) {  //show score if you click on end screen
    mode = 3;
  }
}