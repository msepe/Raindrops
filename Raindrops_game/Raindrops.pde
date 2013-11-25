 class Rain {
      float xspeed, yspeed;
      PVector loc;


      Rain() {
        loc= new PVector(random(500), random(500));
        yspeed=random(1);
        xspeed=random(1);
      }
  void display(){
  ellipse(loc.x,loc.y,20,20);
  }  
void move(){
loc.x+= xspeed;
loc.y+= yspeed;

}  
}

