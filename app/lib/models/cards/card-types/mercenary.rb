class Mercenary < Card

  def initialize
    @name = "Mercenary"
    @number = 4
    @power = 3
  end

  def ability
    super
    #have to discard a card
  end
end
