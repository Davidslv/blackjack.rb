require 'spec_helper'
require './game/blackjack'

describe BlackJack do

  context "when the game starts" do
    subject { described_class.new }

    its(:money) { should eql(10) }
    its(:played_games) { should eql(0) }
    its(:deck) { have(52).items }
  end

  context "play the game" do
    subject { described_class.new.play }

    its(:croupier_cards) { have(2).items }
    its(:player_cards) { have(2).items }
    its(:deck) { have(48).items }
  end
end
