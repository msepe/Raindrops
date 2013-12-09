float index;
Thing[] mover= new Thing[100000];
float old,current,change;
void setup() {
  index=0;
  size(600, 600);
old=0;
  for (int i=0;i<100000;i++) {
    mover[i]= new Thing();
  }
}


void draw() {
current= millis();
change=current-old;
  for (int i=0; i<index;i++) {
    mover[i].move();
  }
  if(change>15){
   index++;
  old=current; 
  }

}

void mousePressed() {
  index++;
}


class Thing {
  float x, y;

  Thing() {
    x=random(width);
    y=random(height);
  }
  void move() {
   fill(random(255), random(255), random(255));
    ellipse(x, y, 40, 40);
   // x=x+random(5);
   // y=y+random(5);
  }
}

