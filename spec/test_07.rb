require_relative 'spec_helper'

# A Footman should be able to attack other units as well as receive damage
# Later on, other units such as the peasant will be incapable of attacking

describe Footman do

  before :each do
    @footman = Footman.new
  end

  describe "#attack!" do
    it "should deal 10 (AP) damage to the enemy unit" do
      enemy = Footman.new
      @footman.attack!(enemy)
      enemy.health_points.should eq(50)
      
    end
  end

  describe "#damage" do
    it "should reduce the unit's health_points by the attack_power specified" do
      @footman.damage(4)
      expect(@footman.health_points).to eq(56) # starts at 60
    end
  end

end
