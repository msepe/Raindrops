class Catcher{
  PVector recloc;
float rectd;
  
}

Catcher() {
recloc= New PVector(mouseX,490);
rectd=20;
}

void displaycatcher(){
 rect(recloc.x,recloc.y,rectd,rectd) 
  
}
