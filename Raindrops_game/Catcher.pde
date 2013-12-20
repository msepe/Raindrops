class Catcher {
  PVector recloc;
  float rectd;
  //  PImage bucket;
  //i had to change this from a rec to an ellipse
  //due to errors that were occuring when i was changing the catching style
  Catcher() {
    // bucket=loadImage("bucket");
    recloc= new PVector(mouseX, 480);
    rectd=50;
  }

  void displaycatcher() {
    rectMode(CENTER);
    fill(131, 76, 38);
   
    ellipse(mouseX, recloc.y, rectd, rectd);
    fill(255);
  }
}

