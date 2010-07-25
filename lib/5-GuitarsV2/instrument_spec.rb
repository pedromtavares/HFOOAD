
class InstrumentSpec
  attr_reader :properties
  
  def initialize(properties)
    @properties = properties
  end

  def matches(search)
    search.properties.each { |property, value| return false if value != @properties[property] }
  end

end