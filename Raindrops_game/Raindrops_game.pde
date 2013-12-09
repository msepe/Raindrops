//timechange variables may not be used
int old;
int current;
int change;

int dropsNum;
//the declaring od the catcher and the raindrops
Catcher c1;
Rain[] drops= new Rain[100];
float num;

void setup() {
dropsNum=1;
  old=0;
  size(500, 500);
  num=0;
  //catcher declaring continued
  c1 = new Catcher() ;
  //drops declaring continued
  for (int i=0;i<dropsNum;i++) {
    drops[i]= new Rain();
  }
}

void draw() {
  background(0);
//the text that keeps the score
text(num,50,50);
if(num>2){
  
}
  //catcher
  c1.displaycatcher();
// time effect
current=millis();
change=current-old;

//if(change>2000){
//  old=current;
//  index++;

  //all drops variables being stated, makeing the rain drop
  for (int i=0; i<dropsNum;i++) {
    drops[i].display();
    drops[i].move();
    drops[i].caught(c1);
    drops[i].die();
    drops[i].power(c1);
  }
}


