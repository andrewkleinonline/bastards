class Hand

  attr_accessor :cards

  def initialize(initial_size: 5)
    @cards = []
    @initial_size = initial_size

    #should take in card objects (thief, swindler, etc.) and hold them in an array
  end

  def initial_draw(deck)
    @initial_size.times do
      draw_card(deck)
    end
  end

  def draw_card(deck)
    self.cards << deck.cards.first #how to access deck from in here???
    deck.cards.shift
  end

  def size
    @cards.size
  end



end
