require_relative 'spec_helper'


describe SiegeEngine do
  describe "#attack" do
    before :each do
      @barracks = Barracks.new
      @siege_engine = SiegeEngine.new
    end

     it "should reduce the barracks's health_points by double a SeigeEngine's attack_power" do
       @siege_engine.attack!(@barracks)
       expect(@barracks.health_points).to eq(400)
        # starts at 500
     end
   end
end
