class Card
  SUITS = %w(d h s c)
  RANKS = %w(2 3 4 5 6 7 8 9 10 J Q K A)

  def initialize
  end

  # def value
  #   case card[0]
  #   when 'A'
  #     # Aces can be 1 or 11
  #     # When hand + 11 > 21 = 1
  #     [1, 11]
  #   when 'J', 'K', 'Q'
  #     10
  #   else
  #     card[0].to_i
  #   end
  # end
end
