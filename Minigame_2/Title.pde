class Title {
  Title(){
  }
  void display() {
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
    textAlign(LEFT);
    fill(255);
    textSize(20);
    String des = "In this stage, you'll be making sushi. Click on the ingredient and then the mat to deposit the ingredient. If the order requires more than one of the same type of ingredient, like 2 fish, click & deposit the ingredient twice. If you make the wrong sushi or mess up the order, then 5 seconds will be added to your time! The restaurant needs 20 pieces of sushi!";
    text(des, 250, height/2, 800, height);
  }
}