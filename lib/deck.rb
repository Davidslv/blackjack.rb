class Deck
  SUITS = [:clubs, :diamonds, :spades, :hearts]
  VALUES = (2...14).to_a

  def initialize
    @deck = SUITS.map do |suit|
      VALUES.map do |value|
        Card.new(suit, value)
      end
    end.flatten
  end

  def deliver
    @deck.shuffle!.pop
  end
end
