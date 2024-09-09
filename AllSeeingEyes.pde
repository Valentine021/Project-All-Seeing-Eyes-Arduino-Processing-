/*
Title of Project: Processing ---> All-Seeing Eyes 
Author: Ghindaoanu Stefan
Date: 11th of May 2024
Hour: 19:35
*/

Eye e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13;

class Eye {
  int x, y;
  int size;
  float angle = 0.0;
  
  Eye(int tx, int ty, int ts) {
    x = tx;
    y = ty;
    size = ts; 
  }
  
  void update(int mx, int my) {
    angle = atan2(my - y, mx - x);
  }
  
  void display() {
    pushMatrix();
    translate(x, y);
    fill(255, 255, 255);
    ellipse(0, 0, size, size);
    rotate(angle);
    fill(37, 166, 145);
    ellipse(size / 4, 0, size / 2, size / 2);
    popMatrix();
  }
}

void setup() {
  size(1440, 900);
  noStroke();
  
  e1 = new Eye(240, 180, 375);
  e2 = new Eye(790, 780, 450);
  e3 = new Eye(1350, 450, 330);
  e4 = new Eye(630, 30, 450);
  e5 = new Eye(950, 375, 400);
  e6 = new Eye(300, 525, 250);
  e7 = new Eye(270, 975, 600);
  e8 = new Eye(1350, 770, 300);
  e9 = new Eye(0, 450, 300); 
  e10 = new Eye(1250, 50, 400);
  e11 = new Eye(950, 50, 160);
  e12 = new Eye(1110, 800, 150);
  e13 = new Eye(590, 430, 300);
}

void draw() {
  background(153, 204, 255);
  strokeWeight(3);
  stroke(0);
  
  if(mousePressed){
    line(mouseX,mouseY,pmouseX,pmouseY);
  }
  
  e1.update(mouseX, mouseY);
  e2.update(mouseX, mouseY);
  e3.update(mouseX, mouseY);
  e4.update(mouseX, mouseY);
  e5.update(mouseX, mouseY);
  e6.update(mouseX, mouseY);
  e7.update(mouseX, mouseY);
  e8.update(mouseX, mouseY);
  e9.update(mouseX, mouseY);
  e10.update(mouseX, mouseY);
  e11.update(mouseX, mouseY);
  e12.update(mouseX, mouseY);
  e13.update(mouseX, mouseY);
  
  e1.display();
  e2.display();
  e3.display();
  e4.display();
  e5.display();
  e6.display();
  e7.display();
  e8.display();
  e9.display();
  e10.display();
  e11.display();
  e12.display();
  e13.display();
}

void mousePressed(){
  save("screenshot.png");
}
