class Screen {
  Screen() {
  }
  void Title() {
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
    String des = "In this stage, you'll be making sushi. Click on the ingredient and then the mat to deposit the ingredient. You have 2 minues! Speed and accuracy are qualities essential to every aspiring sushi chef. The restaurant needs 20 pieces of sushi!";
    text(des, 250, height/2, 800, height);
  }

  void Complete() {
    background(0);
    fill(255);
    textAlign(CENTER, TOP);
    textSize(100);
    text("[ M I N I G A M E  2 ]", width/2, height/2-250);
    textSize(75);
    text("C O M P L E T E", width/2, height/2-125);
    fill(150);
    textSize(50);
    text("click to continue to the NEXT STAGE...", width/2, height/2+200);
    textAlign(LEFT);
    fill(255);
    textSize(20);
    String des = "CONGRATULATIONS! You have completed the MANUFACTURING stage. However, your existential crisis is NOT OVER YET. To eat or to serve? That is the question.";
    text(des, 250, height/2, 800, height);
  }
  void Fail () {
    background(0);
    fill(255);
    textAlign(CENTER, TOP);
    textSize(100);
    text("[ M I N I G A M E  2 ]", width/2, height/2-250);
    textSize(75);
    text("I N C O M P L E T E", width/2, height/2-125);
    fill(150);
    textSize(50);
    text("game over - click to restart", width/2, height/2+200);
    textAlign(LEFT);
    fill(255);
    textSize(20);
    String des = "VERY POORLY DONE! You did NOT complete the required amount of sushi in the given time. Start your training over agin!!";
    text(des, 250, height/2, 800, height);
  }
}