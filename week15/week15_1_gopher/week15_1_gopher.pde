//week15_1 小地鼠
PImage img1, img2, img3, img4;//宣告圖片
void setup(){
  size(640,480);
  img1 = loadImage("groundhogIdle.png");//讀進圖檔
  img2 = loadImage("groundhogDown.png");
  img3 = loadImage("groundhogLeft.png");
  img4 = loadImage("groundhogRight.png");
}
void draw(){
  image(img1,   0, 0);
  image(img2, 100, 0);
  image(img3, 200, 0);
  image(img4, 300, 0);
}
