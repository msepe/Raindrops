PVector recloc;
float rectd;
Rain[] drops= new Rain[50];
void setup() {
  size(500, 500);
  recloc= new PVector(0, 490);
  rectd=60;



  for (int i=0;i<50;i++) {
    drops[i]= new Rain();
  }
  void draw() {
    background(0);
    rectMode(CENTER);
    rect(mouseX, recloc.y, rectd, 10);

      for (int i=0; i<num;i++) {
        drops[i].display();
      }
    }

    class Rain {
      float xspeed, yspeed;
      PVector loc;


      Rain() {
        loc= new PVector(random(500), random(500));
        yspeed=random(1);
        xspeed=random(1);
      }
    }

