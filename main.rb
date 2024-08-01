require_relative "board"

# Board.print_board
# Board.XOBoard(3)
# Board.XOBoard(1)

Board.dummy_board
print "Choose your move: "
move = gets.chomp.to_i
Board.XOBoard(move)