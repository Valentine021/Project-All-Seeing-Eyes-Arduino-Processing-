/*

  Button Mouse Control with Arduino for Museum's Night!

  For Arduino Leonardo

  Controls the mouse from five pushbuttons on an Arduino Leonardo.

  Hardware:

  - five pushbuttons attached to D2, D3, D4, D5, D6

  This example code is in the public domain.

  https://www.arduino.cc/en/Tutorial/ButtonMouseControl
*/

#include "Mouse.h"

const int upButton = 2;
const int downButton = 3;
const int leftButton = 4;
const int rightButton = 5;
const int mouseButton = 6;

int range = 10;              
int responseDelay = 10;    

void setup() {
  pinMode(upButton, INPUT);
  pinMode(downButton, INPUT);
  pinMode(leftButton, INPUT);
  pinMode(rightButton, INPUT);
  pinMode(mouseButton, INPUT);

  Mouse.begin();
}

void loop() {
  int upState = digitalRead(upButton);
  int downState = digitalRead(downButton);
  int rightState = digitalRead(rightButton);
  int leftState = digitalRead(leftButton);
  int clickState = digitalRead(mouseButton);

  int  xDistance = (leftState - rightState) * range;
  int  yDistance = (upState - downState) * range;

  if ((xDistance != 0) || (yDistance != 0)) {
    Mouse.move(xDistance, yDistance, 0);
  }

  if (clickState == HIGH) {
    if (!Mouse.isPressed(MOUSE_LEFT)) {
      Mouse.press(MOUSE_LEFT);
    }
  } else {
    if (Mouse.isPressed(MOUSE_LEFT)) {
      Mouse.release(MOUSE_LEFT);
    }
  }

  delay(responseDelay);
}