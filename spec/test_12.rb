require_relative 'spec_helper'


describe Unit do

  before :each do
    @unit = Unit.new(50, 100)
  end

describe "#dead?"
  it "shouldn't die when health_points are above 0 " do
    @unit.damage(12)
    expect(@unit.dead?).to eq(false)
  end

  it "should die when health_points are below 0 " do
    @unit.damage(100)
    expect(@unit.dead?).to eq(true)
  end



end