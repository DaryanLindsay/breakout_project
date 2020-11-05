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
float px, py, pd;// paddle
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
int tempx;
int tempy;
boolean alive[];

//scoreboard variables
int score, lives;




void setup() {
  size(800, 600);
  mode=GAME;

  //initialize paddle
  px=width/2;
  py=height;
  pd= 100;

  //initialize ball
  ballx=400;
  bally=500;
  balld=20;
  vx=0;
  vy=random(5, -5);


  //initialize keyboard
  akey=dkey=false;

  //initialize gif
  gif= new PImage[100];
  n = 100;
  f= 0;


  int i = 0;
  String zero = "0";
  while (i<n) {
    gif[i] = loadImage("frame_0"+zero+i+"_delay-0.04s.gif");
    i++;
    if (i == 10) zero = "";
  }
  //initialize brick variables  
  nb= 36;
  x= new int[nb];
  y= new int[nb];



  brickd= 50;
  alive= new boolean[i];
  tempx= 100; 
  tempy= 100;
  i=0;
  while ( i < nb ) {
    x[i] = tempx;
    y[i] = tempy;
    alive[i] = true;
    i++;
    tempx = tempx + 80;
    if ( tempx>= width) {
      tempx= 100;
      tempy = tempy + 80;
    }
   
  }
  
 //initialize scoreboard variables
 lives=3;
 score=0;
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
  } else {
    println("Mode error:" +mode);
  }
}
