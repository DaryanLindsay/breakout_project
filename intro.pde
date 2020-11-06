void intro() {
 
  
  image(gif[f], 0,0,width, height);
  f++;
  if( f==n) f=0;
  fill(255,3,244);
  textSize(100);
  text("BREAKOUT", width/2, height/2);
  textSize(25);
  text("CLICK TO START", width/2, 400);
}

void introClicks() {
  
  mode=INTRO;
}
