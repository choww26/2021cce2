PShape gundam;
void setup(){
  size(600,600, P3D);
  gundam = loadShape("Gundam.obj");
}
void draw(){
  background(128);
  //倒過來了，要再倒回去
  translate(300, 550);//往右移一半250
  scale(20, -20, 20);//放大20倍，可看到左半邊
  rotateY( radians(frameCount) );//要放在下面
  shape(gundam);//太小
}
