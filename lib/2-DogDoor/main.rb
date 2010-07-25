require 'dog_door.rb'
require 'remote.rb'

door = DogDoor.new

remote = Remote.new(door)

puts "Fido barks to go outside..."

thread = remote.press_button

puts "Fido has gone outside..."


puts "Fido's all done..."

sleep(3)

puts "...but he's stuck outside!"

puts "\nFido starts barking..."

puts "...so the remote control is grabbed."

thread = remote.press_button


puts "Fido's back inside"

while thread.alive?
  sleep(0.1)
end
