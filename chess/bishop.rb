require_relative "sliding_piece.rb"
require_relative "board.rb"

class Bishop < Piece
  attr_reader :symbol
  include SlidingPiece

  def initialize(color, board, pos)
    super
    @symbol = "♝"
  end

  def move_dirs
  end

end

if __FILE__ == $PROGRAM_NAME
  board = Board.new
  bishop = Bishop.new(:black, board, [0,0])
  p bishop.symbol
  display = Display.new(board)
  display.render
end