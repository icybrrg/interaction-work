//this is for heart class


class Heart{
  PImage img;
  float heartW = 376;  //start width
  float heartH = 562;  //start height
  float maxHeartW = 466;
  float maxHeartH = 672;
  float minHeartW = 376;
  float minHeartH = 562;
  float beatSpeed = 3.5;
  
  Heart(PImage img){
    this.img = img;
  }

  void heartBeat(){
    if (mouseX > 1403 && mouseX < 1781 && mouseY > 213 && mouseY < 564) {
      heartW += beatSpeed; heartH += beatSpeed;
      if (heartW >= maxHeartW || heartW <= minHeartW || heartH >= maxHeartH || heartH <= minHeartH) {
         beatSpeed *= -1;  //when mouse is over on heart, it becomes bigger and smaller like beating
      }
    }
      image(img, 1592, 371, heartW, heartH);

  }
}
