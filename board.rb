class Board
  @@row1 = [1,2,3]
  @@row2 = [4,5,6]
  @@row3 = [7,8,9]

  def self.flatten_board
    @@row1+@@row2+@@row3
  end

  def self.dummy_board
    puts "1 | 2 | 3"   
    puts "4 | 5 | 6"    
    puts "7 | 8 | 9"  
  end
  
  def self.print_board
    puts @@row1.join(" | ")
    puts @@row2.join(" | ")
    puts @@row3.join(" | ")
  end

  def self.XOBoard(number, symbol)
    if @@row1.include?(number)
      @@row1[@@row1.index(number)] = symbol

    elsif @@row2.include?(number)
      @@row2[@@row2.index(number)] = symbol
    
    elsif @@row3.include?(number)
      @@row3[@@row3.index(number)] = symbol

    else
      puts "Invalid move"

    end

    self.print_board

  end

end

# Check

# board1 = Board.new
# board1.print_board