require 'dog_door.rb'
require 'remote.rb'
require 'bark_recognizer.rb'

door = DogDoor.new

remote = Remote.new(door)

recognizer = BarkRecognizer.new(door)

#Simulate the hardware hearing a bark
puts "Fido starts barking."
thread = recognizer.recognize("Woof")

puts "Fido has gone outside..."

puts "Fido's all done..."

sleep(3)

puts "...but he's stuck outside!"

puts "\nFido starts barking..."
thread = recognizer.recognize("Woof")


puts "Fido's back inside"

while thread.alive?
  sleep(0.1)
end
