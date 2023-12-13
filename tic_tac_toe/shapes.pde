void ticTacToeBoard() {
  strokeWeight(2);
  line(width/3, 0, width/3, height); // first vertical line
  line(0, height/3, width, height/3); // first horizontal line
  line(width * 2/3, 0, height * 2/3, width); // second vertical line
  line(0, height * 2/3, width, height * 2/3); // second horizontal line
}

   
void CROSS() {
  line(0,0,165,165);
  line(165,0,0,165);
}


     //for(int row = 0; row<3; row++)
     //  for(int col = 0; col<3; col++)
     //    gameBoard[row][col] = ' ';
