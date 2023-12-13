  PShape circle;
  char[][] gameBoard = new char[3][3];     
  char moveTokenO = 'O';
  char moveTokenX = 'X';
  int computerTurn;
  boolean playerCurrentTurn = false;
  int computerTurnXCoord = new Random().nextInt(gameBoard.length);
  int computerTurnYCoord = new Random().nextInt(gameBoard.length);
  
void nestedForLoopToPopulateGameBoard() {
   for(int row = 0; row<3; row++)
     for(int col = 0; col<3; col++)
       gameBoard[row][col] = ' ';
}
  
void gameLogic() {
   computerTurnXCoord = new Random().nextInt(gameBoard.length);
   computerTurnYCoord = new Random().nextInt(gameBoard.length);
   System.out.println(gameBoard[computerTurnXCoord][computerTurnYCoord]);
  
  if(playerCurrentTurn == false)
    if((gameBoard[computerTurnXCoord][computerTurnYCoord] != moveTokenX) && (gameBoard[computerTurnXCoord][computerTurnYCoord] != moveTokenO)) {
        gameBoard[computerTurnXCoord][computerTurnYCoord] = moveTokenX;
        computerTurn = ((computerTurnXCoord + 1) * (computerTurnYCoord + 1) - 1);
    } else {
         computerTurnXCoord = new Random().nextInt(gameBoard.length);
         computerTurnYCoord = new Random().nextInt(gameBoard.length);
         System.out.println("Uh Oh");
         gameBoard[computerTurnXCoord][computerTurnYCoord] = moveTokenX;
    }
}

void computerMakesAMove() {  
  switch(computerTurn) {
    case '0':
       gameBoard[0][0] = moveTokenX;
         strokeWeight(2);
         line(0,0,165,165);
         line(165,0,0,165);
       System.out.println(gameBoard[0][0]);
       delay(50);
       break;
     case '1':
       gameBoard[0][1] = moveTokenX;
         strokeWeight(2);
         line(165,0,330,165);
         line(330,0,165,165);
       System.out.println(gameBoard[0][1]);
       delay(50);
       break;
    case '2':
       gameBoard[0][2] = moveTokenX;
         strokeWeight(2);
         line(330,0,500,165);
         line(500,0,330,165);
       System.out.println(gameBoard[0][2]);
       delay(50);
       break;
    case '3':
       gameBoard[1][0] = moveTokenX;
         strokeWeight(2);
         line(0,165,165,330);
         line(165,165,0,330);
       System.out.println(gameBoard[1][0]);
       delay(50);
       break;
    case '4':
       gameBoard[1][1] = moveTokenX;
         strokeWeight(2);
         line(165,165,330,330);
         line(330,165,165,330);
       System.out.println(gameBoard[1][1]);
       delay(50);
       break;
    case '5':
       gameBoard[1][2] = moveTokenX;
         strokeWeight(2);
         line(330,165,500,330);
         line(500,165,330,330);
       System.out.println(gameBoard[1][2]);
       delay(50);
       break;
    case '6':
       gameBoard[2][0] = moveTokenX;
         strokeWeight(2);
         line(165,330,0,500);
         line(0,330,165,500);
       System.out.println(gameBoard[2][0]);
       delay(50);
       break;
    case '7':
       gameBoard[2][1] = moveTokenX;
         strokeWeight(2);
         line(165,330,330,500);
         line(330,330,165,500);
       System.out.println(gameBoard[2][1]);
       delay(50);
       break;
    case '8':
       gameBoard[2][2] = moveTokenX;
         strokeWeight(2);
         line(500,330,330,500);
         line(330,330,500,500);
       System.out.println(gameBoard[2][2]);
       delay(50);
       break;
 }
}
  
void keyPressed() {
  circle = createShape(ELLIPSE, 70, 70, 150, 150);
 if(playerCurrentTurn == true) {
 if(keyPressed == true)
  switch(key) {
    case '0':
       gameBoard[0][0] = moveTokenO;
       shape(circle, 10, 10);
       System.out.println(gameBoard[0][0]);
       delay(50);
       break;
    case '1':
       gameBoard[0][1] = moveTokenO;
       shape(circle, 180, 10);
       System.out.println(gameBoard[0][1]);
       delay(50);
       break;
    case '2':
       gameBoard[0][2] = moveTokenO;
       shape(circle, 350, 10);
       System.out.println(gameBoard[0][2]);
       delay(50);
       break;
    case '3':
       gameBoard[1][0] = moveTokenO;
       shape(circle, 10, 180);
       System.out.println(gameBoard[1][0]);
       delay(50);
       break;
    case '4':
       gameBoard[1][1] = moveTokenO;
       shape(circle, 180, 180);
       System.out.println(gameBoard[1][1]);
       delay(50);
       break;
    case '5':
       gameBoard[1][2] = moveTokenO;
       shape(circle, 350, 180);
       System.out.println(gameBoard[1][2]);
       delay(50);
       break;
    case '6':
       gameBoard[2][0] = moveTokenO;
       shape(circle, 10, 350);
       System.out.println(gameBoard[2][0]);
       delay(50);
       break;
    case '7':
       gameBoard[2][1] = moveTokenO;
       shape(circle, 180, 350);
       System.out.println(gameBoard[2][1]);
       delay(50);
       break;
    case '8':
       gameBoard[2][2] = moveTokenO;
       shape(circle, 350, 350);
       System.out.println(gameBoard[2][2]);
       delay(50);
       break;
    default:   // catches numbers outside of 0-8
       println("Incorrect key pressed! Please select a key between 0-8"); 
       delay(50);
       break;  
  }
}
}
