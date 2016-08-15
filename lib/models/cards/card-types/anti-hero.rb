class AntiHero < Card

  def initialize
    @name = "Anti-Hero"
    @card_id = 2
    @power = 2
  end

  def ability
    super
    #nothing special - just deals damage
  end

end
