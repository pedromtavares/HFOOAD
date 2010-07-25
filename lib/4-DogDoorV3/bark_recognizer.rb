class BarkRecognizer

  def initialize(door)
    @door = door
  end

  def recognize(bark)
    puts "Bark recognizer: Heard a '#{bark.sound}'"
    if @door.allowed_barks.find {|allowed| allowed.equals(bark)}
      @door.open
    else
      puts "This dog is not allowed."
    end
  end

end
