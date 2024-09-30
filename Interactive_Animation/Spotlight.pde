//this is for spotlight class in the background

class Spotlight {

  float r;   //radius of spotlight
  float x, y;  //location
  float xspeed, yspeed;  // speed
  color spotColor;
  
  Spotlight(float tempR) {
    r = tempR;  //size of the soptlight
    x = random(width);
    y = random(height);
    xspeed = random( - 15, 15);
    yspeed = random( - 15, 15);
    spotColor = color(random(200, 255), 0, 0, 60);  //I only need red colors with transparency
  }

  void move() {
    x += xspeed; 
    y += yspeed; 
    
    if (x > width || x < 0) {
      xspeed *= -1;  //set the limtation and reverse
    }

    if (y > height || y < 0) {
      yspeed *= -1;
    }
  }

  void display() {
    noStroke();
    fill(spotColor);
    ellipse(x, y, r*2, r*2);
  }
}
