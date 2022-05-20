void setup(){//只做一次
  size(300, 300);
  fill(#97C4FA);
  textSize(50);
  textAlign(CENTER,CENTER);
}
int choice = -1; //-1沒選, 0,1,2有選
void draw(){//每秒60次
  background(#FFFAE8);
  text("Dinner1", 150, 50);
  text("Dinner2", 150, 150);
  text("Dinner3", 150, 250);  
  if(choice==0) ellipse( 30, 50, 50,50);
  if(choice==1) ellipse( 30,150, 50,50);
  if(choice==2) ellipse( 30,250, 50,50);
}           //圓形or橢圓  x, y,   w, h
void mousePressed(){//當按下滑鼠
  choice = int( random(3) ) ; //取整數0,1,2
}          // 0.00~2.99之間 (不含3.0)
