class Screen {
  Screen() {
  }
  void Title1() {
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
    String des = "Catch 10 fish! Watch out for garbage and sharks.";
    text(des, 250, height/2+50, 800, height);
  }

  void End1() {
    background(0);
    fill(255);
    textAlign(CENTER, TOP);
    textSize(100);
    text("[ M I N I G A M E  1 ]", width/2, height/2-250);
    textSize(75);
    fill(0, 255, 0);
    text("C O M P L E T E", width/2, height/2-125);
    fill(150);
    textSize(50);
    text("click to continue...", width/2, height/2+200);
    fill(255);
    textSize(20);
    String des = "Great job! You caught the fish for the sushi!";
    text(des, 250, height/2 + 50, 800, height);
  }

  void Title2() {
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
    text(des, 250, height/2+50, 800, height);
  }

  void End2() {
    background(0);
    fill(255);
    textAlign(CENTER, TOP);
    textSize(100);
    text("[ M I N I G A M E  2 ]", width/2, height/2-250);
    textSize(75);
    fill(0, 255, 0);
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
  void Title3() {
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
    text(des, width/2, height/2+350, 800, height);
  }

  void End3() {
    background(0);
    fill(255);
    textAlign(CENTER, TOP);
    textSize(100);
    text("[ T H E   E N D ]", width/2, height/2-250);
    textSize(75);
    fill(0, 255, 0);
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
  void Complete() {
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
    text(des, width/2, height/2+325, 800, height);
  }
}