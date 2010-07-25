
class UnitGroup

  attr_reader :units

  def initialize(units)
    @units = {}
    units.each do |unit|
      @units[unit.id] = unit
    end
  end

  def add_unit(unit)
    @units[unit.id] = unit
  end

  def remove_unit(arg)
    if arg.is_a?(Unit)
      @units.delete(arg.id)
    else
      @units.delete(arg)
    end
  end

  def get_unit(id)
    @units[id]
  end
  

end
