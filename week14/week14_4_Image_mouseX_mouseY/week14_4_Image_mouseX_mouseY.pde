//week14_3_image_mouseX_mouseY 互動
PImage img;//在外宣告，才能在setup()、draw()中
void setup(){//設定
  size(500,500);
  img = loadImage("lion.png");
}//可用任何想要畫的圖 放到程式目錄
void draw(){//畫圖，每秒60次
  image(img, mouseX, mouseY);
}
