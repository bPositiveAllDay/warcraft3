require_relative 'spec_helper'


describe Unit do

  before :each do
    @unit(50, 10) = Unit.new
  end

describe "#dead?"
  it "shouldn't die when health_points are above 0 " do
    @unit.damage(12)
    expect(@unit.health_points).to eq(38)
  end

  # it "starts off with 80 food resources" do
  #   expect(@barracks.food).to eq(80)
  # end


end