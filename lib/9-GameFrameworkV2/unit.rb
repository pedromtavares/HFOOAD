
class Unit

  attr_accessor :type, :name

  attr_reader :id, :weapons

  def initialize(id)
    @id = id
  end

  def get_property(key)
    if @properties.nil?
      raise "Are you mad? There are no properties!"
    end

    if @properties[key].nil?
      raise "No value was assigned to this property!"
    else
      @properties[key]
    end
  end

  def set_property(key, value)
    @properties ||= {}
    @properties[key] = value
  end

  def add_weapon(weapon)
    if weapon.nil? || weapon == ''
      raise "You're adding an invalid weapon!"
    else
      @weapons ||= []
      @weapons << weapon
    end
  end

end
