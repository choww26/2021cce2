// Step1: 右上 Java 改 p5.js
// Step2: 用week_13_5_dinner_random 轉檔 
// https://pde2js.herokuapp.com/ 貼在左邊，Convert
// Step3: 右邊程式碼，貼到 Processing p5.js 視窗
// Run!!!
// Step4: 存在桌面的week13 放上github
// https://github.com/choww26/choww26.github.io

function setup() {
    initializeFields();
    // 只做一次
    createCanvas(300, 300);
    fill(color(0x97, 0xC4, 0xFA));
    textSize(50);
    textAlign(CENTER, CENTER);
}

// -1沒選, 0,1,2有選
var choice;

function draw() {
    // 每秒60次
    background(color(0xFF, 0xFA, 0xE8));
    text("Dinner1", 150, 50);
    text("Dinner2", 150, 150);
    text("Dinner3", 150, 250);
    if (choice == 0)
        ellipse(30, 50, 50, 50);
    if (choice == 1)
        ellipse(30, 150, 50, 50);
    if (choice == 2)
        ellipse(30, 250, 50, 50);
}

// 圓形or橢圓  x, y,   w, h
function mousePressed() {
    // 當按下滑鼠
    // 取整數0,1,2
    choice = int(random(3));
}

function initializeFields() {
    choice = -1;
}
