require 'tile'

class Board

  def initialize(width,height)
    @board = Array.new(width){ Array.new(height).fill(Tile.new) }
  end

  def tile(x,y)
    @board[x][y]
  end

  def add_unit(unit,x,y)
    @board[x][y].add_unit(unit)
  end

  def remove_unit(unit,x,y)
    @board[x][y].remove_unit(unit)
  end

  def remove_units(x,y)
    @board[x][y].remove_units
  end

  def get_units(x,y)
    @board[x][y].units
  end
  
end