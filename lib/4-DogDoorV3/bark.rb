class Bark
  attr_reader :sound

  def initialize(sound)
    @sound = sound
  end
  
  def equals(bark)
    self.sound==bark.sound
  end

end
