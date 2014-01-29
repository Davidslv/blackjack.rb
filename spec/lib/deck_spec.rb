require 'spec_helper'
require './lib/deck'

describe Deck do
  let(:deck) { Deck.new }

  context '#deliver' do
    it "takes one card from the deck" do
      deck.deliver!
      deck.size.should == 51
    end
  end
end
