class Game

  def start_game(player)
    @player1 = player
    create_cpu_player
    populate_deck
    binding.pry
  end

  def create_cpu_player
    @player2 = CPU.new
  end

  def populate_deck
    @deck = Deck.new(initial_size: 20)

    @deck.initial_size.times do
      new_card_class = Card.library.values.sample
      new_card = new_card_class.new
      @deck.cards << new_card
    end
  end




end
