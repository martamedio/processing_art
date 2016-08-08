/*
 * Creative Coding: Creating an Ellipse with noise()
 */
 
 // Drawing Offset
 float noiseOff=0.0;
 
// Setup configuration for the sketch 
void setup() {
  
  // Size of the window
  size(500, 500);
  
  // Background of the window
  background(255);
}

// Draw the sketch 
void draw() {
  noiseOff = noiseOff + .01;
  
  noFill(); // Disables filling
  stroke(#1b95e0, 15); // Sets the color to draw lines
  
  // Draws the ellipses with the calculated noise
  ellipseMode(CENTER);
  ellipse(width/2, height/2, 500*noise(noiseOff), 500*noise(noiseOff));
}