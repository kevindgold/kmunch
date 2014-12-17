PFont f;
PImage [] img;
int state = 0;
boolean next = false;
boolean home = false;
boolean next1 = false;
boolean next2 = false;
boolean next3 = false;
boolean next4 = false;
boolean next5 = false;
Draggable d;
Draggable d2;
Draggable d3;
Draggable d4;
Draggable d5;


void setup() {
  size(500, 600);
  f = loadFont("ClementePDae-Light-48.vlw");
  img = new PImage[16];
  for (int i = 0; i < img.length; i++) //will only count up to 10 images
    img [i] = loadImage("img" + i + ".png"); //images will load accordingly to string
  img[3].resize(60,0);
  d = new Draggable(250, 50, 20, 25);
  d2 = new Draggable(200, 80, 60, 45);
  d3 = new Draggable(180, 250, 200, 300);
  d4 = new Draggable(380, 150, 100, 200);
  d5 = new Draggable(210, 80, 90, 90);
}


void draw() {


  if (!home && state == 0) { //game screen 0 / opening screen
    background(#37ac63);
    fill(#f1cd96);
    stroke(#424242);
    strokeWeight(4);
    rect(150, 50, 200, 120, 20);
    fill(#cea465);
    rect(-180, 50, 500, 180, 20);
    fill(#eccd9f);
    textFont(f, 30);
    text("Chris", 80, 100); 
    text("Must", 80, 130); 
    text("Eat", 80, 160); 
    text("Everything!", 80, 190);





    if (mouseX < 400 && mouseX > 50 && mouseY < 600 && mouseY > 450) {
      image(img[5], 0, 0);
      image(img[2], mouseX-90, mouseY-30);
    } else {
      image(img[4], 0, 0);
    }

    if (mouseX < 360 && mouseX > 320 && mouseY < 180 && mouseY > 50) {
      image(img[0], 0, 0);
    }
  } else if (!next && state == 1) { //game screen 1 starts here
    background(#37ac63);
    image(img[3], 5, 0);

    if (mouseX < 150 && mouseX > 50 && mouseY < 560 && mouseY > 500) {
      image(img[7], 50, 450);
    } else {
      image(img[6], 50, 450);
    }

    d.rollover(mouseX, mouseY); //placing it after image, puts it on top
    d.drag(mouseX, mouseY);
    d.display();
  } else if (!next1 && state == 2) { // game screen 2 starts here
    background(#37ac63);
    image(img[3], 5, 0);

    if (mouseX < 150 && mouseX > 50 && mouseY < 540 && mouseY > 522) {
      image(img[9], 30, 430);
    } else {
      image(img[8], 30, 430);
    }

    d2.rollover(mouseX, mouseY); //placing it after image, puts it on top
    d2.drag(mouseX, mouseY);
    d2.display();
  } else if (!next2 && state == 3) { // game screen 3 starts here
    background(#37ac63);
    image(img[3], 5, 0);

    if (mouseX < 300 && mouseX > 100 && mouseY < 582 && mouseY > 480) {
      image(img[11], 30, 400);
    } else {
      image(img[10], 30, 400);
    }

    d3.rollover(mouseX, mouseY); //placing it after image, puts it on top
    d3.drag(mouseX, mouseY);
    d3.display();
  } else if (!next3 && state == 4) {
    background(#37ac63);
    image(img[3], 5, 0);

    if (mouseX < 400 && mouseX > 100 && mouseY < 532 && mouseY > 400) {
      image(img[13], 30, 290);
    } else {
      image(img[12], 30, 290);
    }

    d4.rollover(mouseX, mouseY); //placing it after image, puts it on top
    d4.drag(mouseX, mouseY);
    d4.display();
  } else if (!next4 && state == 5) {

    background(#37ac63); 
    image(img[3], 5, 0);

    if (mouseX < 450 && mouseX > 110 && mouseY < 560 && mouseY > 500) {
      image(img[15], 30, 270);
    } else {
      image(img[14], 30, 270);
    }


    d5.rollover(mouseX, mouseY); //placing it after image, puts it on top
    d5.drag(mouseX, mouseY);
    d5.display();
  } else if (!next5 && state == 6) {
    background(#37ac63);
    image(img[1], 0, 0);
    image(img[3], 5, 0);
    fill(#eccd9f);
    textFont(f, 30);
    text("Chris is full up!", 80, 100);
  }
}

void mousePressed () {
  if (state == 1) {
    d.clicked(mouseX, mouseY);
  }
  if (state == 2) {
    d2.clicked(mouseX, mouseY);
  }
  if (state == 3) {
    d3.clicked(mouseX, mouseY);
  }
  if (state == 4) {
    d4.clicked(mouseX, mouseY);
  }
  if (state == 5) {
    d5.clicked(mouseX, mouseY);
  }

  if (!home && state == 0) { //this goes from home screen to first screen
    if (mouseX < 400 && mouseX > 50 && mouseY < 600 && mouseY > 450) {
      state = 1; 
      next = next; //goes to next screen when clicked
    }
  }


  if (mouseX < 70 && mouseX > 5 && mouseY < 40 && mouseY > 4) {
    state = 0; 
    home = home; //goes to home screen when clicked
    setup(); //restarts position of blocks
  }
}


void mouseReleased() {
  boolean duh = true;
  boolean huh = false;
  boolean suh = true;
  boolean buh = false;
  boolean cuh = true;
  boolean nuh = false;

  if (duh && state == 1) {

    d.stopDragging(); // if dragging stops and mouse is in specific parameter, 'disappear' and change to next state


    if (mouseX < 150 && mouseX > 50 && mouseY < 560 && mouseY > 500) {
      d.disappear(); 
      {
        state = 2; //changes different state when mouseReleased
      }
    }
  }

  if (!huh && state == 2) {

    d2.stopDragging();


    if (mouseX < 150 && mouseX > 50 && mouseY < 540 && mouseY > 522) { 

      d2.disappear();
      {
        state = 3;
      }
    }
  }

  if (suh && state == 3) {
    d3.stopDragging();

    if (mouseX < 300 && mouseX > 100 && mouseY < 582 && mouseY > 480) {
      d3.disappear();
      {
        state = 4;
      }
    }
  }

  if (!buh && state == 4) {
    d4.stopDragging();

    if (mouseX < 400 && mouseX > 100 && mouseY < 532 && mouseY > 400) {
      d4.disappear();
      {
        state = 5;
      }
    }
  }

  if (cuh && state == 5) {
    d5.stopDragging();

    if (mouseX < 450 && mouseX > 110 && mouseY < 560 && mouseY > 500) {
      d5.disappear();
      {
        state = 6;
      }
    }
  }
}


/// END OF CODE ///


