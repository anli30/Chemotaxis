Fly[] dan;
void setup(){
  size(700,500);
  noLoop();
  //this forms a circular shape with seeds
  dan = new Fly[10];
  for(int i = 0; i < dan.length; i++){
    dan[i] = new Fly(200,200); 
  }
}

void draw(){
  background(#98CFF7);
  stem();
  //this forms a circular shape with seeds
  for(int i = 0; i < dan.length; i++){
    dan[i].show();
  }
}

//this class mimics the floating motion of a dandelion seed when blown
class Fly{
  int myX,myY;
  Fly(int x, int y){
    myX = x;
    myY = y;
  }
  void blow(){
    
  }
  void show(){
    seed(myX,myY);
  }
  void seed(int a, int b){
  fill(255);
  noStroke();
  ellipse(a,b,5,20);
  
  stroke(255);
  strokeWeight(1);
  line(a,b,a,b-50);
  
  noFill();
  arc(a,b-70,40,40,0,PI);
  arc(a,b-65,50,30,0,PI);
  arc(a,b-60,60,20,0,PI);
  }
} 

//this function draws the stem of the dandelion
void stem(){
  fill(0,0,0,255);
  noStroke();
  ellipse(137,215,30,30);
  
  stroke(0,0,0,200);
  strokeWeight(15);
  line(0,500, 130, 230);
}
