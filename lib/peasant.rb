class Peasant < Unit
  attr_reader :attack_power
  attr_accessor :health_points

  def initialize
    @health_points = 35
    @attack_power = 0
  end


  def attack
    puts "I'm useless... I'm a peasant!"
  end

end