require_relative "piece.rb"
require_relative "display.rb"


class Board
  def self.populate_board
    grid = Array.new(8) { Array.new(8) }
    populate_rows = [0,1,6,7]

    grid.each_with_index do |row, i|
      grid.each_index do |j|
        if populate_rows.include?(i)
          row.map! { |el| el = Bishop.new(:black, self, [i, j]) } 
        else
          row.map! { |el| el = NullPiece.instance }
        end
      end
    end

    grid
  end

  attr_reader :grid

  def initialize(grid = Board.populate_board)
    @grid = grid
  end

  def valid_move?(start_pos, end_pos)
    return false if self[start_pos].nil?
    (start_pos + end_pos).all? { |num| (0..7).include?(num) }
    # valid_pos?(start_pos + end_pos)
  end

  def valid_pos?(pos)
    pos.all? { |num| (0..7).include?(num) }
  end

  def move_piece(start_pos, end_pos) # pos = [0,1]
    raise "Invalid move!" unless valid_move?(start_pos, end_pos)

    current_piece = self[start_pos]
    self[end_pos] = current_piece
    self[start_pos] = nil
  end

  def [](pos)
    grid[pos[0]][pos[1]]
  end

  def []=(pos, value)
    grid[pos[0]][pos[1]] = value
  end


  

end

if __FILE__ == $PROGRAM_NAME
  board = Board.new
  display = Display.new(board)
  p display.render
end
