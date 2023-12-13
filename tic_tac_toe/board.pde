public void gameLogic() {

}
  
void keyPressed() {
  PShape circle;
  circle = createShape(ELLIPSE, 70, 70, 150, 150);
  
     char[][] gameBoard = new char[3][3];
     for(int row = 0; row<3; row++)
       for(int col = 0; col<3; col++)
         gameBoard[row][col] = ' ';

  switch(key) {
    case '0':
       gameBoard[0][0] = 'O';
       shape(circle, 10, 10);
       System.out.println(gameBoard[0][0]);
       delay(50);
       break;
    case '1':
       gameBoard[0][1] = 'O';
       shape(circle, 180, 10);
       System.out.println(gameBoard[0][1]);
       delay(50);
       break;
    case '2':
       gameBoard[0][2] = 'O';
       shape(circle, 350, 10);
       System.out.println(gameBoard[0][2]);
       delay(50);
       break;
    case '3':
       gameBoard[1][0] = 'O';
       shape(circle, 10, 180);
       System.out.println(gameBoard[1][0]);
       delay(50);
       break;
    case '4':
       gameBoard[1][1] = 'O';
       shape(circle, 180, 180);
       System.out.println(gameBoard[1][1]);
       delay(50);
       break;
    case '5':
       gameBoard[1][2] = 'O';
       shape(circle, 350, 180);
       System.out.println(gameBoard[1][2]);
       delay(50);
       break;
    case '6':
       gameBoard[2][0] = 'O';
       shape(circle, 10, 350);
       System.out.println(gameBoard[2][0]);
       delay(50);
       break;
    case '7':
       gameBoard[2][1] = 'O';
       shape(circle, 180, 350);
       System.out.println(gameBoard[2][1]);
       delay(50);
       break;
    case '8':
       gameBoard[2][2] = 'O';
       shape(circle, 350, 350);
       System.out.println(gameBoard[2][2]);
       delay(50);
       break;
    default:             // catches numbers outside of 0-8
       println("Incorrect key pressed! Please select a key between 0-8"); 
       break;
  }
  }
