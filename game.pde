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

 

 
 //bouncing

if(bally<0) {
 vy=vy*-1; 
}
if(ballx<0|| ballx>width-10) {
  vx=vx*-1;
}


if(bally> height+50) {
 ballx= 400;
 bally= 400;
 vx=0;
 lives=lives-1;
}

//collisions
if(dist(px, py, ballx, bally)<=60) {
 vx=(ballx-px)/10;
 vy=(bally-py)/10;
}
 
 //bricks
 
 fill(0);
 int i = 0;
 while(i<nb ) {
   if(alive[i]==true) {
  if(y[i] == 100) fill(5,255,44);
  if(y[i] == 180) fill(255,235,5);
  if(y[i] == 260) fill(0,210,200);
  if(y[i] == 340) fill(211,0,7);

  circle(x[i], y[i], brickd); 
 
 
  
   if(dist(ballx, bally, x[i], y[i]) < balld/2 + brickd/2) {
   vx=     vx*-1;                            
   vy =  vy* -1;  
   alive[i] = false;
   score=score+1;
}
   }
i++;
 }

if(ballx>=600) ballx=ballx-1;


//scoring
textAlign(CENTER);
textSize(50);
fill(255,5,255);
text("SCORE:", 150, 50);
text(score, 280, 50);
text("LIVES:", 550,50);
text(lives,650, 50);


if(lives==0||score==36) mode=GAMEOVER;
}
