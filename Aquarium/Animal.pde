class Animal {
  float x;
  float y;
  float xspeed;
  float yspeed;
  float bsize; // Size of the bounding box
  PImage img;
  
  Animal(float x, float y, PImage img) {
    this.x = x;
    this.y = y;
    this.img = img;
    xspeed = random(-4, 4); // Increase the range for faster speed in x-direction
    yspeed = random(-4, 4); // Increase the range for faster speed in y-direction
    bsize = max(img.width, img.height); // Set bsize to the maximum dimension of the image
  }
  
  void move() {
    if (x >= width - bsize/2 || x <= bsize/2) {
      xspeed *= -1;
    }
    if (y >= height - bsize/2 || y <= bsize/2) {
      yspeed *= -1;
    }
    x += xspeed;
    y += yspeed;
  }
  
  void display() {
    image(img, x, y);
  }
}
