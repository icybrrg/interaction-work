class Dish{
  PImage[] dish = new PImage[8];
  int playNow = 0;  //start form num[0] picture
  int end = 0;
  int interval = 1000;  //interval time for each pic
  float[] positionX = {475, 416, 450, 474, 426, 402, 409, 434};
  float[] positionY = {476, 368, 535 , 522 ,394 , 429 , 501, 493};
  
  Dish(){
    dish[0] = loadImage("threewomen.png");
    dish[1] = loadImage("telephone.png");
    dish[2] = loadImage("cupid.png");
    dish[3] = loadImage("gun.png");
    dish[4] = loadImage("cake.png");
    dish[5] = loadImage("clown.png");
    dish[6] = loadImage("queen.png");
    dish[7] = loadImage("lover.png");
    
  }
  
  void play(){
    int start = millis();
    
    if(start - end > interval){
      playNow = (playNow + 1)%dish.length;
      end = start;  //rooling the pictures with certain time interval
    }
  }
  
  void display(){
    image(dish[playNow], positionX[playNow], positionY[playNow]);
    play();  //set each picture's position
  }
}
