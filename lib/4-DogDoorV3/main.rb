require 'dog_door.rb'
require 'remote.rb'
require 'bark_recognizer.rb'
require 'bark.rb'

door = DogDoor.new

door.add_allowed_bark(Bark.new('rowlf'))
door.add_allowed_bark(Bark.new('rooowlf'))
door.add_allowed_bark(Bark.new('rawlf'))
door.add_allowed_bark(Bark.new('woof'))


remote = Remote.new(door)

recognizer = BarkRecognizer.new(door)

#Simulate the hardware hearing a bark
puts "Fido starts barking."
thread = recognizer.recognize(Bark.new("rowlf"))

puts "Fido has gone outside..."

puts "Fido's all done..."

sleep(3)

puts "...but he's stuck outside!"

#Simulate the hardware hearing a bark that isn't Fido
small_bark = Bark.new("yip")
thread = recognizer.recognize(small_bark)

sleep(3)

#Simulate the hardware hearing a bark again
puts "\nFido starts barking..."
thread = recognizer.recognize(Bark.new("rooowlf"))

puts "Fido's back inside"

while thread.alive?
  sleep(0.1)
end
