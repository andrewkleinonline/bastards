class AntiHero < Card

  def initialize
    @name = "Anti-Hero"
    @number = 2
    @power = 2
  end

  def ability
    super
    #nothing special - just deals damage
  end

end
