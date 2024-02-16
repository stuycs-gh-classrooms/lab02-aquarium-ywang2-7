class Food {
    float x;
    float y;
    float size;
    boolean active;

    Food(float x, float y, float size) {
        this.x = x;
        this.y = y;
        this.size = size;
        active = true;
    }

    void display() {
        if (active) {
            fill(255, 0, 0); // Red color
            rectMode(CENTER);
            rect(x, y, size, size);
        }
    }

    void moveDown(float speed) {
        y += speed;
    }

    boolean collidesWith(Animal animal) {
        if (!active) return false;
        return (animal.x > x - size / 2 && animal.x < x + size / 2 &&
                animal.y > y - size / 2 && animal.y < y + size / 2);
    }
}
