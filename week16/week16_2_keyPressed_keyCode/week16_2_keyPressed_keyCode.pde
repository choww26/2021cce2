void setup(){
  size(300,300);
}
String line="";
void draw(){
  background(#FFFFF2);
  textSize(50);
  fill(0); text(line, 10,50);
}
void keyPressed(){//讀入英文字母
  line = "Now key:" + key;
  line += "\nkeyCode:" + keyCode;
}
void keyReleased(){
  line = "";
}
