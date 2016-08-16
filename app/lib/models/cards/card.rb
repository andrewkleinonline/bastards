class Card

  attr_accessor :power, :name, :number


  @@library = {
    1 => Thief,
    2 => AntiHero
  }

  def ability
    puts "Using #{self.name}'s ability..."
  end

  def self.library
    @@library
  end

end
