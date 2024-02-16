class Tank{
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
    }
  }//display
  
  void move(){
    for(int i = 0;i<animals.size();i++){
      Animal a = animals.get(i);
      a.move();
    }
  }//move
  
  void addAnimal(int id){
    if(id == 1){
      animals.add(new Crab(mouseX, mouseY));
    }
    if(id == 2){
      animals.add(new Fish(mouseX, mouseY));
    }
    if(id == 3){
      animals.add(new Sponge(mouseX, mouseY));
    }
    if(id == 4){
      animals.add(new Nemo(mouseX, mouseY));
    }
  }
}
