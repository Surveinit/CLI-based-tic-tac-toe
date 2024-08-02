require_relative "board"
require_relative "victory_checker"

while true

  Board.dummy_board

  # Player 1
  print ">Choose your move X: "
  move = gets.chomp.to_i
  Board.XOBoard(move, 'X')
  
  if VictoryCheck.check_win('X') == true
    return puts "X won"
  end
  
  puts "-----------"

  # Player 2  
  print ">Choose your move O: "
  move = gets.chomp.to_i
  Board.XOBoard(move, 'O')
  VictoryCheck.check_win('X')
  puts "-----------"  

end
