Float[]dandelion;
void setup(){
  size(700,500);
  noLoop();
}

void draw(){
  background(#EDDD81);
  stem();
  seed();
}

//this class mimics the floating motion of a dandelion seed when blown
class Float{
  int myX,myY;
  Float(){
    myX = myY = 250;
  }
  void blow(){
    
  }
  void show(){
    
  }
} 

//this function draws the stem of the dandelion
void stem(){
  fill(0,0,0,200);
  noStroke();
  ellipse(100,200,50,50);
  
  stroke(0,0,0,180);
  strokeWeight(10);
  line(0, 500, 90, 230);
}

void seed(){
 fill(255);
 noStroke();
 ellipse(200,200,5,20); 
 
 stroke(255);
 strokeWeight(1);
 line(200,195,200,140);
 
 
 line(180,140,220,140);
 arc(200,140
}
