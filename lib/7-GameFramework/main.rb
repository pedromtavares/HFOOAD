require 'board'

board = Board.new(10,10)

board.add_unit('tank',4,5)

board.add_unit('army',4,5)

board.add_unit('artillery',4,5)

puts board.get_units(4,5)

board.remove_unit('tank',4,5)

puts board.get_units(4,5)