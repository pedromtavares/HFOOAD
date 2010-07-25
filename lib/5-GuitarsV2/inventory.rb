
class Inventory
  
  def initialize
    @instruments = []
  end

  def add_instrument(serial_number,price,spec)
    @instruments << Instrument.new(serial_number,price,spec)
  end

  def get_instrument(serial_number)
    @instruments.find { |instrument| instrument.serial_number == serial_number}
  end

  def search(instrument_spec)
    @instruments.find_all{ |instrument| instrument.spec.matches(instrument_spec) }
  end
  
end
