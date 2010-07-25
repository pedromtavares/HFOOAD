class BarkRecognizer

  def initialize(door)
    @door = door
  end

  def recognize(bark)
    puts "Bark recognizer: Heard a '#{bark}'"
    @door.open
  end

end