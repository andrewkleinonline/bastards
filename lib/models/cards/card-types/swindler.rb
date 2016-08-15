class Swindler < Card

  #may exclude this card for initial build
  #if the code is set up properly, adding new cards should be as easy as adding their code to a new class
  #The ability of the card (and really any code that runs exclusively for the card) should be contained in the class

  def initialize
    @name = "Swindler"
    @card_id = 2
    @power = 1
  end

  def ability
    super
    #have to discard a card
    #steal a card
  end

end
