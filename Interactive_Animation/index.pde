import processing.sound.*;  //load the library

SoundFile darling;

//declare images
PImage kiss, heart, label, warning, maryline, cat, player, box, disc, menu;
PImage[] words = new PImage[16];  //arrary numbers for words image


//declare classes and arrays
Kiss kissS, kissL;
Cat jerryCat;
Curtain pinkCurtain;
Background pinkBackground;
Heart redHeart;
Disc blackDisc;
Promise[] promise = new Promise[16];  //arrary for words images
Dish dish;  //rolling pictures on the left
Spotlight spot1, spot2, spot3, spot4;  //moving spotlight in background


//variables
//global variables related to cat and maryline are in Cat folder


void setup(){
  
  size(1920, 1080);
  rectMode(CENTER);
  imageMode(CENTER);
  
  
  //load images
  kiss = loadImage("kiss.png");
  heart = loadImage("heart.png");
  label = loadImage("label.png");
  
  words[0] = loadImage("I1.png");
  words[1] = loadImage("P.png");
  words[2] = loadImage("r.png");
  words[3] = loadImage("o.png");
  words[4] = loadImage("m.png");
  words[5] = loadImage("i.png");
  words[6] = loadImage("s.png");
  words[7] = loadImage("e.png");
  words[8] = loadImage("I2.png");
  words[9] = loadImage("L.png");
  words[10] = loadImage("o2.png");
  words[11] = loadImage("v.png");
  words[12] = loadImage("e2.png");
  words[13] = loadImage("Y.png");
  words[14] = loadImage("o3.png");
  words[15] = loadImage("u.png");
  
  warning = loadImage("warning.png");
  maryline = loadImage("maryline.png");
  cat = loadImage("cat.png");
  player = loadImage("player.png");
  box = loadImage("box.png");
  disc = loadImage("disc.png");
  menu = loadImage("menu.png");

  
  //load sound files
  darling = new SoundFile(this, "darling.mp3");
  
  
  //initialize 
  kissS = new Kiss(kiss, 99, 56);
  kissL = new Kiss(kiss, 161, 91);
  pinkCurtain = new Curtain();
  jerryCat = new Cat(cat);
  pinkBackground = new Background();
  redHeart = new Heart(heart);
  
  promise[0] = new Promise(words[0], 365, 723);
  promise[1] = new Promise(words[1], 485, 720);
  promise[2] = new Promise(words[2], 566, 737);
  promise[3] = new Promise(words[3], 638, 737);
  promise[4] = new Promise(words[4], 744, 737);
  promise[5] = new Promise(words[5], 843, 719);
  promise[6] = new Promise(words[6], 879, 740);
  promise[7] = new Promise(words[7], 946, 738);
  promise[8] = new Promise(words[8], 364, 882);
  promise[9] = new Promise(words[9], 456, 878);
  promise[10] = new Promise(words[10], 537, 896);
  promise[11] = new Promise(words[11], 619, 897);
  promise[12] = new Promise(words[12], 686, 896);
  promise[13] = new Promise(words[13], 839, 879);
  promise[14] = new Promise(words[14], 893, 896);
  promise[15] = new Promise(words[15], 977, 896);
  
  dish = new Dish();
  blackDisc = new Disc(disc, 150, 905);
  spot1 = new Spotlight(140);
  spot2 = new Spotlight(200);
  spot3 = new Spotlight(240);
  spot4 = new Spotlight(280);
  
}

void draw(){
  
  background(#E9C7D5);  //draw background color
  
  image(menu, 1676, 920);  //menu card
  
  spot1.move();
  spot2.move();
  spot3.move();
  spot4.move();
  spot1.display();
  spot2.display();
  spot3.display();
  spot4.display();  //moving spotlight in background

  pinkBackground.display();  //other still background
  
  blackDisc.display();  //disc in left down corner
  
  
  if (blackDisc.x == 1150 && blackDisc.y == 572) {
    if (!darling.isPlaying()) {
      darling.play();  //when blackDisc is dragged to (1150, 572), music "darling" is played
    }
  } else {
    darling.stop();  //If blackDisc is not in position, stop playing
  }
  
  dish.play();
  dish.display();  //rolling pictures
  
  redHeart.heartBeat();  //redHeart beating when mouse is over it
  
  image(label, 1592, 371);  //label on heart
  
  
  for (int i = 0; i < promise.length; i++) {
    promise[i].display();  //place all the objects "words" in the "Promise" array
  }
  
  image(player, 1157, 420);  //record player top
  image(box, 1188, 762);  //record player bottom

  jerryCat.catTrigger();  // cat show randomly on bottom
  
  
  if(showMaryline){
    image(maryline, width/2, height/2);
    int currentTime = millis();
    if(currentTime - startMaryline > 5000){
      showMaryline = false;  //after mouse pressed on "jerryCat", picture "maryline" shows
    }
  }
  
  pinkCurtain.display(0);  //foreground curtain
  pinkCurtain.moveDown();  //when mouse is over, move down
  

  if (mousePressed == true){
    kissL.display();  //when mouse pressed, mouse pic "kiss" zooms in
  } else {
    kissS.display();  //when releaseed, zooms out
  }
  
  blackDisc.pressed();  //execute the command that the blackDisc is pressed

}
