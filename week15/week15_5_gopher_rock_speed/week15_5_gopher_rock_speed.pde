//week15_1 小地鼠
PImage img1, img2, img3, img4, gopher, soil, bg, stone1, stone2;//在外面宣告圖片
int [][]stone={//Java陣列 (C/C++的方括號在右邊)
  {1, 0, 0, 1, 0, 0, 0, 0},
  {0, 1, 0, 1, 0, 0, 0, 0},
  {0, 0, 1, 1, 0, 0, 0, 0},
  {0, 0, 0, 1, 0, 0, 0, 0},
  {0, 0, 0, 0, 1, 0, 0, 0},
  {0, 0, 0, 0, 0, 1, 0, 0},
  {0, 0, 0, 0, 0, 0, 1, 0},
  {0, 0, 0, 0, 0, 0, 0, 1},
};
void setup(){
  size(640,480);
  img1 = loadImage("groundhogIdle.png");//讀進圖檔
  img2 = loadImage("groundhogDown.png");
  img3 = loadImage("groundhogLeft.png");
  img4 = loadImage("groundhogRight.png");
  soil = loadImage("soil8x24.png");
  bg = loadImage("bg.jpg");
  stone1 = loadImage("stone1.png");
  stone2 = loadImage("stone2.png");
  gopher = img1;
}
int x=300, y=0, dx=0, dy=0;
void draw(){
  image(bg, 0, 0);//background(255);
  image(soil, 0, 160-y);//卷軸 土壤往上跑
  int speed=3;
  for(int i=0; i<8; i++){
    for(int j=0; j<8; j++){
      if(stone[i][j]==1)
        image(stone1, 80*j, 80*i+160-y);
        if( dist(x,y-80, 80*j,80*i) <40 ) speed=2;
      //if(小地鼠的座標與80*j 80*i 很接近) 速度下降
    }
  }
  image(gopher, x, 80);
  x+=dx*speed; y+=dy*speed;
}
void keyPressed(){//按下某按鍵 keyCode是鍵盤上的方向鍵
  if(keyCode == DOWN) {gopher = img2; dx=0; dy=1;}
  if(keyCode == LEFT) {gopher = img3; dx=-1; dy=0;}
  if(keyCode == RIGHT){gopher = img4; dx=1; dy=0;}
}
void keyReleased(){
  gopher = img1; dx=0; dy=0;
}
