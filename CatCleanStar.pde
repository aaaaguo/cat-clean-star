// Cat Clean Star
// Subject: Cat | Action: Clean | Object: Star

float catX = 100;
float catY = 300;
float catSpeed = 4;

boolean moveUp = false;
boolean moveDown = false;
boolean moveLeft = false;
boolean moveRight = false;

int starCount = 5;
float[] starX = {230, 430, 650, 760, 350};
float[] starY = {170, 440, 180, 410, 300};
boolean[] starClean = new boolean[starCount];
int cleanedCount = 0;

void setup() {
  size(900, 600);
  smooth();
  textAlign(CENTER, CENTER);
}

void draw() {
  background(25, 30, 50);
  fill(255);
  textSize(28);
  text("CAT CLEAN STAR", width / 2, 35);

  updateCat();
  checkStarCleaning();
  drawStars();
  drawCat(catX, catY);

  fill(255);
  textSize(18);
  textAlign(LEFT, CENTER);
  text("Cleaned: " + cleanedCount + " / " + starCount, 20, 35);
  textAlign(CENTER, CENTER);
}

void updateCat() {
  if (moveUp) catY -= catSpeed;
  if (moveDown) catY += catSpeed;
  if (moveLeft) catX -= catSpeed;
  if (moveRight) catX += catSpeed;

  catX = constrain(catX, 35, width - 35);
  catY = constrain(catY, 80, height - 35);
}

void checkStarCleaning() {
  for (int i = 0; i < starCount; i++) {
    float distanceToStar = dist(catX, catY, starX[i], starY[i]);
    if (distanceToStar < 45 && !starClean[i]) {
      starClean[i] = true;
      cleanedCount++;
    }
  }
}

void drawStars() {
  for (int i = 0; i < starCount; i++) {
    stroke(230);
    strokeWeight(2);

    if (starClean[i]) {
      fill(255, 220, 40);
    } else {
      fill(135, 135, 150);
    }

    drawStar(starX[i], starY[i], 27, 12, 5);

    if (!starClean[i]) {
      noStroke();
      fill(80, 70, 70);
      ellipse(starX[i] - 5, starY[i] - 4, 5, 5);
      ellipse(starX[i] + 7, starY[i] + 7, 4, 4);
    }
  }
}

void drawStar(float x, float y, float outerRadius, float innerRadius, int points) {
  float angle = TWO_PI / points;
  float halfAngle = angle / 2.0;
  beginShape();

  for (float a = -HALF_PI; a < TWO_PI - HALF_PI; a += angle) {
    vertex(x + cos(a) * outerRadius, y + sin(a) * outerRadius);
    vertex(x + cos(a + halfAngle) * innerRadius, y + sin(a + halfAngle) * innerRadius);
  }

  endShape(CLOSE);
}

void drawCat(float x, float y) {
  pushMatrix();
  translate(x, y);

  noFill();
  stroke(245, 160, 70);
  strokeWeight(8);
  arc(-25, 15, 45, 45, HALF_PI, PI + HALF_PI);

  noStroke();
  fill(245, 160, 70);
  ellipse(0, 15, 58, 42);
  ellipse(0, -15, 50, 44);
  triangle(-21, -31, -13, -53, -4, -34);
  triangle(21, -31, 13, -53, 4, -34);

  fill(30);
  ellipse(-9, -18, 6, 8);
  ellipse(9, -18, 6, 8);

  fill(255, 120, 140);
  triangle(-4, -8, 4, -8, 0, -3);

  stroke(255);
  strokeWeight(1);
  line(-6, -4, -25, -8);
  line(-6, 0, -25, 2);
  line(6, -4, 25, -8);
  line(6, 0, 25, 2);

  popMatrix();
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) moveUp = true;
    else if (keyCode == DOWN) moveDown = true;
    else if (keyCode == LEFT) moveLeft = true;
    else if (keyCode == RIGHT) moveRight = true;
  }
}

void keyReleased() {
  if (key == CODED) {
    if (keyCode == UP) moveUp = false;
    else if (keyCode == DOWN) moveDown = false;
    else if (keyCode == LEFT) moveLeft = false;
    else if (keyCode == RIGHT) moveRight = false;
  }
}
