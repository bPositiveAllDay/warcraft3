class Barracks

attr_accessor :gold, :food, :footman

  def initialize
    @gold = 1000
    @food = 80
    # @footmen = []
  end
  
  
  # def enough_resources?
  #   if ((@food >= 2) && (@gold >= 135))
  #     return true
  #   else 
  #     false
  #   end
  # end


  def can_train_footman?
     food >= 2 && gold >= 135

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