
class Inventory
  
  def initialize
    @guitars = []
  end

  def add_guitar(serial_number,price,spec)
    guitar = Guitar.new(serial_number,price,spec)
    @guitars << guitar
  end

  def get_guitar(serial_number)
    @guitars.find { |guitar| serial_number == guitar.serial_number}
  end

  def search(guitar_spec)
    matches = []
    @guitars.each do |guitar|
      if guitar_spec.matches(guitar.spec)
        matches << guitar
      end
    end
    matches
  end
end
