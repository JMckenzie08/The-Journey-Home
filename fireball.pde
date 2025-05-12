
class Fireball {
  float x, y;
  float size = 20;
  float speedX, speedY;
  boolean alive = true;


  Fireball(float x, float y, float speedX, float speedY) {
    this.x = x;
    this.y = y;
    this.speedX = speedX;
    this.speedY = speedY;
    fireBallImg = loadImage("fireball2.png");


    if (currentLevel != 2) {


    }
    
    if (currentLevel == 2) {

    }
  }


  void update() {
    if (!alive) return;

    x += speedX;
    y += speedY;

    if (x < cameraX - 100 || x > cameraX + width + 100 || y < -100 || y > height + 100) {//out of bounds of cam not level
      alive = false;

    }


    // player col
    if (player.x + player.width > x && player.x < x + size &&
      player.y + player.height > y && player.y < y + size) {
      if (player.invincibilityFrames <= 0) {
        lives--;
        score=0;

        player.invincibilityFrames = 60;
        loadLevel(currentLevel);
      }
      alive = false;

    }
  }

  void display() {
    if (!alive) return;

    pushMatrix();
    translate(x + size/2, y + size/2);
    imageMode(CENTER);

    image(fireBallImg, 0, 0, size, size);

    popMatrix();
  }
  void stopSound() {

  }
}
