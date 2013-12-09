float a,b,c;
float oldtime;
float currenttime;
float timechange;
void setup() {
  c= 0;
  a= 0;
  b=0;
  oldtime=0;
  size(500, 500);
  //frameRate(30);
}


void draw() {
  background(a,b,c);
  currenttime=millis();
  timechange=currenttime-oldtime;
  
  if ( timechange>2000) {
    c= random(255); a=random(255); b= random(255);
 oldtime=currenttime; 
}

text(millis()/1000.0, width/2, height/2);  
}
