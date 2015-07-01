class SiegeEngine < Unit
  def initialize
    super(400, 50)
  end


  def damage(attack_power)
    until @health_points <= 0 do
      @health_points -= attack_power
    end
  end


  def attack!(enemy)
    if !self.dead?
      if enemy.is_a?(Barracks)
        enemy.damage(@attack_power * 2)
      else 
        enemy.damage(@attack_power).ceil
      end
    end
  end
end
