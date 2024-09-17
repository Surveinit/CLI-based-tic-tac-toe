require 'colorize'
require_relative "lib/board"
require_relative "lib/victory_checker"

Board.dummy_board

while true

  # Player 1
  print ">Choose your move X: ".colorize(:green)
  move = gets.chomp.to_i
  puts ""
  Board.XOBoard(move, 'X')
  puts ""
  
  if VictoryCheck.check_win('X') == true
    puts " ~ X won ~ ".colorize(:color => :black, :background => :light_yellow)
    break
  end
  

  # Player 2  
  print ">Choose your move O: ".colorize(:red)
  move = gets.chomp.to_i
  puts ""
  Board.XOBoard(move, 'O')
  puts ""

  if VictoryCheck.check_win('O') == true
    puts " ~ O won ~ ".colorize(:color => :black, :background => :light_yellow)
    break
  end

  puts "-"*22  

end
