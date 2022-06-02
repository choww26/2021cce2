//week15_1 小地鼠
PImage img1, img2, img3, img4, gopher, soil, bg;//在外面宣告圖片
void setup(){
  size(640,480);
  img1 = loadImage("groundhogIdle.png");//讀進圖檔
  img2 = loadImage("groundhogDown.png");
  img3 = loadImage("groundhogLeft.png");
  img4 = loadImage("groundhogRight.png");
  soil = loadImage("soil8x24.png");
  bg = loadImage("bg.jpg");
  gopher = img1;
}
int x=0, y=0, dx=0, dy=0;
void draw(){
  image(bg, 0, 0);//background(255);
  image(soil, 0, 160-y);//卷軸
  image(gopher, x, 80);//本來是image(gopher, x, y);
  x+=dx; y+=dy;
}
void keyPressed(){//按下某按鍵 keyCode是鍵盤上的方向鍵
  if(keyCode == DOWN) {gopher = img2; dx=0; dy=1;}
  if(keyCode == LEFT) {gopher = img3; dx=-1; dy=0;}
  if(keyCode == RIGHT){gopher = img4; dx=1; dy=0;}
}
void keyReleased(){
  gopher = img1; dx=0; dy=0;
}
