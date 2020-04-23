class TicTacToe

  attr_reader :board
  
  def initialize 
    @board = "---,---,---"
  end

  def move(x)
    @board = x
    print_board
  end

  def print_board
    @board
  end

end