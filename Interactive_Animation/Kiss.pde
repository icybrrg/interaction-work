//this is for mouse picture class "Kiss"


class Kiss{
  PImage img;
  int itsW;  //image width
  int itsH;  //image height
  
  Kiss(PImage img, int itsW, int itsH){
    this.img = img;
    this.itsW = itsW;
    this.itsH = itsH;
  }
  
  void display(){
    kiss.resize(itsW, itsH);
    image(img, mouseX, mouseY);
  }
}
