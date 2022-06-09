
function setup() {
    initializeFields();
    createCanvas(450, 450);
}

var bx;

var by;

var N;

function draw() {
    background(color(0xE6, 0xC5, 0x6E));
    for (var y = 50; y < 450; y += 50) {
        line(0, y, 450, y);
    }
    for (var x = 50; x < 450; x += 50) {
        line(x, 0, x, 450);
    }
    for (var i = 0; i < N; i++) {
        if (// black
        i % 2 == 0)
            // black
            fill(0);
        else
            // white
            fill(255);
        ellipse(bx[i], by[i], 40, 40);
    }
    if (// black
    N % 2 == 0)
        // black
        fill(0);
    else
        // white
        fill(255);
    ellipse(mouseX, mouseY, 40, 40);
}

function mousePressed() {
    bx[N] = mouseX;
    by[N] = mouseY;
    N++;
}

function initializeFields() {
    bx = new Array(100);
    by = new Array(100);
    N = 0;
}
