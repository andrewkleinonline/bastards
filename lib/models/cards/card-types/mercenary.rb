class Mercenary < Card

  def initialize
    @name = "Mercenary"
    @card_id = 4
    @power = 3
  end

  def ability
    super
    #have to discard a card
  end
end
