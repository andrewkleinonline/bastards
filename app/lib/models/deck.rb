class Deck

#this will contain all the cards, in an array
#early thought: the cards are randomized at the beginning of the game into the deck, and then drawing comes from top of deck
##this more closely models real life, and also opens the possibility for items that interact with cards in the deck
  attr_accessor :cards, :initial_size, :size

  def initialize(initial_size:)
    @cards = []
    @initial_size = initial_size
  end

  def size
    @cards.size
  end

end
