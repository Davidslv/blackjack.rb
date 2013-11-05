require 'card'

class Deck
  # Deck class is responsible for:
  #  - Generate a new deck (build deck)
  #  - Deals cards to each player in game
  #  - shuffles deck
  #

  def initialize(params = {})
    @deck = Card::RANKS.product(Card::SUITS)
  end

  def shuffle
    @deck.shuffle!
  end
end
