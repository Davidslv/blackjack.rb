class BlackJack
  attr_reader :money, :played_games, :deck

  # Game Development
  #  - screen with:
  #     - total of money
  #     - options for amount to bet
  #     - options for splitting cards
  #     - number of games played
  #     - cropier

  # Responsible to load all the necessary setup
  def initialize
    @money         = 10
    @played_games  = 0
    @suits         = %w[d h s c]
    @ranks         = %w(2 3 4 5 6 7 8 9 10 J Q K A)
    @croupier_turn = false

    @deck = @suits.map do |suit|
      @ranks.map do |rank|
        "#{rank}#{suit}"
      end
    end.flatten 
  end

  def play
    deal
    
    if blackjack?
      p 'BlackJack!!!'
      return
    end

    loop do
      if player_score >= 21
        p "Croupier's hand: #{@croupier_cards.join(', ')}"
        p "Your hand: #{@player_cards.join(', ')}"
        p "Your score: #{player_score}"
        break
      end

      p "Croupier's hand: #{hide_croupier_card}"
      p "Your hand: #{@player_cards.join(', ')}"
      p "Your score: #{player_score}"

      player_wants_card
    end
  end

  private

  def blackjack?
    player_score == 21
  end

  def deal
    @croupier_cards = @deck.sample(2)
    @player_cards   = @deck.sample(2)
    @deck           = @deck - @croupier_cards - @player_cards
  end

  def croupier_turn?
    !!@croupier_turn
  end

  def player_score
    score = 0
    @player_cards.each do |card|
      score += card_value(card)
    end
    score
  end

  def player_wants_card
    @player_cards << ask_card
  end

  def ask_card
    @deck.shuffle.pop
  end

  def card_value(card)
    return 11 if card[0] == 'A'

    case card[0]
    when 'J', 'K', 'Q'
      10
    else
      card[0].to_i
    end
  end

  def hide_croupier_card
    "#{@croupier_cards.first}, X"
  end
end

BlackJack.new.play
