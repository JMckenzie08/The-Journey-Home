class PlayerFireball {
  float x, y, speedX;
  float size = 20;
  PImage heartImg;
  

  PlayerFireball(float startX, float startY, boolean facingRight) {
    x = startX;
    y = startY;
    speedX = facingRight ? 10 : -10;
    heartImg = loadImage("heart.png");

    
  }

  void update() {
    x += speedX;
  }

  void display() {
    imageMode(CENTER);
    image(heartImg, x -10 + size/2, y -10 + size/2, size, size); //alignment
  }

  boolean isOffScreen() {
    return x < 0 || x > width; //left or out of width check for life
  }
}
