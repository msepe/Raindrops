//timechange variables may not be used
int old;
int current;
int change;
int dropsNum;
boolean start;  
float deathCount;


PImage background;

//the declaring od the catcher and the raindrops
Catcher c1;
Rain[] drops= new Rain[1000];
float num;

void setup() {
  background=loadImage("tree2.jpg");


  start=true;
  dropsNum=1;
  old=0;
  size(500, 500);
  num=0;
  //catcher declaring continued
  c1 = new Catcher() ;
  //drops declaring continued
  for (int i=0;i<drops.length;i++) {
    drops[i]= new Rain();
  }
}

void draw() {
  //if the mouse is pressed it shouod bring you from
  //a start screne into the game
  if (mousePressed) {
    start=false;
  }
  if (start== true) {
    background(255);
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
    current=millis();
    change=current-old;
    if (change >= 2000) {
      dropsNum++;
      old = current;
    }
    //attempts at trying to make the raindrops increase in numer
    //after a certain number of drops fall
    //if(millis()>5000){
    // dropsNum+=1; 
    //}
    //    if (num>20) {
    //      dropsNum=2;
    //    }
    //    if (num>50) {
    //      dropsNum=3;
    //    }
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

