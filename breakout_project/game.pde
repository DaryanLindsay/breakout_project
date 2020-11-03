void game() {
background(10, 5, 180);
fill(0);
circle(px,py,pd);
fill(255);
circle(ballx,bally,balld);

//move paddles
 if(akey==true) px = px -5;
 if (dkey==true) px=px+5;
 
 
 
 
 //moving
 ballx=ballx + vx;
 bally=bally +vy;

 
/*if(bally<0) {
   bally=10;
}
 if(bally>width) {
   bally=width-10;
 }*/
 
 //bouncing

if(bally<0 || bally> height-10) {
 vy=vy*-1; 
}
if(ballx<0|| ballx>width-10) {
  vx=vx*-1;
}

//collisions
if(dist(px, py, ballx, bally)<=100) {
 vx=(ballx-px)/10;
 vy=(bally-py)/10;
}
}
