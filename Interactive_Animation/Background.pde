//this is for still background

class Background{
  int numFlower = 8; //"flower" pattern repeats 8 times
  
  Background(){
  }

  void display(){

    noStroke();
    fill(0);
    rect(334, 400, 536, 800);  //background: upper black rect
    rect(334, 1036, 536, 88);  //background: down black rect
  
    strokeWeight(5);
    stroke(#D93655);
    fill(255);
    ellipse(390, 474, 608, 608); 
    ellipse(390, 474, 380, 380);  //plate
    ellipse(160, 895, 190, 190);  //original place for blackDisc 
    ellipse(1160, 562, 190, 190);  //goal place for blackDisc
  
    pushMatrix();
    translate(390, 474);
    for (int i = 0; i < numFlower; i++) {
      rotate(TWO_PI / numFlower);
      flower(-280, -80);
    }
    popMatrix();  //rotate "flower" pattern
  
    image(warning, 334, 1036);  //"But don't let the cat in..."
    
    
  }

}



//"flower" pattern
//this is from my last assignment, so I straightly copy it

void flower(float x, float y){
  // leaves
  noStroke();
  fill(#374569);
  ellipse(10 + x, 80 + y, 20, 20);  // circle left
  ellipse(27 + x, 80 + y, 14, 14);  // circle right
  
  
  // stem
  pushMatrix();
  stroke(#374569); 
  strokeWeight(2);
  noFill();
  translate(90 + x, 80 + y);  // change the center or rotation 
  rotate(radians(-54));
  arc(0, 0, 140, 140, PI, PI+HALF_PI);  // stem
  popMatrix();
  
  
  // petals
  fill(#FF6863);  // red petal left
  noStroke();
  triangle(34 + x, 38 + y, 22 + x, 12 + y, 46 + x, 12 + y); // bottom part
  arc(34 + x, 12 + y, 24, 24, PI, TWO_PI); // upper part of the petal
  
  pushMatrix();  // pink petal left
  fill(#FFC3C1);
  noStroke();
  translate(34 + x, 38 + y); // change the center or rotation 
  rotate(radians(-65));
  triangle(0, 0, -8, -16, 8, -16);
  arc(0, -16, 16, 16, PI, TWO_PI);
  popMatrix();
  
  fill(#FF6863);  // red petal right
  noStroke();
  pushMatrix();
  translate(34 + x, 38 + y); // change the center or rotation
  rotate(radians(130));
  triangle(0, 0, -12, -26, 12, -26);
  arc(0, -26, 24, 24, PI, TWO_PI);
  popMatrix();
  
  pushMatrix();  // pink petal center
  fill(#FFC3C1);
  noStroke();
  translate(34 + x, 38 + y); // change the center or rotation
  rotate(radians(30));
  triangle(0, 0, -8, -16, 8, -16);
  arc(0, -16, 16, 16, PI, TWO_PI);
  popMatrix();
  
  pushMatrix();  // pink petal right
  fill(#FFC3C1);
  noStroke();
  translate(34 + x, 38 + y); // change the center or rotation
  rotate(radians(95));
  triangle(0, 0, -8, -16, 8, -16);
  arc(0, -16, 16, 16, PI, TWO_PI);
  popMatrix();
  
  fill(#FF6863);  // red petal center
  noStroke();
  pushMatrix();
  translate(34 + x, 38 + y); // change the center or rotation
  rotate(radians(65));
  triangle(0, 0, -12, -26, 12, -26);
  arc(0, -26, 24, 24, PI, TWO_PI);
  popMatrix();
}
