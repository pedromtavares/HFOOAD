require 'guitar.rb'
require 'inventory.rb'
require 'attributes.rb'
require 'guitar_spec.rb'

def initialize_inventory(inventory)
  spec = GuitarSpec.new(Builder::FENDER, "Stratocastor", Type::ELECTRIC, 6, Wood::ALDER, Wood::ALDER)
  inventory.add_guitar('V95693', '1499.95'.to_f, spec)
  inventory.add_guitar('V9512', '1549.95'.to_f, spec)
end

inventory = Inventory.new

initialize_inventory(inventory)

what_erin_likes = GuitarSpec.new(Builder::FENDER, "Stratocastor", Type::ELECTRIC, 6, Wood::ALDER, Wood::ALDER)

guitars = inventory.search(what_erin_likes)

unless guitars.empty?
  puts "Erin, you might like these guitars: \n #{guitars.to_s}"
else
  puts "Sorry, Erin, we have nothing for you."
end

