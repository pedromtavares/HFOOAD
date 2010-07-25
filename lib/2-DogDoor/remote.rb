class Remote

  def initialize(door)
    @door = door
  end

  def press_button
    puts "Pressing the remote control button..."
    if @door.is_open
      @door.close
    else
      @door.open
      Thread.new do
        sleep 2
        @door.close
      end
    end
  end

end
