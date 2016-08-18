class AntiHero < Card

  def initialize
    @name = "Anti-Hero"
    @number = 2
    @power = 10
  end

  def ability
    super
    #puts "got in anti-hero sub-class!"
    #nothing special - just deals damage
  end

end
