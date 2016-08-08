/*
 * Creative Coding: Pacman accross the window made with an arc()
 */
 
// Radius of Pacman
int size = 50; 
// Initial position of Pacman
float xPos = -size;
// Speed to move Pacman across the window
float speed = 1.5;

// Setup configuration for the sketch
void setup(){
    
  // Size of the window
  size(400,200);

}

// Draw the sketch 
void draw(){
  
  // Sets background color
  background(0);
  // Sets the Pacman color
  fill(#FFFF00);  
  // Defines the position of Pacman for each frame
  xPos += speed;
  
  // Draws an Pacman: X position, Y position, width of Pacman, height of Pacman and angle for the mouth of Pacman
  arc(xPos, 100, size, size, 0.50, 5.80);
}