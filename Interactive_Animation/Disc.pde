//this is for disc plate class

class Disc{
  PImage img;
  float x, y; //position od disc
  float originalX, originalY;  //original position of disc
  boolean dragging = false;  //initial status is off

  Disc(PImage img, float x, float y) {
    this.img = img;
    this.x = x;
    this.y = y;
    originalX = x;
    originalY = y;
  }

  void display() {
    image(img, x, y);
  }

  void pressed() {
    if (mouseX > x - img.width/2&& mouseX < x + img.width/2 &&
        mouseY > y - img.height/2&& mouseY < y + img.height/2) {
      dragging = true;  //when mouse pressed inside the disc, it can be dragged
    }
  }

  void dragged() {
    if (dragging) {
      x = mouseX;
      y = mouseY;  //when being dragged, it's position follows the mouse
    }
  }

  void released() {
    if(dragging){
      dragging = false;  //need to reset for avoid it accounts without dragging
      x = 1150;
      y = 572;  //when being dragged to the certain position, it stays
    }

  }
}

void mouseDragged() {
  blackDisc.dragged();
}

void mouseReleased() {
  blackDisc.released(); 
}
