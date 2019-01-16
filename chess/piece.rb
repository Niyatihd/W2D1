require "singleton"

class Piece

  attr_accessor :pos
  
  def initialize(color, board, pos)
    @color, @board, @pos = color, board, pos
    @symbol = "♟"
  end

  def to_s
    " #{@symbol} "
  end

  def valid_moves
  end

end

class NullPiece < Piece
  include Singleton

  def initialize
  end

  def to_s
    "   "
  end
end
