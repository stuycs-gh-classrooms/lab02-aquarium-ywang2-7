class Crab extends Animal{
  Crab(int ax, int ay){
    super(ax, ay);
    xspeed = int(random(1,6))*int(pow(-1, int(random(1,3))));
    yspeed = 2;
  }//contructor
  
  void move(){
    if(x<0){
      x = 0;
      xspeed = -xspeed;
    }
    else if(x>width-size){
      x = width-size;
      xspeed = -xspeed;
    }
    else if(y>height-size){
      y = height-size;
      yspeed = -yspeed;
    }
    else if(y<height-30-size){
      y = height-30-size;
      yspeed = -yspeed;
    }
    x+=xspeed;
    y+=yspeed;
  }//move
  
  void display(){
    image(crab,x,y,size,size);
  }//display
}
