
class Tile

  attr_reader :units

  def initialize
    @units = []
  end

  def add_unit(unit)
    @units << unit
  end

  def remove_unit(unit)
    @units.delete(unit)
  end

  def remove_units
    @units.clear
  end

end
