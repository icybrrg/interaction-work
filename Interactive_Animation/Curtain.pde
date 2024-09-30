//this is for the curtain class on top

class Curtain{
  int curtainX = 0;  //right side
  int curtainY = 0;
  int curtainX2 = 0;  //left side
  int curtainY2 = 0;
  
  Curtain(){}

  void display(float y){
  
    strokeWeight(5);
    stroke(#D93655);
    fill(#F391A1);

    while(curtainX + width/2 >= width/2 && curtainX + width/2 <= width){
      ellipse(width - curtainX, curtainY - 210 + y, 460, 330);
      curtainX = curtainX + 240;
      curtainY = curtainY + 40;  //draw the right side of curtain
    }
  
    curtainX = 0;
    curtainY = 0;  //reset the position
  
    while(curtainX2 >= 0 && curtainX2 <= width/2){
      ellipse(curtainX2, curtainY2 - 210 + y, 460, 330);
      curtainX2 = curtainX2 + 240;
      curtainY2 = curtainY2 + 40;  //draw the left side
    }
  
    curtainX2 = 0;
    curtainY2 = 0;

  }
  
  void moveDown(){
    if (mouseX > 510 && mouseX < 1410 &&
      mouseY > 0 && mouseY < 180) {
    curtainY += 40;
    curtainY2 += 40;  // Move the curtain downward
  } else {
    curtainY = 0;
    curtainY2 = 0;  // Reset the position if the mouse is not over the curtain
  }
 }
 
}
