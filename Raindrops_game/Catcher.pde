class Catcher {
  PVector recloc;
  float rectd;

//i had to change this from a rec to an ellipse
//due to errors that were occuring when i was changing the catching style
  Catcher() {
    recloc= new PVector(mouseX, 480);
    rectd=50;
  }

  void displaycatcher() {
   rectMode(CENTER);
    ellipse(mouseX, recloc.y, rectd, rectd);
    }
  }

