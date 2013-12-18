//timechange variables may not be used
int oldTime;
int currentTime;
int timeChange;
int dropsNum;
int dropsNumBad;
boolean start;
int increase;
//the declaring od the catcher and the raindrops
Catcher c1;
Rain[] drops= new Rain[1000];
Badrain[] badDrops= new Badrain[1000];
float num;
PImage background;
float deathCount;
boolean power;
int speeder;

void setup() {
  background=loadImage("tree2.jpg");
  deathCount=0;
  start=true;
  dropsNum=1;
  dropsNumBad=1;
 increase=1;
  oldTime=0;
  speeder=0;
  size(500, 500);
  num=0;
  //catcher declaring continued
  c1 = new Catcher() ;
  //drops declaring continued
  for (int i=0;i<drops.length;i++) {
    drops[i]= new Rain();
  }
  //declaring for badrain 
  for (int i=0;i<badDrops.length;i++) {
    badDrops[i]= new Badrain();
  }
}

void draw() {
  //if the mouse is pressed it shouod bring you from
  //a start screne into the game
  if (mousePressed) {
    start=false;
  }

  if (start== true) {
    background(25);
    fill(9, 124, 27);
    textSize(25);
    textAlign(CENTER);
    text("PRESS TO START", 250, 250 );
  }

  if (start== false) {
    background(background);
    //the text that keeps the score also adds more drops
    //if the score goes over a certain number
    text("score", 53, 20);
    text(num, 50, 50);

    //catcher
    c1.displaycatcher();
    // time effect
    for (int i=0; i<dropsNumBad;i++) {
      badDrops[i].display2();
      badDrops[i].move2();
      badDrops[i].caught2(c1);
    }
//time variable means after a certain number of time 
//a new badrain will appear at a faster pace
    currentTime=millis();
    timeChange= currentTime-oldTime;
       if (timeChange>2000-speeder) {
      oldTime=currentTime  ;
     dropsNumBad=dropsNumBad+increase;
           speeder=50;
    }
   //more badrain will apear after a certain score
   if(num>10){
    increase=2; 
   }
   if(num>25){
    increase=3; 
   }
   if(num>50){
    increase=5; 
   }
    //attempts at trying to make the raindrops increase in number
    //after a certain number of drops fall
    //instead of increase in raindops, after a certain score is reaced
    //evil raindops apear
 
    //all drops variables being stated, makeing the rain drop
    for (int i=0; i<dropsNum;i++) {
      drops[i].display();
      drops[i].move();
      drops[i].caught(c1);
      drops[i].die();
      drops[i].power(c1);
    }
  }
}

