class Thief < Card

  def initialize
    @name = "Thief"
    @number = 1
    @power = 5
  end

  def ability
    super
    puts "got in the sub-class (thief)!"



    #steal a card at random, unless opponent also has a thief?
  end

end
