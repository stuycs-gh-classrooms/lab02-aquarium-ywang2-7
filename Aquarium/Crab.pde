class Crab extends Animal {
    float maxX; // Maximum x-coordinate allowed

    Crab(float x, float y, PImage img, float maxX) {
        super(x, y, img);
        this.maxX = maxX;
    }

    // Override the move method to restrict x-coordinate within a certain range
    @Override
    void move() {
        super.move();
        x = constrain(x, 0, maxX); // Constrain x-coordinate within 0 and maxX
    }
}
