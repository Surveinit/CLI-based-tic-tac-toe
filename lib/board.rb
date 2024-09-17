class Board
  @@row1 = [1,2,3]
  @@row2 = [4,5,6]
  @@row3 = [7,8,9]

  def flatten_board
    @@row1+@@row2+@@row3
  end

  def dummy_board
    puts "1 | 2 | 3"   
    puts "4 | 5 | 6"    
    puts "7 | 8 | 9"  
  end
  
  def self.color(cell)
    case cell 
    when 'X'
      cell.colorize(:green)
    when 'O'
      cell.colorize(:red)
    else
      cell.to_s
    end
  end

  def self.print_board
    puts @@row1.map {|cell| color(cell)}.join(" | ")
    puts @@row2.map {|cell| color(cell)}.join(" | ")
    puts @@row3.map {|cell| color(cell)}.join(" | ")
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

