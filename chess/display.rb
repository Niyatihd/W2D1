require_relative 'board.rb'
require_relative 'cursor.rb'
require 'colorize'
require 'colorized_string'

class Display
  attr_reader :cursor
  def initialize(board)
    @board = board
    @cursor = Cursor.new([0,0], board)
  end

  def render
    system("clear")
    @board.grid.each_index do |i| # if row == cursor_pos[0]
      @board.grid.each_index do |j| 
        if [i, j] == @cursor.cursor_pos
          print @board[[i, j]].to_s.on_red.blink #colorize(:background => :yellow)
        else
          print @board[[i, j]].to_s
        end
      end
      print "\n"
    end
  end
end


if __FILE__ == $PROGRAM_NAME
#   # puts "This is blue".colorize(:blue)
#   board = Board.new
#   # p board.grid
# #   board.move_piece([0,0], [2,0])
#   display = Display.new(board)
#   display.render
#   display.cursor.get_input
#   display.render
#   display.cursor.get_input
#   display.render
end
