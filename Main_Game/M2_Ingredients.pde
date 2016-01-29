class Ingredients {
  PImage mat, nori, rice, salmon, avocado, sauce, wasabi;
  Ingredients() {
  }
}

class Mat extends Ingredients {
  Mat() {
    mat = loadImage("mat.png");
  }
  void display() {
    image(mat, 0, 0);
  }
  void check() {
    if (mode == 6 && dist(mouseX, mouseY, width/2, height/2) <= 500) {
      ma = true;
    }
  }
}

class Nori extends Ingredients {
  Nori() {
    nori = loadImage("nori.png");
  }
  void display() {
    image(nori, 80, 30+200+30);
    textSize(20);
    fill(255);
    text("NORI", 180, 365);
  }
  void nPlace() {
    rectMode(CENTER);
    if (no == true) {
      fill(8, 36, 5);
      stroke(8, 36, 5);
      rect(width/2, height/2-50, 650, 500);
      textSize(20);
      fill(255, 0, 0);
      text("NORI", 180, 365);
    }
  }
  void check() {
    if (mode == 6 && dist(mouseX, mouseY, 180, 365) <= 75) {
      no = true;
    }
  }
}

class Rice extends Ingredients {
  Rice() {
    rice = loadImage("rice.png");
  }
  void display() {
    image(rice, 80, 30);
    textSize(20);
    fill(255);
    text("RICE", 180, 180);
  }
  void rPlace() {
    if (ri == true) {
      fill(255);
      stroke(255);
      rect(width/2, height/2-50, 550, 400);
      textSize(20);
      fill(255, 0, 0);
      text("RICE", 180, 180);
    }
  }
  void check() {
    if (mode == 6 && dist(mouseX, mouseY, 180, 180) <= 75) {
      ri = true;
    }
  }
}

class Salmon extends Ingredients {
  Salmon() {
    salmon = loadImage("salmon.png");
  }
  void display() {
    image(salmon, width-200-80, 50+165+40);
    textSize(20);
    fill(0);
    text("SALMON", width-180, 365);
  }
  void fPlace() {
    if (fi == true) {
      fill(255, 197, 184);
      stroke(255, 197, 184);
      rect(width/2, height/2-50, 500, 300);
      textSize(20);
      fill(255, 0, 0);
      text("SALMON", width-180, 365);
    }
  }
  void check() {
    if (mode == 6 && dist(mouseX, mouseY, width-180, 365) <= 75) {
      fi = true;
    }
  }
}

class Avocado extends Ingredients {
  Avocado() {
    avocado = loadImage("avocado.png");
  }
  void display() { 
    image(avocado, width-200-80, height-165-40);
    textSize(20);
    fill(0);
    text("AVOCADO", width-180, 620);
  }
  void aPlace() {
    if (av == true) {
      fill(130, 168, 130);
      stroke(130, 168, 130);
      ellipse(width/2, height/2-50, 300, 275);
      textSize(20);
      fill(255, 0, 0);
      text("AVOCADO", width-180, 620);
    }
  }
  void check() {
    if (mode == 6 && dist(mouseX, mouseY, width-180, 620) <= 75) {
      av = true;
    }
  }
}

class Sauce extends Ingredients {
  Sauce() {
    sauce = loadImage("sauce.png");
  }
  void display() {
    image(sauce, 80, height-30-200);
    textSize(20);
    fill(255);
    text("SAUCE", 180, 600);
  }
  void sPlace() {
    if (sa == true) {
      fill(59, 27, 6);
      stroke(59, 27, 6);
      ellipse(width/2, height/2-50, 250, 225);
      textSize(20);
      fill(255, 0, 0);
      text("SAUCE", 180, 600);
    }
  }
  void check() {
    if (mode == 6 && dist(mouseX, mouseY, 180, 600) <= 75) {
      sa = true;
    }
  }
}

class Wasabi extends Ingredients {
  Wasabi() {
    wasabi = loadImage("wasabi.png");
  }
  void display() {
    image(wasabi, width-200-80, 40);
    textSize(20);
    fill(0);
    text("WASABI", width-180, 170);
  }
  void wPlace() {
    if (wa == true) {
      fill(206, 255, 184);
      stroke(206, 255, 184);
      ellipse(width/2, height/2-50, 225, 200);
      textSize(20);
      fill(255, 0, 0);
      text("WASABI", width-180, 170);
    }
  }
  void check() {
    if (mode == 6 && dist(mouseX, mouseY, width-180, 170) <= 75) {
      wa = true;
    }
  }
}