class Shell extends Animal {
  Shell(float x, float y, PImage img) {
    super(x, y, img);
  }
  
  // Override the move method to make the shell move downwards
  void move() {
    y += yspeed;
    
    // If the shell hits the bottom of the tank, rebound by changing yspeed
    if (y >= height - bsize / 2) {
      y = height - bsize / 2; // Reset y position to prevent going beyond the bottom
      yspeed *= -0.8; // Reverse direction and reduce speed (elastic collision)
    }
  }
}
