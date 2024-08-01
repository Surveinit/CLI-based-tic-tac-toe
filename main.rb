require_relative "board"

while true

  Board.dummy_board

  # Player 1
  print ">Choose your move X: "
  move = gets.chomp.to_i
  Board.XOBoard(move, 'X')
  puts "-----------"

  # Player 2  
  print ">Choose your move O: "
  move = gets.chomp.to_i
  Board.XOBoard(move, 'O')
  puts "-----------"  

end
