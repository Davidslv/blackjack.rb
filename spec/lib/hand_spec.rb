require 'spec_helper'

require './lib/hand'

describe Hand do
  let(:hand) { Hand.new([Card.new(:clubs, 2), Card.new(:diamonds, 10)])}

  describe "#total" do
    it "outputs the total value of the hand" do
      hand.total.should == 12
    end
  end

end
