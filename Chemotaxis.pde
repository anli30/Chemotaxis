Fly[] danA;
Fly[] danB;
Fly[] danC;
Fly[] danD;
int clicked = 0;
void setup() {
  size(700, 500);
  danA = new Fly[50];
  double angle= 0;
  //outer ring
  for(int i = 0; i < danA.length; i++){ 
    double x = Math.cos(angle)* 40;
    double y = Math.sin(angle)*40;
    danA[i] = new Fly(137+x,215+y);
    angle += 2*Math.PI/danA.length;
  }
  //second ring
  danB = new Fly[50];
  for(int j = 0; j < danB.length; j++){ 
    double x = Math.cos(angle)* 30;
    double y = Math.sin(angle)*30;
    danB[j] = new Fly(137+x,215+y);
    angle += 2*Math.PI/danB.length;
  }
  //third ring
  danC = new Fly[40];
  for(int c = 0; c < danC.length; c++){ 
    double x = Math.cos(angle)* 20;
    double y = Math.sin(angle)*20;
    danC[c] = new Fly(137+x,215+y);
    angle += 2*Math.PI/danC.length;
  }
  //inner ring
  danD = new Fly[20];
  for(int d = 0; d < danD.length; d++){ 
    double x = Math.cos(angle)* 10;
    double y = Math.sin(angle)*10;
    danD[d] = new Fly(137+x,215+y);
    angle += 2*Math.PI/danD.length;
  }
}

void draw() {
  background(#98CFF7);
  stem();
  //outer ring
  for(int i = 0; i < danA.length; i++){
    danA[i].show();
  }
  //second ring
  for(int j = 0; j < danB.length; j++){
    danB[j].show();
  }
  //third ring
  for(int c = 0; c < danC.length; c++){
   danC[c].show();
  }
  //inner ring
   for(int d = 0; d < danD.length; d++){
    danD[d].show();
  }
  if(clicked == 1){
    for(int i = 0; i < danA.length; i++){
    danA[i].move();
    danA[i].show();
    }
  }else if(clicked ==2){
    for(int i = 0; i < danA.length; i++){
    danA[i].move();
    danA[i].show();
    }
    for(int j = 0; j < danB.length; j++){
    danB[j].move();
    danB[j].show();
    }
  }else if(clicked == 3){
    for(int c = 0; c < danC.length; c++){
    danC[c].move();
    danC[c].show();
    }
    for(int i = 0; i < danA.length; i++){
    danA[i].move();
    danA[i].show();
    }
    for(int j = 0; j < danB.length; j++){
    danB[j].move();
    danB[j].show();
    }
  }else if(clicked == 4){
    for(int d = 0; d < danD.length; d++){
    danD[d].move();
    danD[d].show();
    }
     for(int c = 0; c < danC.length; c++){
    danC[c].move();
    danC[c].show();
    }
    for(int i = 0; i < danA.length; i++){
    danA[i].move();
    danA[i].show();
    }
    for(int j = 0; j < danB.length; j++){
    danB[j].move();
    danB[j].show();
	}
  }
}

//everytime the user clicks, a new layer is flying away
void mouseClicked(){
  clicked = clicked + 1;
}

//this class mimics the floating motion of a dandelion seed when blown
class Fly {
  double myX, myY;
  Fly(double x, double y) {
    myX = x;
    myY = y;
  }
  void move() {
    myX= myX + (int)(Math.random()*3)+1;
    myY = myY + (int)(Math.random()*2)-1;
  }
  void show() {
    noStroke();
    fill(255,255,255,150);
    ellipse((float)myX,(float)myY,10,10);
  }
} 

//this function draws the stem of the dandelion
void stem() {
  fill(0, 0, 0, 255);
  noStroke();
  ellipse(137, 215, 30, 30);

  stroke(0, 0, 0, 200);
  strokeWeight(15);
  line(0, 500, 130, 230);
}