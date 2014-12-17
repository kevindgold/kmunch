// http://www.learningprocessing.com/examples/chapter-5/draggable-shape/
// Daniel Shiffman
// Used as foundation, modified slightly


class Draggable {
  boolean dragging = false; 
  boolean rollover = false; 

  float x, y, w, h;        
  float offsetX, offsetY; 

  Draggable(float tempX, float tempY, float tempW, float tempH) {
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
    offsetX = 0;
    offsetY = 0;
  }



  
  void display() {
    stroke(0);
    if (dragging) fill (#f1df17);
    else if (rollover) fill(#c0b31f);
    else fill(175, 200);
    rect(x, y, w, h);
  }

 
  void clicked(int mx, int my) {
    if (mx > x && mx < x + w && my > y && my < y + h) {
      dragging = true;
      offsetX = x-mx;
      offsetY = y-my;
    }
  }


  void rollover(int mx, int my) {
    if (mx > x && mx < x + w && my > y && my < y + h) {
      rollover = true;
    } else {
      rollover = false;
    }
  }



void disappear() { 
  dragging = false;
  rect(x-=1000, y-=1000,w,h);
}



  void stopDragging() {
    dragging = false;
    rect(x,y+1000,w,h);
  }


  void drag(int mx, int my) {
    if (dragging) {
      x = mx + offsetX;
      y = my + offsetY;
    }
  }
}

