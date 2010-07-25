
class Instrument

  attr_reader :serial_number, :price, :spec
  attr_writer :price
  
  def initialize(serial_number, price, spec)
    @serial_number = serial_number
    @price = price
    @spec = spec
  end

end