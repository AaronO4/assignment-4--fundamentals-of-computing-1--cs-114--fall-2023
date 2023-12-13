import java.util.Random;

void setup() {
  size(500, 500);
  background(255, 255, 255);
  ticTacToeBoard();
  nestedForLoopToPopulateGameBoard();
  System.out.println("Press a number from 0 to 8");

}

void draw() {
  playerCurrentTurn = false;
  gameLogic();
  computerMakesAMove();
  playerCurrentTurn = true;
  if(keyPressed == true){
      keyPressed();
  }
  delay(40);
}
