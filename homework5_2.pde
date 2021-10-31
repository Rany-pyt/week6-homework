Ball[]tinyBall;

int total=13;

void setup() {
  size(1000, 800);
  frameRate(18);
  smooth();
  background(0);
  noStroke();
  fill(255, 60);
  initiateData();
}

void initiateData() {
  background(0);
  tinyBall= new Ball[total];
  for (int i=0; i<total; i++) {
    float dd= 10;
    tinyBall[i]= new Ball(random(width), random(height), dd);
  }
}

void draw() {
  for (int i=0; i<total; i++) {
     tinyBall[i].move();
    tinyBall[i].grow();
    tinyBall[i].edge();
   
  }
}

void keyPressed() {
  if (key =='r') {
    initiateData();
  }
}
