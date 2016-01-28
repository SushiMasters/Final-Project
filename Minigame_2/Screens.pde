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
    String des = "In this stage, you'll be making 10 pieces of sushi. Click on the ingredient and then the mat to deposit the ingredient. Speed and accuracy are qualities essential to every aspiring sushi chef. The restaurant needs 20 pieces of sushi!";
    text(des, 250, height/2, 800, height);
  }
  void Pause() {
    background(0);
    fill(255);
    textAlign(CENTER, TOP);
    textSize(100);
    text("[ M I N I G A M E  2 ]", width/2, height/2-250);
    textSize(75);
    text("P A U S E", width/2, height/2-125);
    fill(150);
    textSize(50);
    text("click to return to the game", width/2, height/2+200);
  }
  
    void Help() {
    background(0);
    fill(255);
    textAlign(CENTER, TOP);
    textSize(100);
    text("[ M I N I G A M E  2 ]", width/2, height/2-250);
    textSize(75);
    text("H E L P", width/2, height/2-125);
    fill(150);
    textSize(50);
    text("click to return to the game", width/2, height/2+200);
    textAlign(LEFT);
    fill(255);
    textSize(20);
    String des = "1 - INGREDIENTS: Click on ingredient on the side, then the mat to place the ingredient. 2 - WAITER: Click the send to waiter button to send the sushi. 3 - Pay attention to time!";
    text(des, width/2, height/2+400, 800, height);
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
    text(des, width/2, height/2+400, 800, height);
  }
  
}