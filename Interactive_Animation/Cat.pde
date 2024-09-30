//this is cat trigger class

int catX;  //random x position for cat
int startMaryline = 0;  //the time "maryline" appears
boolean showMaryline = false;  //don't show "maryline" at start

class Cat{
  PImage img;
  int catX;
  int startCat;  //time when cat stays
  int endCat;  //time for cat moves
  int durationCat = 3000;  //time between each movement

  Cat(PImage img){
    this.img = img;
    catX = int(random(width - cat.width));  //set random x position for cat
    startCat = millis();
    endCat = millis(); 
  
  }


  void catTrigger(){
  
    if (millis() - startCat < durationCat) {
      image(img, catX, 1000);
    } else {
      catX = int(random(width - img.width));
      startCat = millis();  //move the cat after "durationCat" amount of time
    } 
  }

  void mousePressed(){
    if (mouseX > catX - img.width/2 && mouseX < catX + img.width/2 &&
        mouseY > 1000 && mouseY < 1080) {
          showMaryline = true;  //when mouse pressed on cat, "maryline" shows
          startMaryline = millis();  //reset the appear timer for "maryline"
        }
  }
  
}

void mousePressed(){
  jerryCat.mousePressed();
}
