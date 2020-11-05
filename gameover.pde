void gameover() {
  background(0);
  if(lives<=0) {
    fill(225, 4, 20);
    textSize(100);
    text("YOU LOST",width/2, height/2);
  }
  
  if(score==36) {
    fill(20,225,4);
    textSize(100);
    text("YOU WON!", width/2, height/2);
  }
}
