class DogDoor
  attr_reader :is_open

  def initialize
    @is_open = false
  end

  def open
    puts "The dog door opens.\n\n"
    @is_open = true
  end

  def close
    puts "The dog door closes.\n\n"
    @is_open = false
  end
  
end
