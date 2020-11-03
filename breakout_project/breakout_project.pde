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

//gif variables
PImage[] gif;
int n;
int f ;
 
 //brick variables
int[]x;
int[]y;
int brickd;
int nb;
 

 

void setup() {
  size(800,600);
  mode=GAME;
  
  //initialize paddle
 px=width/2;
 py=height;
 pd= 100;
 
 //initialize ball
 ballx=width/2;
 bally=height/2;
 balld=20;
 vx=random(5,-5);
 vy=random(5,-5);
 
 
 //initialize keyboard
 akey=dkey=false;
 
 //initialize gif
 gif= new PImage[100];
 n = 100;
 f= 0;
 
 
 int i = 0;
 String zero = "0";
 while(i<n) {
   gif[i] = loadImage("frame_0"+zero+i+"_delay-0.04s.gif");
   i++;
   if (i == 10) zero = "";
   
 //initialize brick variables  
 nb= 4;
 x= new int[nb];
 y= new int[nb];
 
 x[0] = 100;
 y[0] = 100;
 
 x[1] = 400;
 y[1] = 100;
 
 x[2] = 500;
 y[2] = 500;
 
 brickd= 50;
 
 
 }
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
