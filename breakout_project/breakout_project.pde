//breakout
//Daryan
//1-1a

//mode framework
int mode;
final int INTRO =1;
final int GAME =2;
final int PAUSE =3;
final int GAMEOVER =4;




//entitiy variables
float px,py, pd;// paddle
float ballx, bally, balld, vx, vy; //ball

//keyboard variables
boolean akey, dkey;

void setup() {
  size(1000,800);
  mode=GAME;
  
  //initialize paddle
 px=width/2;
 py=height;
 pd= 150;
 
 //initialize ball
 ballx=width/2;
 bally=height/2;
 balld=20;
 vx=random(5,-5);
 vy=random(5,-5);
 
 
 //initialize keyboard
 akey=dkey=false;
 
}

void draw() {
  if (mode==INTRO) {
    intro();
  } else if (mode==GAME) {
    game();
  } else if (mode==PAUSE) {
    pause();
  } else if (mode==GAMEOVER) {
    gameover();
  }  else {
    println("Mode error:" +mode);
}
}
