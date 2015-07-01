require_relative 'spec_helper'

describe Unit do

  before :each do
    @unit1 = Unit.new(50, 10)
    @unit2 = Unit.new(50, 10)
  end

describe "#dead?" do
  it "shouldn't be able to attack" do
    @unit1.damage(100)
    @unit1.attack!(@unit2)
    expect(@unit2.health_points).to eq(50)
  end

  it "shouldn't take damage" do
    @unit1.damage(60)
    @unit1.damage(50)
    expect(@unit1.health_points). to eq(-10)
end

end
end