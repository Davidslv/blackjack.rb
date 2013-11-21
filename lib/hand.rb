class Hand
  include Comparable

  def initialize(cards)
    @cards = cards
  end

  def valid?
    total < 22
  end

  def <=>(other)
    self.total <=> other.total
  end

  def <<(card)
    @cards << card
  end

  def total
    count = 0
    @cards.each do |card|
      count += card.value
    end
    count
  end
end
