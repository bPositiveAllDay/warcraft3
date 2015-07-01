require_relative 'spec_helper'

describe Barracks do

  describe "#initialization" do

    before :each do
      @barracks = Barracks.new
    end

    it "has and knows its amount of lumber." do
      expect(@barracks.lumber).to eq(500)
    end

  end

end