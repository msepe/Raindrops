class Rain {
  float xspeed, yspeed;
  PVector loc;
  float deathCount;
  float powerGood;
  PVector powerLoc;
  boolean power;
float possibleD;
  Rain() {
    possibleD=25;
    power=false;
    powerGood=30;
    powerLoc= new PVector(random(500), 0); 
    deathCount=0;
    loc= new PVector(random(500), 0);
    yspeed=random(3, 5);
    xspeed=random(1);
  }
  void display() {
    ellipse(loc.x, loc.y, 10, 10);
  }  
  //move operation allows for raindrops to fall
  void move() {
    loc.y+= yspeed;
    if (loc.y>500) {
      loc.y=0;
      loc.x=random(500);
    }
  }  
  // this determines what will happen once the raindrop and catcher meet
  void caught(Catcher c) {
    if (dist(mouseX, c.recloc.y, loc.x, loc.y)<=possibleD) {
      loc.y=0;
      loc.x=random(500);
     
     //used for scoreing
      num+=1;
     
      //every time it is caught a new number apears
      //this number effects that chance of a powerup spawning
      powerGood= random(2);
    }
  }
  //this will be used to determine when the game is over
  //which will be after five drops are lost
  void die() {
    text(deathCount, 400, 50);
    if (loc.y>495 && loc.y<498) {
      deathCount=deathCount+1;
    }
    if (deathCount>=5) {
      background(255, 0, 0);
      textAlign(CENTER);
      textSize(80);
      fill(0);
      text("GAME OVER", width/2, 250);
    }
  }
  // This is a good power up that after a certain amount of time 
  //should wear off. has a random chance of happening.
  void power(Catcher c) {
    if (powerGood<=1) {
      power=true;
    }
    if (power==true) {
      ellipse(powerLoc.x, powerLoc.y, 20, 20);
      powerLoc.y= powerLoc.y+1;
    }
    if (dist(mouseX, c.recloc.y, powerLoc.x, powerLoc.y)<=possibleD) {
      c.rectd=100;
      powerLoc.x=1000;
      possibleD=50;
    }
  }
}

