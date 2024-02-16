class Tank {
  int x;
  int y;
  int twidth;
  int theight;
  int fheight;
  ArrayList<Animal> animals = new ArrayList<Animal>();
  
  Tank(int tx,int ty,int tw,int th,int fh){
    x = tx;
    y = ty;
    twidth = tw;
    theight = th;
    fheight = fh;
  }//constructor
  
  void display(){
    image(water,x,y-200,twidth,theight+200);
    image(sand,x,height-fheight,twidth,fheight);  
    for(int i = 0;i<animals.size();i++){
      Animal a = animals.get(i);
      a.display();
      a.move();
    }
  }//display
  
  void addAnimal(Animal animal) {
        animals.add(animal);
    }

    void addRandomAnimal(Animal animal) {
        // Calculate random x and y within the tank boundaries
        float randomX = random(x, x + twidth);
        float randomY = random(y, y + theight - fheight);

        // Create a new instance of Animal at the random position
        animals.add(new Animal(randomX, randomY, resizeImage(animal.img, 50, 30))); // Resize the image to 50x30
    }

    PImage resizeImage(PImage img, int newWidth, int newHeight) {
        img.resize(newWidth, newHeight);
        return img;
    }
}
