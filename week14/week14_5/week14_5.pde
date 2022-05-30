//主角img1，按mouse發射子彈img2
PImage img1, img2;
void setup(){
  size(300,600);
  img1 = loadImage("mario.png");//主角
  img2 = loadImage("bullet.png");//子彈
}
int dy=0;
void draw(){
  background(255);
  imageMode(CENTER);
  image(img1, mouseX, mouseY);
  if(mousePressed){
    image(img2, mouseX, mouseY-dy);
    dy+=2;
  }
}//技巧 選好指令，右鍵可看相關說明
