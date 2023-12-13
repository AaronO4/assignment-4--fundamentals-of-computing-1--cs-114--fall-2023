import java.util.*;

void setup() {
  size(500, 500);
  background(255, 255, 255);
  ticTacToeBoard();
  nestedForLoopToPopulateGameBoard();
  System.out.println("Press a number from 0 to 8");

}

void draw() {
  if(keyPressed == true){    
      keyPressed();
      keyReleased(); 
      delay(100);
      gameLogic();
 
      winCondition();
      if(hasGameEnded == true)
      System.exit(0); 
      
      loseCondition();
      if(hasGameEnded == true)
      System.exit(0); 
      
      if(hasGameEnded == false)
      System.out.println("Game is still in play!");
}
  }
      
