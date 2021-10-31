class Ball {
  float diam=10;
  float centX, centY;
  float speed;

  Ball(float x, float y, float d) {
    centX=x=random(1000);
    centY=y=random(800);
    diam=d;
    speed=diam/10;
  }

  void grow() {
    if (diam <= 400) {
      ellipse(centX, centY, diam, diam);
      diam += 5;
    }
  }

  void move() {
    centY=centY+speed;
  }


  void edge() {
    for (Ball b : tinyBall) {
      if (b != this) {
        if (sqrt((b.centX-this.centX)
          *(b.centX-this.centX)
          +(b.centY-this.centY)
          *(b.centY-this.centY))<=(b.diam+this.diam)*0.4) {
          diam=500;
        }
      }
    }
  }
}
