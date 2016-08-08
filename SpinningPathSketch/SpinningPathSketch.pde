/*
 * Creative Coding: Spinning curved motion with sin() and cos()
 */

// Drawing position
float x, y;
// Changed position
float posX, posY;
// Radius
float rad;

float max = 2;   // setting a boundary for spinning top to draw within
float min = 0.2;

// Setup configuration for the sketch
void setup() {
  
  // Size of the window
  size(500, 500);

  // Initial Position: Center of the Window
  x = width/2;
  y = height/2;

  // posX and posY are the small change in position each frame
  posX = random(-1, 1);
  posY = random(-1, 1);
  background(255);
}

// Draw the sketch 
void draw() {
  // Blend the old frames
  blendMode(BLEND);

  rad = radians(frameCount);

  // calculate new position
  x += posX;
  y += posY;

  // If the shape hits the window, it reverses and changes velocity
  if (x > width-100 || x < 100) {
    posX = posX > 0 ? -random(min, max) : random(min, max);
  }
  if (y > height-100 || y < 100) {
    posY = posY > 0 ? -random(min, max) : random(min, max);
  }
  
  // Offset from the center
  float bx = x + 100 * sin(rad);  
  float by = y + 100 * cos(rad);  
  
  // Setting the interior of the shape to grey 
  fill(180);

  // Calculate curved data using sin() and cos()
  float radius = 100 * sin(rad*0.1);
  float handX = bx + radius * sin(rad*3);
  float handY = by + radius * cos(rad*3);  
  stroke(0, 50); // Setting the outline to grey
  line(bx, by, handX, handY); // Draws the line
  ellipse(handX, handY, 2, 2); // Draws the ellipse
}