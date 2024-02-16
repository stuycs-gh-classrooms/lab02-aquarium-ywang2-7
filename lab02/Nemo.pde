class Nemo extends Animal{
  Nemo(int fx,int fy){
    super(fx,fy);
    xspeed = int(random(1,6))*int(pow(-1, int(random(1,3))));
    
  }//constructor
  
  void display(){
    image(nemo,x,y,size,size);
  }//display
  
  void move(){
    if(x<0){
      x = 0;
      xspeed = -xspeed;
    }
    else if(x>width-size){
      x = width-size;
      xspeed = -xspeed;
    }
    else if(y<0){
      y = 0;
      yspeed = -yspeed;
    }
    else if(y>height-30-size){
      y = height-size-30;
      yspeed = -yspeed;
    }
    x+=xspeed;
    y+=yspeed;
  }//move
  
}
