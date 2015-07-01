class Unit
  attr_accessor :attack_power
  attr_reader :health_points
  def initialize(health_points, attack_power)
    @health_points = health_points
    @attack_power = attack_power
  end

  def dead?
    @health_points <= 0
  end

  def attack!(enemy)    
    until self.dead?
      enemy.damage(attack_power).ceil
    end
  end

  def damage(attack_power)
    until @health_points <= 0 do
      @health_points -= attack_power
    end
  end

end