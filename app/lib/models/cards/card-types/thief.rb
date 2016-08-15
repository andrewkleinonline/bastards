class Thief < Card

  def initialize
    @name = "Swindler"
    @number = 1
    @power = 1
  end

  def ability
    super
    #steal a card at random, unless opponent also has a thief?
  end

end
