// Cat Clean Star
// Subject: Cat | Action: Clean | Object: Star

float catX = 100;                 // Cat horizontal position
float catY = 300;                 // Cat vertical position
float catSpeed = 4;               // Cat movement speed

boolean moveUp = false;           // Tracks UP key state
boolean moveDown = false;         // Tracks DOWN key state
boolean moveLeft = false;         // Tracks LEFT key state
boolean moveRight = false;        // Tracks RIGHT key state

int starCount = 5;                // Total number of stars
float[] starX = {230, 430, 650, 760, 350}; // Star x positions
float[] starY = {170, 440, 180, 410, 300}; // Star y positions
boolean[] starClean = new boolean[starCount]; // Stores whether each star is clean
int cleanedCount = 0;             // Number of stars cleaned

void setup() {
  size(900, 600);                 // Create the game canvas
  smooth();                       // Smooth shape edges
  textAlign(CENTER, CENTER);      // Centre text around its coordinates
}

void draw() {
  background(25, 30, 50);         // Draw the background each frame

  fill(255);                      // Set title colour to white
  textSize(28);                   // Set title text size
  text("CAT CLEAN STAR", width / 2, 35); // Display project title

  updateCat();                    // Update movement from keyboard input
  checkStarCleaning();            // Check whether the cat touches a dirty star
  drawStars();                    // Draw all stars
  drawCat(catX, catY);            // Draw the cat at its current position
  drawHUD();                      // Display progress and controls

  if (cleanedCount == starCount) { // Check whether every star is clean
    drawCompletionScreen();       // Display the completion message
  }
}

void updateCat() {
  if (moveUp) catY -= catSpeed;   // Move the cat upward
  if (moveDown) catY += catSpeed; // Move the cat downward
  if (moveLeft) catX -= catSpeed; // Move the cat left
  if (moveRight) catX += catSpeed;// Move the cat right

  catX = constrain(catX, 35, width - 35);   // Keep cat inside horizontal boundary
  catY = constrain(catY, 80, height - 35);  // Keep cat inside vertical boundary
}

void checkStarCleaning() {
  for (int i = 0; i < starCount; i++) { // Check every star in the game
    float distanceToStar = dist(catX, catY, starX[i], starY[i]); // Calculate cat-star distance

    if (distanceToStar < 45 && !starClean[i]) { // Detect contact with a dirty star
      starClean[i] = true;                      // Change the star to clean
      cleanedCount++;                           // Increase progress exactly once
    }
  }
}

void drawStars() {
  for (int i = 0; i < starCount; i++) {
    stroke(230);
    strokeWeight(2);

    if (starClean[i]) {
      fill(255, 220, 40);          // Clean star is yellow
    } else {
      fill(135, 135, 150);         // Dirty star is grey
    }

    drawStar(starX[i], starY[i], 27, 12, 5);

    if (!starClean[i]) {
      noStroke();
      fill(80, 70, 70);            // Add small dark dirt marks
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
  arc(-25, 15, 45, 45, HALF_PI, PI + HALF_PI); // Tail

  noStroke();
  fill(245, 160, 70);
  ellipse(0, 15, 58, 42);          // Body
  ellipse(0, -15, 50, 44);         // Head
  triangle(-21, -31, -13, -53, -4, -34); // Left ear
  triangle(21, -31, 13, -53, 4, -34);     // Right ear

  fill(30);
  ellipse(-9, -18, 6, 8);          // Left eye
  ellipse(9, -18, 6, 8);           // Right eye

  fill(255, 120, 140);
  triangle(-4, -8, 4, -8, 0, -3); // Nose

  stroke(255);
  strokeWeight(1);
  line(-6, -4, -25, -8);           // Left whisker
  line(-6, 0, -25, 2);             // Left whisker
  line(6, -4, 25, -8);             // Right whisker
  line(6, 0, 25, 2);               // Right whisker

  popMatrix();
}

void drawHUD() {
  fill(255);
  textSize(18);
  textAlign(LEFT, CENTER);
  text("Cleaned: " + cleanedCount + " / " + starCount, 20, 35);

  textSize(14);
  text("Arrow keys: Move cat     R: Restart", 20, height - 20);
  textAlign(CENTER, CENTER);
}

void drawCompletionScreen() {
  fill(0, 0, 0, 160);
  noStroke();
  rect(0, 0, width, height);        // Dark overlay

  fill(255, 230, 70);
  textSize(42);
  text("ALL STARS ARE CLEAN!", width / 2, height / 2 - 25);

  fill(255);
  textSize(20);
  text("Press R to play again", width / 2, height / 2 + 30);
}

void resetGame() {
  catX = 100;                       // Reset cat x position
  catY = 300;                       // Reset cat y position
  cleanedCount = 0;                 // Reset cleaned-star counter

  for (int i = 0; i < starCount; i++) {
    starClean[i] = false;            // Return every star to dirty state
  }
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) moveUp = true;
    else if (keyCode == DOWN) moveDown = true;
    else if (keyCode == LEFT) moveLeft = true;
    else if (keyCode == RIGHT) moveRight = true;
  }

  if (key == 'r' || key == 'R') {
    resetGame();                     // Restart when R is pressed
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
