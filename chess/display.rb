require_relative 'board.rb'
require 'colorize'
require 'colorized_string'

class Display

  def display_board(grid)
    grid.each do |row|
      puts row.join(' | ').colorize(:blue)
    end
  end


end


if __FILE__ == $PROGRAM_NAME
  puts "This is blue".colorize(:blue)
  board = Board.new
  # p board.grid
  board.move_piece([0,0], [2,0])
  display = Display.new
  display.display_board(board.grid)
end
