class Badrain {
  float xspeed, yspeed;
  PVector loc;
  // float deathCount;
  float possibleD;
  float oldnum;
  float numchange;

  Badrain() {
    possibleD=25;
    deathCount=0;
    loc= new PVector(random(500), 0);
    yspeed=random(3, 5);
    xspeed=random(1);
  }

  void display2() {
    fill(255, 0, 0);
    ellipse(loc.x, loc.y, 10, 10);
    fill(255);
  }  

  //move operation allows for raindrops to fall
  void move2() {
    loc.y+= yspeed;
//useing the speeder comand 
//everytime the red his he ball of goes off scean
//it will apear faster next time
//also the speed will increase
  // I made it so it ges fast very easily
  if (loc.y>500) {
      loc.y=0;
      loc.x=random(500);
 oldTime=currentTime  ;
 speeder=50;
 yspeed=yspeed+1;
  }
  }  
  // this determines what will happen once the raindrop and catcher meet

  void caught2(Catcher c) {
    if (dist(mouseX, c.recloc.y, loc.x, loc.y)<=possibleD) {
      loc.y=0;
      loc.x=random(500);
      //if you catch a bad raindrop then your death goes up
      deathCount=deathCount+1;
 oldTime=currentTime  ;
  }
  }
}
//this will be used to determine when the game is over
//which will be after five drops are lost


