void setup(){
  size(450,450);
}
int bx=0, by=0;
void draw(){
  background(#E6C56E);
  //line(x=0,y=50,x=450,y=50);
  //line(0, 100, 450, 100);
  //line(0, 150, 450, 100);
  for(int y=50; y<450; y+=50){
    line(0, y, 450, y);
  }
  for(int x=50; x<450; x+=50){
    line(x, 0, x, 450);
  }
  fill(0);
  ellipse( mouseX, mouseY, 40, 40);
  ellipse( bx, by, 40, 40);
}
void mousePressed(){
  bx=mouseX; by=mouseY;
}
