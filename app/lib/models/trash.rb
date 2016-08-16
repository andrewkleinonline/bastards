class Trash

  attr_accessor :cards, :size

  def initialize
    @cards = []

  end

  def add_card(card)
    self.cards << card
  end

end
