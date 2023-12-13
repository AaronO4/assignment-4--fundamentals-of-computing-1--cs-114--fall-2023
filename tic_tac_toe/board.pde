  PShape circle;
  int[][] gameBoard = new int[3][3];     
  int moveTokenO = 0;
  int moveTokenX = 1;
  int computerMove;
  boolean playerCurrentTurn = false;
  int computerTurnXCoord = new Random().nextInt(gameBoard.length);
  int computerTurnYCoord = new Random().nextInt(gameBoard.length);
  int counter = 0; 
  
  
Random randomizer = new Random();
  
void nestedForLoopToPopulateGameBoard() {
   for(int row = 0; row<3; row++)
     for(int col = 0; col<3; col++)
       gameBoard[row][col] = ' ';
}
      
void gameLogic() {  
    computerMove = new Random().nextInt(9+1);
    
  //if(playerCurrentTurn == false){
        switch(computerMove) {
    case 1:
    if(gameBoard[0][0] != moveTokenO)
      if(gameBoard[0][0] != moveTokenX) {
         strokeWeight(2);
         line(0,0,165,165);
         line(165,0,0,165);
       gameBoard[0][0] = moveTokenX;
       System.out.println(gameBoard[0][0]);
        } else { 
         //case 1;
       }
       break;
     case 2:
     if(gameBoard[0][1] != moveTokenO) 
       if(gameBoard[0][1] != moveTokenX) {
         strokeWeight(2);
         line(165,0,330,165);
         line(330,0,165,165);
       gameBoard[0][1] = moveTokenX;
       System.out.println(gameBoard[0][1]);
         } else { 
         computerMove = new Random().nextInt(9+1);
       }
       break;
    case 3:
    if(gameBoard[0][2] != moveTokenO) 
      if(gameBoard[0][2] != moveTokenX) {
         strokeWeight(2);
         line(330,0,500,165);
         line(500,0,330,165);
       gameBoard[0][2] = moveTokenX;
       System.out.println(gameBoard[0][2]);
        } else { 
         computerMove = new Random().nextInt(9+1);
       }
       break;
    case 4:
    if(gameBoard[1][0] != moveTokenO) 
    if(gameBoard[1][0] != moveTokenX) {
         strokeWeight(2);
         line(0,165,165,330);
         line(165,165,0,330);
       gameBoard[1][0] = moveTokenX;
       System.out.println(gameBoard[1][0]);
        } else { 
         computerMove = new Random().nextInt(9+1);
       }
       break;
    case 5:
    if(gameBoard[1][1] != moveTokenO) 
    if(gameBoard[1][1] != moveTokenX) {
         strokeWeight(2);
         line(165,165,330,330);
         line(330,165,165,330);
         gameBoard[1][1] = moveTokenX;
       System.out.println(gameBoard[1][1]);
        } else { 
         computerMove = new Random().nextInt(9+1);
       }
       break;
    case 6:
    if(gameBoard[1][2] != moveTokenO) 
      if(gameBoard[1][2] != moveTokenX) {
         strokeWeight(2);
         line(330,165,500,330);
         line(500,165,330,330);
       gameBoard[1][2] = moveTokenX;
       System.out.println(gameBoard[1][2]);
        } else { 
         computerMove = new Random().nextInt(9+1);
       }
       break;
    case 7:
    if(gameBoard[2][0] != moveTokenO) 
    if(gameBoard[2][0] != moveTokenX) {
         strokeWeight(2);
         line(165,330,0,500);
         line(0,330,165,500);
       gameBoard[2][0] = moveTokenX;
       System.out.println(gameBoard[2][0]);
        } else { 
         computerMove = new Random().nextInt(9+1);
       }
       break;
    case 8:
    if(gameBoard[2][1] != moveTokenO)
    if(gameBoard[2][1] != moveTokenX) {
         strokeWeight(2);
         line(165,330,330,500);
         line(330,330,165,500);
       gameBoard[2][1] = moveTokenX;
       System.out.println(gameBoard[2][1]);
        } else { 
         computerMove = new Random().nextInt(9+1);
       }
       break;
    case 9:
    if(gameBoard[2][2] != moveTokenO) 
    if(gameBoard[2][2] != moveTokenX) {
         strokeWeight(2);
         line(500,330,330,500);
         line(330,330,500,500);
       gameBoard[2][2] = moveTokenX;
       System.out.println(gameBoard[2][2]);
        } else { 
         computerMove = new Random().nextInt(9+1);
       }
       break;
       
    default:   // catches numbers outside of 0-8
       computerMove = new Random().nextInt(9+1);
       gameLogic();
    break; 
  }    
  System.out.println(computerMove); 
  
     }
  
void keyPressed() {
  circle = createShape(ELLIPSE, 70, 70, 150, 150);
 //if(playerCurrentTurn == true) {
 if(keyPressed == true)
  switch(key) {
    case '0':
       if(gameBoard[0][0] != moveTokenX) 
             if(gameBoard[0][0] != moveTokenO){
         gameBoard[0][0] = moveTokenO;
       shape(circle, 10, 10);
       System.out.println(gameBoard[0][0]);
       } else { 
         println("Incorrect key pressed! Please select an empty space.");
       }
       break;
    case '1':
    if(gameBoard[0][1] != moveTokenX) 
      if(gameBoard[0][1] != moveTokenO){
       gameBoard[0][1] = moveTokenO;
       shape(circle, 180, 10);
       System.out.println(gameBoard[0][1]);
    } else { 
         println("Incorrect key pressed! Please select an empty space.");
       }
       break;
    case '2':
    if(gameBoard[0][2] != moveTokenX) 
          if(gameBoard[0][2] != moveTokenO){
       gameBoard[0][2] = moveTokenO;
       shape(circle, 350, 10);
       System.out.println(gameBoard[0][2]);
    } else { 
         println("Incorrect key pressed! Please select an empty space.");
       }
       break;
    case '3':
        if(gameBoard[1][0] != moveTokenX) 
              if(gameBoard[1][0] != moveTokenO){
       gameBoard[1][0] = moveTokenO;
       shape(circle, 10, 180);
       System.out.println(gameBoard[1][0]);
        } else { 
         println("Incorrect key pressed! Please select an empty space.");
       }
       break;
    case '4':
       if(gameBoard[1][1] != moveTokenX) 
             if(gameBoard[1][1] != moveTokenO){
       gameBoard[1][1] = moveTokenO;
       shape(circle, 180, 180);
       System.out.println(gameBoard[1][1]);
       } else { 
         println("Incorrect key pressed! Please select an empty space.");
       }
       break;
    case '5':
       if(gameBoard[1][2] != moveTokenX) 
             if(gameBoard[1][2] != moveTokenO){
       gameBoard[1][2] = moveTokenO;
       shape(circle, 350, 180);
       System.out.println(gameBoard[1][2]);
       } else { 
         println("Incorrect key pressed! Please select an empty space.");
       }
       break;
    case '6':
       if(gameBoard[2][0] != moveTokenX) 
             if(gameBoard[2][0] != moveTokenO){
       gameBoard[2][0] = moveTokenO;
       shape(circle, 10, 350);
       System.out.println(gameBoard[2][0]);
       } else { 
         println("Incorrect key pressed! Please select an empty space.");
       }
       break;
    case '7':
       if(gameBoard[2][1] != moveTokenX) 
             if(gameBoard[2][1] != moveTokenO){
       gameBoard[2][1] = moveTokenO;
       shape(circle, 180, 350);
       System.out.println(gameBoard[2][1]);
       } else { 
         println("Incorrect key pressed! Please select an empty space.");
       }
       break;
    case '8':
       if(gameBoard[2][2] != moveTokenX) 
             if(gameBoard[2][2] != moveTokenO){
       gameBoard[2][2] = moveTokenO;
       shape(circle, 350, 350);
       System.out.println(gameBoard[2][2]);
       } else { 
         println("Incorrect key pressed! Please select an empty space.");
       }
       break;
    default:   // catches numbers outside of 0-8
       println("Incorrect key pressed! Please select a key between 0-8"); 
       keyPressed();
       break;  
  }
}
//}

void keyReleased() {
  playerCurrentTurn = true;
  delay(50);
  playerCurrentTurn = false;
  delay(5);

}

public static String winCondition() {
    List topRow = Arrays.asList(0,1,2);
    List middleRow = Arrays.asList(3,4,5);
    List bottomRow = Arrays.asList(6,7,8);
    
    List firstCol = Arrays.asList(0,3,6);
    List middleCol = Arrays.asList(1,4,7);
    List thirdCol = Arrays.asList(2,5,8);
    
    List leftDiagonal = Arrays.asList(0,4,8);
    List rightDiagonal = Arrays.asList(2,4,6);
  
  return "";
}
