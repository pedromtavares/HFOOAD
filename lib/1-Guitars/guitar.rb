
class Guitar

  attr_reader :serial_number, :price, :spec
  attr_writer :price
  
  def initialize(serial_number, price, spec)
    @serial_number = serial_number
    @price = price
    @spec = spec
  end

  def to_s
    "We have a #{@spec.builder} #{@spec.model} #{@spec.num_strings}-string #{@spec.type} guitar: \n #{@spec.back_wood} back and sides, \n #{@spec.top_wood} top. You can have it for only $#{@price}!\n -------- \n"
  end
end
