class DogDoor
  attr_reader :is_open, :allowed_barks

  def initialize
    @is_open = false
    @allowed_barks = []
  end

  def open
    puts "The dog door opens.\n\n"
    @is_open = true
    Thread.new do
        sleep 2
        self.close
      end
  end

  def close
    puts "The dog door closes.\n\n"
    @is_open = false
  end

  def add_allowed_bark(bark)
    @allowed_barks << bark
  end

end
