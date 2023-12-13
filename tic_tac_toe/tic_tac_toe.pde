import java.util.*;
PShape CIRCLE;
PShape CROSS;


void setup() {
  size(500, 500);
  background(255, 255, 255);
  ticTacToeBoard();

}

void draw() {
  gameLogic();
  keyPressed();
  System.out.println("Press a number from 0 to 8");
  delay(40);
}
