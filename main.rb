require 'colorize'
require_relative "board"
require_relative "victory_checker"

Board.dummy_board

while true

  # Player 1
  print ">Choose your move X: ".colorize(:green)
  move = gets.chomp.to_i
  Board.XOBoard(move, 'X')
  
  if VictoryCheck.check_win('X') == true
    puts "~ X won ~".colorize(:yellow)
    break
  end
  

  # Player 2  
  print ">Choose your move O: ".colorize(:red)
  move = gets.chomp.to_i
  Board.XOBoard(move, 'O')
  
  if VictoryCheck.check_win('O') == true
    puts "~ O won ~".colorize(:yellow)
    break
  end

  puts "----------------------"  

end
