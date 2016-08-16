class Player


  attr_accessor :health, :hand, :name, :is_human

  def initialize(name:)
    @name = name
    @health = 20
    @hand = Hand.new() #can change initial hand size here, default is 5
  end

  def draw_card(deck)
    self.hand.draw_card(deck)
  end

  def cards
    self.hand.cards
  end

end
