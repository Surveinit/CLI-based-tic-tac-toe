require_relative "board"

class VictoryCheck

  WIN_PATTERNS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
]

  def initialize(board)
    @board = board
  end

  def check_win(symbol)
    flattened_board = @board.flatten_board

    WIN_PATTERNS.each do |pattern|
      return true if pattern.all? {|index| flattened_board[index] == symbol}
    end
    false
  end
end
