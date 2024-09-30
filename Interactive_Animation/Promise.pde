//this is for  "Promise" words class

class Promise {
  PImage img;
  float x, y;
  float originalY;
  int imgWidth = 60;
  int imgHeight = 60;
  int upSpeed;
  
  Promise(PImage img, float x, float y) {
    this.img = img;
    this.x = x;
    this.y = y;
    this.originalY = y;
  }
  
  void display() {
    image(img, x, y);
  }
  
  boolean isMouseOver() {
    return mouseX > x - imgWidth/2 && mouseX < x + imgWidth/2 && mouseY > y - imgHeight/2 && mouseY < y + imgHeight/2;
  }  //set where could be count as mouse is over
  
  void moveUp(int s) {
    upSpeed = s;
    if (y > originalY - 50){
      y = y - s;  //up 50
    }
  }
  
  void resetPosition() {
    y = originalY;
  }
}

void mouseMoved() {
  for (int i = 0; i < promise.length; i++) {
    if (promise[i].isMouseOver()) {
      promise[i].moveUp(2);
    } else {
      promise[i].resetPosition();
    }
  }
}
