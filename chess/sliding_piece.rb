module SlidingPiece
  HORIZONTAL_DIRS = [
    [0, 1],
    [1, 0],
    [0, -1],
    [-1, 0]
  ]

  DIAGONAL_DIRS = [
    [1,1],
    [1, -1],
    [-1, 1], 
    [-1, -1]
  ]

  def horizontal_dirs(start_pos)
    horizontal_arr = []
    HORIZONTAL_DIRS.each do |diff_pos|
      maybe_pos = [start_pos[0] + diff_pos[0], start_pos[1] + diff_pos[1]]
      # until maybe_pos.
      # if it's a valid pos
      # if maybe_pos is valid, maybe we want to run grow_unbl
    end
  end

  def diagonal_dirs
  end
  
  def moves(dirs)
  end

end