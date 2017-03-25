var chessBoard = function(size) {
  var board = "";
  var boardRow = "";
  for (row = 0; row < size; row++) {
    for (col = 0; col < size; col++) {
      if (row % 2 == 0) {
        col % 2 == 0 ? boardRow += "#" : boardRow += " ";
      } else {
        col % 2 == 0 ? boardRow += " " : boardRow += "#";
      }
    }
    board += (boardRow + "\n");
    boardRow = "";
  }
  return board;
}

console.log(chessBoard(8));
