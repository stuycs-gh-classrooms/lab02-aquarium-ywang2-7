//tank
Tank t;
int tankX;
int tankY;
int floorH;
int tankW;
int tankH;
PImage sand;
PImage water;
PImage lid;

//animal
PImage fish1;
PImage crab;
PImage sponge;
PImage nemo;
//code
void setup(){
  size(600,600);
  
  tankX = 0;
  tankY = 0;
  floorH = 100;
  tankW = width;
  tankH = height;
  sand = loadImage("sand.png");
  water = loadImage("water.jpg");
  sponge = loadImage("sponge.png");
  t = new Tank(tankX, tankY, tankW, tankH, floorH);
  
  fish1 = loadImage("fish1.png");
  crab = loadImage("crab.png");
  nemo = loadImage("nemo.jpeg");
  t.display();
  
}//setup

void draw(){
  t.display();
  t.move();
}//draw


void keyPressed(){
  if(key == '1'){
    t.addAnimal(1);
  }
  if(key == '2'){
    t.addAnimal(2);
  }
  if(key == '3'){
    t.addAnimal(3);
  }
  if(key == '4'){
    t.addAnimal(4);
  }
}
