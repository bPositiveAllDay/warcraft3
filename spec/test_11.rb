require_relative 'spec_helper'

describe Barracks do

  describe "#initialization" do

  before :each do
    @barracks = Barracks.new
  end

  it "has and knows its HP (health points)" do
    expect(@barracks.health_points).to eq(500)
  end

  # it "has and knows its AP (attack power)" do
  #   expect(@barracks.attack_power).to eq(10)
  # end
end

end
describe Footman do

describe "#attack" do
  before :each do
  @barracks = Barracks.new
  @footman = Footman.new
end

   it "should reduce the barracks's health_points by half a footman's attack_power" do
     @footman.attack!(@barracks)
     expect(@barracks.health_points).to eq(495) # starts at 500
   end
 end
end