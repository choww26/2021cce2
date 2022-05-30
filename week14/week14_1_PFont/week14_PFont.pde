//File-Preference
size(300,300);//方框大小
//textSize(50);
background(256);
//text("中文", 50, 50);//執行變亂碼，因為還沒建字型是英文字型
PFont font = createFont("標楷體", 50);//建字型
textFont(font);//使用剛建立的字型
text("中文", 50, 50);//正常中文字。因為字型好了
