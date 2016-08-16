class Info

  def self.display_healths(player1,player2)
    puts "Health Remaining:"
    puts "#{player1.name}: #{player1.health}"
    puts "#{player2.name}: #{player2.health}"
  end

  def self.display_hand(player)
    puts "Your hand:"
    player.hand.cards.each_with_index do |card, index|
      puts "#{index+1}. #{card.name}"
    end
    puts "Select a card"
  end

  def self.get_user_input
    puts "\nType now:"
    user_input = gets.strip
    puts ""
    user_input
  end

  def self.display_damage(power, attacker, target)
    puts "#{attacker.name} attacks #{target.name} for #{power} damage!"
    output = "#{target.health+power} -> #{target.health}"
    sleep(0.5)
    output.split(" ").each do |character|
      print character
      sleep(1)
    end
    puts ""
  end

  def self.display_drawn_card(player)
    puts "You drew one #{player.cards.last.name}"
  end

end
