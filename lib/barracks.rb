class Barracks

attr_accessor :gold, :food, :footman, :health_points, :lumber

  def initialize
    @gold = 1000
    @food = 80
    @health_points = 500
    @lumber = 500
  end
  

  def damage(attack_power)
    @health_points -= attack_power 
  end


  def can_train_footman?
     food >= 2 && gold >= 135
  end      
  

  def can_build_seige_engine?
     food >= 3 && gold >= 200 && lumber >=60
  end      


  def build_seige_engine
    if can_build_seige_engine?
      @gold -= 200
      @food -=3
      @lumber -= 60
      SeigeEngine.new
    end
  end

  
  def train_footman
    if can_train_footman?
      @gold -= 135
      @food -=2
      Footman.new
    end
  end


  def can_train_peasant?
     food >= 5 && gold >= 90
  end      


  def train_peasant
    if can_train_peasant?
      @gold -= 90
      @food -=5
      Peasant.new
    end
  end


end