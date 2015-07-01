# http://classic.battle.net/war3/human/units/footman.shtml
# ÷
class Footman < Unit
attr_accessor :health_points, :attack_power

  def initialize
    super(60, 10)
    # @health_points = 60
    # @attack_power = 10
    # Need to default the 2 instance variables here
    # Also also give code outside this class access to these variables (via attr_reader, attr_writer or attr_accessor)
  end

  def attack!(enemy)
    until self.dead?
    if enemy.is_a?(Barracks)
      enemy.damage(attack_power/2).ceil
    else enememy.damage(attack_power).ceil
    end
    end
  end

end