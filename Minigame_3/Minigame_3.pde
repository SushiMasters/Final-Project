PImage restaurant, cannon;
float mode;
float theta;
ArrayList<Sushi> sushi = new ArrayList <Sushi>();

void setup() {
  size(1280, 720, P3D);

  restaurant = loadImage("restaurant.jpg");
  cannon = loadImage("cannon.png");
  mode = 0;

  cannon.resize(250, 97); 
  restaurant.resize(1280, 720);
}

void draw() {
  if (mode==0){
    background(0);
    fill(255);
    textAlign(CENTER, TOP);
    textSize(100);
    text("[ M I N I G A M E  2 ]", width/2, height/2-250);
    textSize(75);
    text("DISSEMINATION", width/2, height/2-125);
    fill(150);
    textSize(50);
    text("click to continue...", width/2, height/2+200);
    textAlign(LEFT);
    fill(255);
    textSize(20);
    String des = "Fill up the bellies of the hungry tech students with your powerful sushi cannon!";
    text(des, 250, height/2, 800, height);
  } else if (mode ==1){

    image(restaurant, 0, 0);
    
    for(int i = 0; i < sushi.size(); i++) {
      Sushi s = sushi.get(i);
      s.shoot();
    }

    theta = 0.4-atan2(600-mouseY,mouseX);

    pushMatrix();
    translate(0, 600);
    rotate(theta);
    image(cannon, -40, -100);
    popMatrix();
  }
}

void mousePressed() {
  if (mode == 0){
    mode = 1;
  }
  if (mode == 1){
  sushi.add(new Sushi(0+100*cos(theta), 600-100*sin(theta)));
  }
}