//week14_2_PImage 
size(300,300);//依圖片大小調整
//可直接將檔案拉進來
PImage img = loadImage("lion.png");//圖檔
image(img, 0, 0);//在0,0 畫出圖檔
image(img, 0, 0, 300/2, 300/2);
//         x,y ,    寬, 高
