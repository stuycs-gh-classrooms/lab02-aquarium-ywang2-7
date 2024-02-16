//tank
Tank t; 
ArrayList<Food> foods = new ArrayList<Food>();
int tankX;
int tankY;
int floorH;
int tankW;
int tankH;
PImage sand;
PImage water;
PImage lid;
PImage Crab;

//animal
PImage fish1;
PImage shell;

//code
void setup() {
  size(600, 600);
  
  tankX = 0;
  tankY = 0;
  floorH = 100;
  tankW = width;
  tankH = height;
  sand = loadImage("sand.png");
  water = loadImage("water.jpg");
  fish1 = loadImage("fish1.png");
  shell = loadImage("Shells.png");
  Crab = loadImage("Crab.png");
  t = new Tank(tankX, tankY, tankW, tankH, floorH);
  
  t.display();
}

void draw() {
    t.display();
    for (int i = 0; i < foods.size(); i++) {
        Food food = foods.get(i);
        food.display();
        food.moveDown(1); // Adjust the speed of food descent here
        for (int j = 0; j < t.animals.size(); j++) {
            Animal animal = t.animals.get(j);
            if (food.collidesWith(animal)) {
                food.active = false;
                break;
            }
        }
    }
}

void keyPressed() {
    if (key == '1' && mousePressed) {
        t.addRandomAnimal(new Animal(mouseX, mouseY, fish1));
    } else if (key == '2' && mousePressed) {
        t.addRandomAnimal(new Animal(mouseX, mouseY, shell));
    } else if(key == '3' && mousePressed){
        t.addRandomAnimal(new Animal(mouseX, mouseY, Crab));
      }else if (key == ' ') {
        if (random(1) < 0.5) {
            t.addRandomAnimal(new Animal(random(width), random(height), fish1));
        } else {
            t.addRandomAnimal(new Animal(random(width), random(height), shell));
        }
    }
}

void mousePressed() {
    if (keyPressed && key == '1') {
        t.addRandomAnimal(new Animal(mouseX, mouseY, fish1));
    } else if (keyPressed && key == '2') {
        t.addRandomAnimal(new Animal(mouseX, mouseY, shell));
    } else if (!keyPressed) {
        foods.add(new Food(mouseX, 0, 20)); // Create a new food square
    }
}
