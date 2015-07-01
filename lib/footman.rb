# http://classic.battle.net/war3/human/units/footman.shtml
# ÷
class Footman < Unit
attr_accessor :health_points, :attack_power

  def initialize
    super(60, 10)
  end

  def attack!(enemy)
    if !self.dead?
      if enemy.is_a?(Barracks)
        enemy.damage(attack_power/2).ceil
      else enemy.damage(attack_power)
      end
    end
  end

end