class Deck
  SUITS  = [:clubs, :diamonds, :spades, :hearts]
  VALUES = %w(2 3 4 5 6 7 8 9 10 J Q K A)

  def initialize
    @deck = SUITS.map do |suit|
      VALUES.map do |value|
        Card.new(suit, value)
      end
    end.flatten
  end

  def deliver!
    @deck.shuffle!.pop
  end

  def size
    @deck.size
  end
end
