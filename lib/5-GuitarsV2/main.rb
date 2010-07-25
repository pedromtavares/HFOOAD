require 'instrument'
require 'inventory'
require 'attributes'
require 'instrument_spec'

def initialize_inventory(inventory)
  guitar = InstrumentSpec.new(:instrument_type => InstrumentType::GUITAR, :builder => Builder::FENDER, :model => "Stratocastor", :type => Type::ELECTRIC, :back_wood => Wood::ALDER, :top_wood => Wood::ALDER, :num_strings => 6)
  inventory.add_instrument('V95693', 1499.95, guitar)
  mandolin = InstrumentSpec.new(:instrument_type => InstrumentType::MANDOLIN, :builder => Builder::MARTIN, :model => "F-5G", :type => Type::ACOUSTIC, :back_wood => Wood::ALDER, :top_wood => Wood::ALDER, :style => Style::F)
  inventory.add_instrument('V98834', 1299.95, mandolin)
  banjo = InstrumentSpec.new(:instrument_type => InstrumentType::BANJO, :builder => Builder::GIBSON, :model => "RB-3 Wreath", :back_wood => Wood::ALDER, :num_strings => 5)
  inventory.add_instrument('8900231', 2945.95, banjo)
end

inventory = Inventory.new
initialize_inventory(inventory)
client_spec = InstrumentSpec.new(:back_wood => Wood::ALDER)
matching_instruments = inventory.search(client_spec)

unless matching_instruments.empty?
  puts "You might like these instruments: \n"
  matching_instruments.each do |instrument|
    puts "We have a #{instrument.spec.properties[:instrument_type]} with the following properties:"
    instrument.spec.properties.each { |property,value| puts "#{property.to_s.gsub('_',' ').capitalize}: #{value}" }
    puts "You can have this #{instrument.spec.properties[:instrument_type]} for $#{instrument.price}\n---\n"
  end
else
  puts "Sorry, we have nothing for you."
end

