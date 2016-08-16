class Card

  attr_accessor :power, :name, :number


  @@library = {
    1 => Thief,
    2 => AntiHero
  }

  def ability
    #puts "Using #{self.name}'s ability..."
  end

  def self.library
    @@library
  end

  def play(trash)
    #puts "playing card #{self.name}"
    self.ability #activate card's ability
    self.trash(trash)
    #binding.pry
  end

  def trash(trash)
    trash.cards << self
  end
end
