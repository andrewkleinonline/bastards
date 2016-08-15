class Player

  attr_accessor :health, :hand, :name, :is_human?

  def initialize(name:)
    @name = name
    @health = 20
  end

end
