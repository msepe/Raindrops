
Rain[] drops= new Rain[50];
void setup() {
  size(500, 500);
  recloc= new PVector(0, 490);
  rectd=60;

  for (int i=0;i<50;i++) {
    drops[i]= new Rain();
  
}
}
void draw() {
  background(0);
  for (int i=0; i<num;i++) {
    drops[i].display();
 drops[i].move();
  }
}

