require 'card'
require 'hand'
require 'deck'

class Blackjack
  def start
    @deck = Deck.new
    @player_hand = deal_hand
    @dealer_hand = deal_dealer_hand
  end

  def accept_card
    @player_hand << @deck.deliver
  end

  def won?
    @player_hand.valid? && @player_hand >= @dealer_hand
  end
end
