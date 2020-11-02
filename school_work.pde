//brick variables
int[]x;
int[]y;
int brickd;

PImage[] gif;
int n;
int f ;
void setup() {
 size(1000,800); 
 //x= new int[0] = 100;
 //y= new int[0] = 100;
 
 //x[1] = 400;
 //y[1] = 100;
 
 //x[2] = 700;
 //y[2] = 700;
 
 
 //brickd=50;
 
 f= 0;
 
 gif= new PImage[100];
 n = 100;
 
 int i = 0;
 String zero = "0";
 while(i<n) {
   gif[i] = loadImage("frame_0"+zero+i+"_delay-0.04s.gif");
   i++;
   if (i == 10) zero = "";
 }
}

void draw() {
  background(3,10,110);
  
  image(gif[f], 0,0,width, height);
  f++;
  if( f==n) f=0;
}
